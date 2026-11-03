-- =====================================================================
-- Wheels Alpes - Entrega 2
-- consultas_rfa.sql : tableros de control RFA1 (conductor) y RFA2 (pasajero)
--
-- Correr cada consulta por separado en SQL Workshop > SQL Commands.
-- Todas las metricas salen de viajes COMPLETADO.
-- Por defecto toman al primer conductor / pasajero que tiene viajes
-- completados; en la aplicacion ese id se reemplaza por el usuario en
-- sesion (por ejemplo :APP_USER_ID).
-- =====================================================================


-- ---------------------------------------------------------------------
-- RFA1 - Tablero del conductor
-- Pasajeros transportados, ingresos, tiempo y distancia de sus viajes.
-- Los pasajeros se cuentan con una subconsulta por viaje para no repetir
-- la distancia ni el tiempo de un viaje por cada pasajero.
-- Si el conductor no tiene viajes completados devuelve una fila de ceros.
-- ---------------------------------------------------------------------
SELECT COUNT(*)                                  AS viajes_completados,
       NVL(SUM(t.pasajeros), 0)                  AS pasajeros_transportados,
       NVL(SUM(t.pasajeros * t.tarifa), 0)       AS ingresos,
       ROUND(NVL(SUM(t.minutos), 0))             AS tiempo_total_min,
       NVL(SUM(t.distancia_km), 0)               AS distancia_total_km
  FROM (SELECT v.tarifa,
               v.distancia_km,
               (CAST(v.hora_llegada_real AS DATE) - CAST(v.hora_salida_real AS DATE)) * 1440 AS minutos,
               (SELECT COUNT(*)
                  FROM solicitud s
                 WHERE s.id_viaje = v.id_viaje
                   AND s.estado   = 'ACEPTADA') AS pasajeros
          FROM viaje v
          JOIN vehiculo ve ON ve.placa = v.placa
         WHERE v.estado = 'COMPLETADO'
           AND ve.id_conductor = (SELECT MIN(id_estudiante) FROM conductor)) t;

-- Verificacion RFA1: pasajeros e ingresos deben ser iguales a los de arriba
SELECT COUNT(*)       AS pasajeros_transportados,
       SUM(v.tarifa)  AS ingresos
  FROM solicitud s
  JOIN viaje     v  ON v.id_viaje = s.id_viaje
  JOIN vehiculo  ve ON ve.placa   = v.placa
 WHERE s.estado = 'ACEPTADA'
   AND v.estado = 'COMPLETADO'
   AND ve.id_conductor = (SELECT MIN(id_estudiante) FROM conductor);

-- Verificacion RFA1: viajes y distancia deben ser iguales a los de arriba
SELECT COUNT(*) AS viajes_completados, SUM(v.distancia_km) AS distancia_total_km
  FROM viaje v
  JOIN vehiculo ve ON ve.placa = v.placa
 WHERE v.estado = 'COMPLETADO'
   AND ve.id_conductor = (SELECT MIN(id_estudiante) FROM conductor);


-- ---------------------------------------------------------------------
-- RFA2 - Tablero del pasajero (resumen)
-- Viajes tomados, gasto total y promedios de distancia y tiempo por viaje.
-- Un viaje "tomado" es una solicitud ACEPTADA de un viaje COMPLETADO.
-- Sin viajes devuelve ceros.
-- ---------------------------------------------------------------------
SELECT COUNT(*)                                       AS viajes_tomados,
       NVL(SUM(v.tarifa), 0)                          AS gasto_total,
       ROUND(NVL(AVG(v.distancia_km), 0), 2)          AS distancia_promedio_km,
       ROUND(NVL(AVG((CAST(v.hora_llegada_real AS DATE)
                    - CAST(v.hora_salida_real  AS DATE)) * 1440), 0), 1) AS tiempo_promedio_min
  FROM solicitud s
  JOIN viaje v ON v.id_viaje = s.id_viaje
 WHERE s.estado = 'ACEPTADA'
   AND v.estado = 'COMPLETADO'
   AND s.id_pasajero = (SELECT MIN(s2.id_pasajero)
                          FROM solicitud s2
                          JOIN viaje v2 ON v2.id_viaje = s2.id_viaje
                         WHERE s2.estado = 'ACEPTADA' AND v2.estado = 'COMPLETADO');

-- ---------------------------------------------------------------------
-- RFA2 - Zona donde mas ha pedido viajes
-- La primera fila es la zona mas frecuente. Si hay empate se desempata
-- por orden alfabetico del nombre de la localidad.
-- ---------------------------------------------------------------------
SELECT l.nombre AS zona,
       COUNT(*) AS viajes
  FROM solicitud s
  JOIN viaje     v ON v.id_viaje     = s.id_viaje
  JOIN punto     p ON p.id_punto     = s.id_punto
  JOIN localidad l ON l.id_localidad = p.id_localidad
 WHERE s.estado = 'ACEPTADA'
   AND v.estado = 'COMPLETADO'
   AND s.id_pasajero = (SELECT MIN(s2.id_pasajero)
                          FROM solicitud s2
                          JOIN viaje v2 ON v2.id_viaje = s2.id_viaje
                         WHERE s2.estado = 'ACEPTADA' AND v2.estado = 'COMPLETADO')
 GROUP BY l.id_localidad, l.nombre
 ORDER BY viajes DESC, l.nombre;

-- Verificacion RFA2: la suma de "viajes" de la consulta de zonas debe ser
-- igual a "viajes_tomados" del resumen.
