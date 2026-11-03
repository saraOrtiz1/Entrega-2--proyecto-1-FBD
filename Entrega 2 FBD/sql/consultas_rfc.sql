-- =====================================================================
-- Wheels Alpes - Entrega 2
-- consultas_rfc.sql : requerimientos funcionales de consulta RFC1 a RFC3
--
-- Para ver las filas, correr cada consulta por separado en
-- SQL Workshop > SQL Commands (SQL Scripts solo muestra el estado).
--
-- Criterios:
--   * La localidad de una solicitud es la de su punto de recogida.
--   * La localidad de un viaje es la de su punto de origen.
--   * Las fechas de ejemplo (1-sep-2026 a 31-oct-2026) son los valores
--     que en la aplicacion se reemplazan por items de pagina, por ejemplo
--     :P_FECHA_INICIO y :P_FECHA_FIN.
-- =====================================================================


-- ---------------------------------------------------------------------
-- RFC1 - Demanda por localidad en un periodo
-- Cantidad de solicitudes de cupo (en cualquier estado) por localidad
-- del punto de recogida, segun la fecha en que se hizo la solicitud.
-- ---------------------------------------------------------------------
SELECT l.id_localidad,
       l.nombre  AS localidad,
       l.ciudad,
       COUNT(*)  AS solicitudes
  FROM solicitud s
  JOIN punto     p ON p.id_punto     = s.id_punto
  JOIN localidad l ON l.id_localidad = p.id_localidad
 WHERE s.fecha_solicitud >= DATE '2026-09-01'
   AND s.fecha_solicitud <  DATE '2026-10-31' + 1
 GROUP BY l.id_localidad, l.nombre, l.ciudad
 ORDER BY solicitudes DESC, l.nombre;

-- Rango sin solicitudes: debe devolver 0 filas, sin error
-- (cambiar las fechas de la consulta anterior por 2025-01-01 y 2025-01-31)


-- ---------------------------------------------------------------------
-- RFC2 - Ingresos estimados por localidad y periodo
-- Suma de las tarifas de las solicitudes ACEPTADA de viajes COMPLETADO,
-- agrupadas por la localidad del punto de recogida. El periodo se filtra
-- por la fecha de salida del viaje.
-- Para incluir tambien los ingresos esperados de viajes futuros, cambiar
-- la condicion del estado del viaje por IN ('COMPLETADO','PROGRAMADO').
-- ---------------------------------------------------------------------
SELECT l.id_localidad,
       l.nombre       AS localidad,
       l.ciudad,
       COUNT(*)       AS cupos_vendidos,
       SUM(v.tarifa)  AS ingresos_estimados
  FROM solicitud s
  JOIN viaje     v ON v.id_viaje     = s.id_viaje
  JOIN punto     p ON p.id_punto     = s.id_punto
  JOIN localidad l ON l.id_localidad = p.id_localidad
 WHERE s.estado = 'ACEPTADA'
   AND v.estado = 'COMPLETADO'
   AND v.fecha_hora_salida >= DATE '2026-09-01'
   AND v.fecha_hora_salida <  DATE '2026-10-31' + 1
 GROUP BY l.id_localidad, l.nombre, l.ciudad
 ORDER BY ingresos_estimados DESC, l.nombre;


-- ---------------------------------------------------------------------
-- RFC3 - Viajes por conductor a traves del tiempo
-- Viajes realizados (COMPLETADO) por conductor y por semana, con la
-- distancia recorrida. TRUNC(fecha, 'IW') devuelve el lunes de la semana.
-- Filtros opcionales: conductor y localidad de origen (quitar el -- para
-- activarlos). En la aplicacion quedan como:
--   AND (:P_CONDUCTOR IS NULL OR c.id_estudiante = :P_CONDUCTOR)
--   AND (:P_LOCALIDAD IS NULL OR l.id_localidad  = :P_LOCALIDAD)
-- ---------------------------------------------------------------------
SELECT c.id_estudiante                         AS id_conductor,
       e.nombre || ' ' || e.apellidos          AS conductor,
       TRUNC(v.fecha_hora_salida, 'IW')        AS semana,
       COUNT(*)                                AS viajes_realizados,
       SUM(v.distancia_km)                     AS distancia_total_km
  FROM viaje     v
  JOIN vehiculo   ve ON ve.placa         = v.placa
  JOIN conductor  c  ON c.id_estudiante  = ve.id_conductor
  JOIN estudiante e  ON e.id_estudiante  = c.id_estudiante
  JOIN punto      p  ON p.id_punto       = v.id_punto_origen
  JOIN localidad  l  ON l.id_localidad   = p.id_localidad
 WHERE v.estado = 'COMPLETADO'
   AND v.fecha_hora_salida >= DATE '2026-09-01'
   AND v.fecha_hora_salida <  DATE '2026-10-31' + 1
   -- AND c.id_estudiante = 1
   -- AND l.id_localidad  = 1
 GROUP BY c.id_estudiante, e.nombre, e.apellidos, TRUNC(v.fecha_hora_salida, 'IW')
 ORDER BY conductor, semana;


-- =====================================================================
-- Verificacion cruzada (los totales deben cuadrar con las consultas)
-- =====================================================================

-- RFC1: este total debe ser igual a la suma de la columna "solicitudes"
SELECT COUNT(*) AS total_solicitudes
  FROM solicitud
 WHERE fecha_solicitud >= DATE '2026-09-01'
   AND fecha_solicitud <  DATE '2026-10-31' + 1;

-- RFC2: este total debe ser igual a la suma de "ingresos_estimados"
SELECT SUM(v.tarifa) AS total_ingresos
  FROM solicitud s
  JOIN viaje v ON v.id_viaje = s.id_viaje
 WHERE s.estado = 'ACEPTADA'
   AND v.estado = 'COMPLETADO'
   AND v.fecha_hora_salida >= DATE '2026-09-01'
   AND v.fecha_hora_salida <  DATE '2026-10-31' + 1;

-- RFC3: este total debe ser igual a la suma de "viajes_realizados"
SELECT COUNT(*) AS total_viajes_completados
  FROM viaje
 WHERE estado = 'COMPLETADO'
   AND fecha_hora_salida >= DATE '2026-09-01'
   AND fecha_hora_salida <  DATE '2026-10-31' + 1;
