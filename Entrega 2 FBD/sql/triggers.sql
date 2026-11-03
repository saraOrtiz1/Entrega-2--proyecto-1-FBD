-- =====================================================================
-- Wheels Alpes - Entrega 2
-- triggers.sql : reglas de negocio RN1 a RN8
-- Ejecutar DESPUES de crear_tablas.sql (SQL Workshop > SQL Scripts).
--
-- Nombres: trg_<tabla>_<momento>_<regla>
-- Errores: ORA-20001 a ORA-20007 (un codigo por regla)
--
-- Nota: para poblar las tablas con datos historicos (viajes pasados,
-- completados, cancelados) hay que deshabilitar estos triggers y volverlos
-- a habilitar al terminar (ver poblar_tablas.sql).
-- =====================================================================

-- ---------------------------------------------------------------------
-- RN1: los cupos del viaje no pueden superar los cupos del vehiculo
-- ---------------------------------------------------------------------
CREATE OR REPLACE TRIGGER trg_viaje_bi_bu_cupos
BEFORE INSERT OR UPDATE OF cupos_ofrecidos, placa ON viaje
FOR EACH ROW
DECLARE
    v_cupos_vehiculo vehiculo.cupos%TYPE;
BEGIN
    SELECT cupos INTO v_cupos_vehiculo
    FROM vehiculo
    WHERE placa = :NEW.placa;

    IF :NEW.cupos_ofrecidos > v_cupos_vehiculo THEN
        RAISE_APPLICATION_ERROR(-20001,
            'RN1: el viaje no puede ofrecer mas cupos (' || :NEW.cupos_ofrecidos ||
            ') que los del vehiculo (' || v_cupos_vehiculo || ').');
    END IF;
END;
/

-- ---------------------------------------------------------------------
-- RN4 y RN5: transiciones validas del estado del viaje y cancelacion
--            con al menos 2 horas de anticipacion
-- ---------------------------------------------------------------------
CREATE OR REPLACE TRIGGER trg_viaje_bu_estado
BEFORE UPDATE OF estado ON viaje
FOR EACH ROW
WHEN (NEW.estado <> OLD.estado)
BEGIN
    -- RN5: COMPLETADO y CANCELADO son estados finales
    IF :OLD.estado IN ('COMPLETADO', 'CANCELADO') THEN
        RAISE_APPLICATION_ERROR(-20005,
            'RN5: un viaje ' || :OLD.estado || ' no admite cambios de estado.');
    END IF;

    -- RN5: secuencia PROGRAMADO -> EN_CURSO -> COMPLETADO (cancelar desde los dos primeros)
    IF NOT ( (:OLD.estado = 'PROGRAMADO' AND :NEW.estado IN ('EN_CURSO', 'CANCELADO'))
          OR (:OLD.estado = 'EN_CURSO'   AND :NEW.estado IN ('COMPLETADO', 'CANCELADO')) ) THEN
        RAISE_APPLICATION_ERROR(-20005,
            'RN5: transicion invalida de ' || :OLD.estado || ' a ' || :NEW.estado || '.');
    END IF;

    -- RN4: cancelar con al menos 2 horas de anticipacion
    IF :NEW.estado = 'CANCELADO'
       AND :OLD.fecha_hora_salida < LOCALTIMESTAMP + INTERVAL '2' HOUR THEN
        RAISE_APPLICATION_ERROR(-20004,
            'RN4: el viaje solo se puede cancelar con al menos 2 horas de anticipacion.');
    END IF;
END;
/

-- ---------------------------------------------------------------------
-- RN6: al cancelar un viaje, sus solicitudes quedan canceladas.
--      Trigger compuesto: la actualizacion de SOLICITUD se hace en
--      AFTER STATEMENT para evitar el error de tabla mutante (ORA-04091),
--      porque los triggers de SOLICITUD consultan VIAJE.
-- ---------------------------------------------------------------------
CREATE OR REPLACE TRIGGER trg_viaje_cu_cancelar
FOR UPDATE OF estado ON viaje
COMPOUND TRIGGER
    TYPE t_ids IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    g_ids t_ids;

    AFTER EACH ROW IS
    BEGIN
        IF :NEW.estado = 'CANCELADO' AND :OLD.estado <> 'CANCELADO' THEN
            g_ids(g_ids.COUNT + 1) := :NEW.id_viaje;
        END IF;
    END AFTER EACH ROW;

    AFTER STATEMENT IS
    BEGIN
        FOR i IN 1 .. g_ids.COUNT LOOP
            UPDATE solicitud
               SET estado = 'CANCELADA'
             WHERE id_viaje = g_ids(i)
               AND estado IN ('PENDIENTE', 'ACEPTADA');
        END LOOP;
    END AFTER STATEMENT;
END trg_viaje_cu_cancelar;
/

-- ---------------------------------------------------------------------
-- RN3 y RN7: al crear una solicitud, el viaje debe estar PROGRAMADO
--            y el conductor no puede pedir cupo en su propio viaje
-- ---------------------------------------------------------------------
CREATE OR REPLACE TRIGGER trg_solicitud_bi_reglas
BEFORE INSERT ON solicitud
FOR EACH ROW
DECLARE
    v_estado      viaje.estado%TYPE;
    v_id_conductor vehiculo.id_conductor%TYPE;
BEGIN
    SELECT j.estado, v.id_conductor
      INTO v_estado, v_id_conductor
      FROM viaje j
      JOIN vehiculo v ON v.placa = j.placa
     WHERE j.id_viaje = :NEW.id_viaje;

    IF v_estado <> 'PROGRAMADO' THEN
        RAISE_APPLICATION_ERROR(-20003,
            'RN3: solo se puede pedir cupo en viajes PROGRAMADO (estado actual: ' || v_estado || ').');
    END IF;

    IF v_id_conductor = :NEW.id_pasajero THEN
        RAISE_APPLICATION_ERROR(-20007,
            'RN7: el conductor no puede pedir cupo en su propio viaje.');
    END IF;
END;
/

-- ---------------------------------------------------------------------
-- RN4 (solicitud): cancelar una solicitud con al menos 2 horas de anticipacion
-- ---------------------------------------------------------------------
CREATE OR REPLACE TRIGGER trg_solicitud_bu_cancelar
BEFORE UPDATE OF estado ON solicitud
FOR EACH ROW
WHEN (NEW.estado = 'CANCELADA' AND OLD.estado <> 'CANCELADA')
DECLARE
    v_salida viaje.fecha_hora_salida%TYPE;
BEGIN
    SELECT fecha_hora_salida INTO v_salida
      FROM viaje
     WHERE id_viaje = :NEW.id_viaje;

    IF v_salida < LOCALTIMESTAMP + INTERVAL '2' HOUR THEN
        RAISE_APPLICATION_ERROR(-20004,
            'RN4: la solicitud solo se puede cancelar con al menos 2 horas de anticipacion.');
    END IF;
END;
/

-- ---------------------------------------------------------------------
-- RN2: no se pueden aceptar mas solicitudes que cupos ofrecidos.
--      Trigger compuesto: el conteo se hace en AFTER STATEMENT para no
--      leer SOLICITUD mientras se modifica.
-- ---------------------------------------------------------------------
CREATE OR REPLACE TRIGGER trg_solicitud_cu_cupos
FOR INSERT OR UPDATE OF estado ON solicitud
COMPOUND TRIGGER
    TYPE t_ids IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    g_ids t_ids;

    AFTER EACH ROW IS
    BEGIN
        IF :NEW.estado = 'ACEPTADA' THEN
            g_ids(g_ids.COUNT + 1) := :NEW.id_viaje;
        END IF;
    END AFTER EACH ROW;

    AFTER STATEMENT IS
        v_aceptadas NUMBER;
        v_cupos     NUMBER;
    BEGIN
        FOR i IN 1 .. g_ids.COUNT LOOP
            SELECT COUNT(*) INTO v_aceptadas
              FROM solicitud
             WHERE id_viaje = g_ids(i) AND estado = 'ACEPTADA';

            SELECT cupos_ofrecidos INTO v_cupos
              FROM viaje
             WHERE id_viaje = g_ids(i);

            IF v_aceptadas > v_cupos THEN
                RAISE_APPLICATION_ERROR(-20002,
                    'RN2: no hay cupos disponibles; el viaje ofrece ' || v_cupos ||
                    ' y ya tendria ' || v_aceptadas || ' solicitudes aceptadas.');
            END IF;
        END LOOP;
    END AFTER STATEMENT;
END trg_solicitud_cu_cupos;
/

-- ---------------------------------------------------------------------
-- RN8: al aceptar una solicitud, el punto de recogida se vuelve parada del viaje
--      (si el punto ya era parada del viaje no se duplica)
-- ---------------------------------------------------------------------
CREATE OR REPLACE TRIGGER trg_solicitud_au_parada
AFTER UPDATE OF estado ON solicitud
FOR EACH ROW
WHEN (NEW.estado = 'ACEPTADA' AND OLD.estado <> 'ACEPTADA')
DECLARE
    v_existe NUMBER;
    v_orden  NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_existe
      FROM parada_viaje
     WHERE id_viaje = :NEW.id_viaje AND id_punto = :NEW.id_punto;

    IF v_existe = 0 THEN
        SELECT NVL(MAX(orden), 0) + 1 INTO v_orden
          FROM parada_viaje
         WHERE id_viaje = :NEW.id_viaje;

        INSERT INTO parada_viaje (id_viaje, id_punto, orden, origen_parada)
        VALUES (:NEW.id_viaje, :NEW.id_punto, v_orden, 'SOLICITUD');
    END IF;
END;
/

-- RN9 la impide la PK compuesta de SOLICITUD.
-- RN10 (conductor con al menos un vehiculo) y estudiante con al menos un
-- programa se validan en la aplicacion, en la misma transaccion de registro.
-- RN11 la impiden uk_estudiante_documento y uk_estudiante_correo.
