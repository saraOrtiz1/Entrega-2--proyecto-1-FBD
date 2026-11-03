-- =====================================================================
-- Wheels Alpes - Entrega 2
-- poblar_tablas.sql : datos de prueba (un solo archivo)
--
-- Orden de ejecucion: crear_tablas.sql -> triggers.sql -> poblar_tablas.sql
-- Se puede volver a correr: borra los datos y los carga de nuevo.
--
-- Resultado esperado:
--   170 estudiantes: 20 conductores, 153 pasajeros (3 conductores tambien son pasajeros)
--   24 vehiculos, 120 viajes (6 por conductor), 483 solicitudes
--   Cada conductor tiene exactamente 15 pasajeros distintos con solicitud ACEPTADA
--   (24 pasajeros distintos si se cuentan todas las solicitudes).
--
-- Los datos son deterministicos (sin DBMS_RANDOM): al repetir el script
-- se obtiene siempre lo mismo.
-- =====================================================================

-- Los triggers validan reglas del presente (viaje PROGRAMADO, 2 horas de
-- anticipacion, etc.); se apagan para cargar datos historicos y se
-- vuelven a encender al final. Si el script falla a mitad de camino,
-- correr los dos ENABLE del final para dejarlos activos.
ALTER TABLE viaje DISABLE ALL TRIGGERS;
ALTER TABLE solicitud DISABLE ALL TRIGGERS;

DELETE FROM solicitud;
DELETE FROM parada_viaje;
DELETE FROM viaje;
DELETE FROM vehiculo;
DELETE FROM pasajero;
DELETE FROM conductor;
DELETE FROM estudiante_programa;
DELETE FROM estudiante;
DELETE FROM punto;
DELETE FROM programa;
DELETE FROM localidad;
DELETE FROM universidad;

DECLARE
    TYPE t_num IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    TYPE t_str IS TABLE OF VARCHAR2(80);

    -- ids generados por Oracle (se guardan con RETURNING INTO)
    uni t_num; prog t_num; loc t_num; pto t_num; est t_num; v_trip t_num;
    v_placa t_str := t_str();

    -- catalogos
    v_unis  t_str := t_str('Universidad de los Andes','Universidad Nacional','Pontificia Universidad Javeriana',
                           'Universidad del Rosario','Universidad Externado','Universidad EAN');
    v_doms  t_str := t_str('uniandes.edu.co','unal.edu.co','javeriana.edu.co',
                           'urosario.edu.co','uexternado.edu.co','ean.edu.co');
    v_progs t_str := t_str('Ingenieria de Sistemas','Ingenieria Industrial','Economia','Derecho');
    v_locs  t_str := t_str('Chapinero','Usaquen','Suba','Teusaquillo','Kennedy',
                           'Fontibon','Engativa','Santa Fe','Candelaria','Barrios Unidos');
    v_nombres t_str := t_str('Laura','Camilo','Valentina','Andres','Sofia','Daniel','Isabella','Mateo',
                             'Camila','Santiago','Mariana','Sebastian','Juliana','Nicolas','Paula',
                             'Felipe','Daniela','David','Natalia','Julian');
    v_apell t_str := t_str('Garcia','Rodriguez','Martinez','Lopez','Gonzalez','Perez','Sanchez','Ramirez',
                           'Torres','Flores','Diaz','Vargas','Castro','Romero','Ortiz','Moreno',
                           'Herrera','Medina','Rojas','Silva');
    v_marcas  t_str := t_str('Renault','Chevrolet','Mazda','Kia','Toyota','Hyundai','Nissan','Suzuki','Volkswagen','Ford');
    v_modelos t_str := t_str('Sandero','Spark','2','Picanto','Yaris','i10','March','Swift','Gol','Fiesta');
    v_colores t_str := t_str('Blanco','Negro','Gris','Rojo','Azul','Plata');
    v_rutas   t_str := t_str('Norte - Autopista Norte - Calle 100 - Universidad',
                             'Occidente - Calle 80 - Avenida Boyaca - Universidad',
                             'Sur - Avenida Caracas - Calle 26 - Universidad',
                             'Centro - Carrera 7 - Calle 45 - Universidad',
                             'Noroccidente - Avenida Suba - Calle 127 - Universidad',
                             'Suroccidente - Avenida Boyaca - Calle 13 - Universidad');

    v_id NUMBER; v_pidx NUMBER; v_ap1 VARCHAR2(40);
    v_viaje NUMBER; v_orden NUMBER; v_n NUMBER; v_pas NUMBER; v_pp NUMBER;
    v_estado VARCHAR2(15); v_est_sol VARCHAR2(10);
    v_base TIMESTAMP; v_dias NUMBER; v_salida TIMESTAMP;
    v_dist NUMBER; v_hsr TIMESTAMP; v_hlr TIMESTAMP;
    v_fs TIMESTAMP; v_fr TIMESTAMP; k NUMBER;
BEGIN
    -- ---- Universidades, programas, localidades, puntos ----
    FOR i IN 1 .. v_unis.COUNT LOOP
        INSERT INTO universidad (nombre) VALUES (v_unis(i)) RETURNING id_universidad INTO uni(i);
    END LOOP;

    FOR i IN 1 .. v_unis.COUNT LOOP
        FOR j IN 1 .. v_progs.COUNT LOOP
            INSERT INTO programa (id_universidad, nombre) VALUES (uni(i), v_progs(j))
            RETURNING id_programa INTO prog((i - 1) * 4 + j);
        END LOOP;
    END LOOP;

    FOR i IN 1 .. v_locs.COUNT LOOP
        INSERT INTO localidad (nombre, ciudad) VALUES (v_locs(i), 'Bogota')
        RETURNING id_localidad INTO loc(i);
    END LOOP;

    FOR l IN 1 .. 10 LOOP
        FOR s IN 1 .. 3 LOOP
            INSERT INTO punto (id_localidad, direccion, referencia)
            VALUES (loc(l),
                    'Calle ' || (20 * l + 3 * s) || ' # ' || (5 * s + l) || '-' || (10 + l * s),
                    CASE s WHEN 1 THEN 'Frente al parque' WHEN 2 THEN 'Cerca de la estacion de transporte' ELSE NULL END)
            RETURNING id_punto INTO pto((l - 1) * 3 + s);
        END LOOP;
    END LOOP;

    -- ---- Estudiantes (1-20 conductores, 21-170 pasajeros) ----
    FOR i IN 1 .. 170 LOOP
        v_pidx := MOD(i - 1, 24) + 1;
        v_ap1  := v_apell(MOD(i * 7 + 3 + TRUNC(i / 20) * 3, 20) + 1);
        INSERT INTO estudiante (documento, nombre, apellidos, correo_institucional, celular)
        VALUES (TO_CHAR(1000000000 + i * 3),
                v_nombres(MOD(i, 20) + 1),
                v_ap1 || ' ' || v_apell(MOD(i * 3 + 5, 20) + 1),
                LOWER(v_nombres(MOD(i, 20) + 1)) || '.' || LOWER(v_ap1) || i || '@' || v_doms(CEIL(v_pidx / 4)),
                '3' || LPAD(TO_CHAR(MOD(i * 7919311, 1000000000)), 9, '0'))
        RETURNING id_estudiante INTO est(i);

        INSERT INTO estudiante_programa (id_estudiante, id_programa) VALUES (est(i), prog(v_pidx));
        IF MOD(i, 10) = 0 THEN   -- algunos estudiantes cursan dos programas
            INSERT INTO estudiante_programa (id_estudiante, id_programa)
            VALUES (est(i), prog(MOD(i + 5, 24) + 1));
        END IF;
    END LOOP;

    -- ---- Conductores y pasajeros ----
    FOR i IN 1 .. 20 LOOP
        INSERT INTO conductor (id_estudiante, fecha_habilitacion) VALUES (est(i), DATE '2026-01-15' + i);
    END LOOP;
    FOR i IN 21 .. 170 LOOP
        INSERT INTO pasajero (id_estudiante, fecha_registro) VALUES (est(i), DATE '2026-02-01' + MOD(i, 60));
    END LOOP;
    FOR i IN 1 .. 3 LOOP   -- conductores que tambien son pasajeros (herencia con traslape)
        INSERT INTO pasajero (id_estudiante, fecha_registro) VALUES (est(i), DATE '2026-03-01' + i);
    END LOOP;

    -- ---- Vehiculos: uno por conductor, mas un segundo para los conductores 1 a 4 ----
    FOR i IN 1 .. 24 LOOP
        v_id := CASE WHEN i <= 20 THEN i ELSE i - 20 END;
        v_placa.EXTEND;
        v_placa(i) := CHR(65 + MOD(i, 26)) || CHR(65 + MOD(i * 3, 26)) || CHR(65 + MOD(i * 5 + 1, 26))
                      || LPAD(TO_CHAR(i * 11), 3, '0');
        INSERT INTO vehiculo (placa, id_conductor, marca, modelo, anio, color, cupos)
        VALUES (v_placa(i), est(v_id), v_marcas(MOD(i, 10) + 1), v_modelos(MOD(i, 10) + 1),
                2012 + MOD(i, 12), v_colores(MOD(i, 6) + 1), 4 + MOD(i, 3));
    END LOOP;

    -- ---- Viajes, paradas y solicitudes: 6 viajes por conductor ----
    -- t = 1..3 COMPLETADO | t = 4 CANCELADO | t = 5..6 PROGRAMADO
    FOR c IN 1 .. 20 LOOP
        FOR t IN 1 .. 6 LOOP
            IF t <= 3 THEN
                v_estado := 'COMPLETADO'; v_base := TIMESTAMP '2026-09-01 00:00:00'; v_dias := (c - 1) + (t - 1) * 7;
            ELSIF t = 4 THEN
                v_estado := 'CANCELADO';  v_base := TIMESTAMP '2026-10-05 00:00:00'; v_dias := MOD(c, 10);
            ELSIF t = 5 THEN
                v_estado := 'PROGRAMADO'; v_base := TIMESTAMP '2026-11-03 00:00:00'; v_dias := MOD(c, 10);
            ELSE
                v_estado := 'PROGRAMADO'; v_base := TIMESTAMP '2026-11-10 00:00:00'; v_dias := MOD(c, 10);
            END IF;

            v_salida := v_base + NUMTODSINTERVAL(v_dias, 'DAY') + NUMTODSINTERVAL(390 + 60 * MOD(c, 4), 'MINUTE');
            v_dist := NULL; v_hsr := NULL; v_hlr := NULL;
            IF v_estado = 'COMPLETADO' THEN
                v_dist := 8 + MOD(c * 3 + t * 5, 20) + 0.5 * MOD(c, 2);
                v_hsr  := v_salida + NUMTODSINTERVAL(MOD(c, 5), 'MINUTE');
                v_hlr  := v_hsr + NUMTODSINTERVAL(25 + MOD(c * 7 + t * 3, 40), 'MINUTE');
            END IF;

            INSERT INTO viaje (placa, id_punto_origen, fecha_hora_salida, ruta_general, tarifa,
                               cupos_ofrecidos, estado, distancia_km, hora_salida_real, hora_llegada_real)
            VALUES (v_placa(c), pto(MOD(c * 3 + t, 30) + 1), v_salida, v_rutas(MOD(c + t, 6) + 1),
                    4000 + 500 * MOD(c + t, 6), 3 + MOD(c, 2), v_estado, v_dist, v_hsr, v_hlr)
            RETURNING id_viaje INTO v_viaje;
            v_trip(c * 10 + t) := v_viaje;

            -- paradas iniciales (RF3: todo viaje tiene al menos una)
            INSERT INTO parada_viaje (id_viaje, id_punto, orden, origen_parada)
            VALUES (v_viaje, pto(MOD(c * 5 + t * 3, 30) + 1), 1, 'INICIAL');
            INSERT INTO parada_viaje (id_viaje, id_punto, orden, origen_parada)
            VALUES (v_viaje, pto(MOD(c * 5 + t * 3 + 7, 30) + 1), 2, 'INICIAL');
            v_orden := 2;

            -- 4 solicitudes por viaje; cada pasajero aparece una sola vez por conductor
            FOR j IN 0 .. 3 LOOP
                k     := (t - 1) * 4 + j;
                v_pas := est(20 + MOD((c - 1) * 8 + k, 150) + 1);
                v_pp  := pto(MOD(c * 11 + k * 3 + t, 30) + 1);

                IF t <= 3 THEN
                    v_est_sol := CASE WHEN j <= 2 THEN 'ACEPTADA' ELSE 'RECHAZADA' END;
                ELSIF t = 4 THEN
                    v_est_sol := 'CANCELADA';
                ELSE
                    v_est_sol := CASE WHEN j <= 2 THEN 'ACEPTADA' ELSE 'PENDIENTE' END;
                END IF;

                v_fs := v_salida - NUMTODSINTERVAL(24 * (1 + MOD(k, 3)) + MOD(k, 5), 'HOUR');
                v_fr := CASE WHEN v_est_sol IN ('ACEPTADA', 'RECHAZADA')
                             THEN v_fs + NUMTODSINTERVAL(30 + MOD(k * 7, 90), 'MINUTE') END;

                INSERT INTO solicitud (id_viaje, id_pasajero, id_punto, fecha_solicitud, estado, fecha_respuesta)
                VALUES (v_viaje, v_pas, v_pp, v_fs, v_est_sol, v_fr);

                -- una solicitud aceptada deja su punto de recogida como parada del viaje
                IF v_est_sol = 'ACEPTADA' THEN
                    SELECT COUNT(*) INTO v_n FROM parada_viaje WHERE id_viaje = v_viaje AND id_punto = v_pp;
                    IF v_n = 0 THEN
                        v_orden := v_orden + 1;
                        INSERT INTO parada_viaje (id_viaje, id_punto, orden, origen_parada)
                        VALUES (v_viaje, v_pp, v_orden, 'SOLICITUD');
                    END IF;
                END IF;
            END LOOP;
        END LOOP;
    END LOOP;

    -- ---- Conductores que viajan como pasajeros en viajes de otros conductores ----
    INSERT INTO solicitud (id_viaje, id_pasajero, id_punto, fecha_solicitud, estado)
    VALUES (v_trip(2 * 10 + 5), est(1), pto(5),  TIMESTAMP '2026-10-30 12:00:00', 'PENDIENTE');
    INSERT INTO solicitud (id_viaje, id_pasajero, id_punto, fecha_solicitud, estado)
    VALUES (v_trip(3 * 10 + 5), est(2), pto(12), TIMESTAMP '2026-10-30 12:00:00', 'PENDIENTE');
    INSERT INTO solicitud (id_viaje, id_pasajero, id_punto, fecha_solicitud, estado)
    VALUES (v_trip(1 * 10 + 6), est(3), pto(20), TIMESTAMP '2026-10-30 12:00:00', 'PENDIENTE');
END;
/

COMMIT;

ALTER TABLE viaje ENABLE ALL TRIGGERS;
ALTER TABLE solicitud ENABLE ALL TRIGGERS;

-- =====================================================================
-- Verificacion (correr y tomar captura)
-- =====================================================================

-- 1. Filas por tabla
SELECT 'universidad' AS tabla, COUNT(*) AS filas FROM universidad UNION ALL
SELECT 'programa', COUNT(*) FROM programa UNION ALL
SELECT 'localidad', COUNT(*) FROM localidad UNION ALL
SELECT 'punto', COUNT(*) FROM punto UNION ALL
SELECT 'estudiante', COUNT(*) FROM estudiante UNION ALL
SELECT 'estudiante_programa', COUNT(*) FROM estudiante_programa UNION ALL
SELECT 'conductor', COUNT(*) FROM conductor UNION ALL
SELECT 'pasajero', COUNT(*) FROM pasajero UNION ALL
SELECT 'vehiculo', COUNT(*) FROM vehiculo UNION ALL
SELECT 'viaje', COUNT(*) FROM viaje UNION ALL
SELECT 'parada_viaje', COUNT(*) FROM parada_viaje UNION ALL
SELECT 'solicitud', COUNT(*) FROM solicitud;

-- 2. Promedio de pasajeros distintos por conductor (solicitudes ACEPTADA): debe ser 15
SELECT ROUND(AVG(n), 2) AS promedio_pasajeros_por_conductor
  FROM (SELECT ve.id_conductor, COUNT(DISTINCT s.id_pasajero) AS n
          FROM solicitud s
          JOIN viaje v     ON v.id_viaje = s.id_viaje
          JOIN vehiculo ve ON ve.placa   = v.placa
         WHERE s.estado = 'ACEPTADA'
         GROUP BY ve.id_conductor);

-- 3. Viajes por estado
SELECT estado, COUNT(*) AS viajes FROM viaje GROUP BY estado ORDER BY estado;

-- 4. Solicitudes por estado
SELECT estado, COUNT(*) AS solicitudes FROM solicitud GROUP BY estado ORDER BY estado;

-- 5. Consistencia: ambas deben devolver 0 filas
SELECT j.id_viaje, j.cupos_ofrecidos, COUNT(*) AS aceptadas
  FROM viaje j JOIN solicitud s ON s.id_viaje = j.id_viaje AND s.estado = 'ACEPTADA'
 GROUP BY j.id_viaje, j.cupos_ofrecidos
HAVING COUNT(*) > j.cupos_ofrecidos;

SELECT j.id_viaje, j.cupos_ofrecidos, v.cupos AS cupos_vehiculo
  FROM viaje j JOIN vehiculo v ON v.placa = j.placa
 WHERE j.cupos_ofrecidos > v.cupos;

-- 6. Triggers otra vez activos (7 filas en ENABLED)
SELECT trigger_name, status FROM user_triggers ORDER BY trigger_name;
