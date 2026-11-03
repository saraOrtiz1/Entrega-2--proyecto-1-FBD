-- =====================================================================
-- Wheels Alpes - Entrega 2
-- crear_tablas.sql : esquema relacional corregido (12 tablas, BCNF)
-- Oracle 19c / APEX SQL Workshop
--
-- Estandar de nombres:
--   pk_<tabla>              llave primaria
--   fk_<tabla>_<referencia> llave foranea
--   uk_<tabla>_<atributo>   unicidad
--   ck_<tabla>_<atributo>   chequeo
--   ix_<tabla>_<atributo>   indice sobre FK
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. Tablas independientes
-- ---------------------------------------------------------------------

CREATE TABLE universidad (
    id_universidad  NUMBER GENERATED ALWAYS AS IDENTITY,
    nombre          VARCHAR2(150) NOT NULL,
    CONSTRAINT pk_universidad        PRIMARY KEY (id_universidad),
    CONSTRAINT uk_universidad_nombre UNIQUE (nombre)
);

CREATE TABLE localidad (
    id_localidad  NUMBER GENERATED ALWAYS AS IDENTITY,
    nombre        VARCHAR2(100) NOT NULL,
    ciudad        VARCHAR2(100) NOT NULL,
    CONSTRAINT pk_localidad        PRIMARY KEY (id_localidad),
    CONSTRAINT uk_localidad_nombre UNIQUE (nombre, ciudad)
);

-- ---------------------------------------------------------------------
-- 2. Tablas que dependen de las anteriores
-- ---------------------------------------------------------------------

CREATE TABLE programa (
    id_programa     NUMBER GENERATED ALWAYS AS IDENTITY,
    id_universidad  NUMBER NOT NULL,
    nombre          VARCHAR2(150) NOT NULL,
    CONSTRAINT pk_programa        PRIMARY KEY (id_programa),
    CONSTRAINT uk_programa_nombre UNIQUE (nombre, id_universidad),
    CONSTRAINT fk_programa_universidad FOREIGN KEY (id_universidad)
        REFERENCES universidad (id_universidad)
);

CREATE TABLE punto (
    id_punto      NUMBER GENERATED ALWAYS AS IDENTITY,
    id_localidad  NUMBER NOT NULL,
    direccion     VARCHAR2(200) NOT NULL,
    referencia    VARCHAR2(200),
    CONSTRAINT pk_punto PRIMARY KEY (id_punto),
    CONSTRAINT fk_punto_localidad FOREIGN KEY (id_localidad)
        REFERENCES localidad (id_localidad)
);

-- ---------------------------------------------------------------------
-- 3. Estudiante y sus subtipos (herencia total con traslape, alternativa 2)
--    id_estudiante es llave sustituta para que RF8 pueda modificar el
--    documento. documento y correo son llaves candidatas.
-- ---------------------------------------------------------------------

CREATE TABLE estudiante (
    id_estudiante        NUMBER GENERATED ALWAYS AS IDENTITY,
    documento            VARCHAR2(20)  NOT NULL,
    nombre               VARCHAR2(100) NOT NULL,
    apellidos            VARCHAR2(100) NOT NULL,
    correo_institucional VARCHAR2(150) NOT NULL,
    celular              VARCHAR2(20)  NOT NULL,
    CONSTRAINT pk_estudiante           PRIMARY KEY (id_estudiante),
    CONSTRAINT uk_estudiante_documento UNIQUE (documento),
    CONSTRAINT uk_estudiante_correo    UNIQUE (correo_institucional)
);

-- Un estudiante puede cursar varios programas (M:N)
CREATE TABLE estudiante_programa (
    id_estudiante  NUMBER NOT NULL,
    id_programa    NUMBER NOT NULL,
    CONSTRAINT pk_estudiante_programa PRIMARY KEY (id_estudiante, id_programa),
    CONSTRAINT fk_estprog_estudiante FOREIGN KEY (id_estudiante)
        REFERENCES estudiante (id_estudiante),
    CONSTRAINT fk_estprog_programa FOREIGN KEY (id_programa)
        REFERENCES programa (id_programa)
);

CREATE TABLE conductor (
    id_estudiante      NUMBER NOT NULL,
    fecha_habilitacion DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT pk_conductor PRIMARY KEY (id_estudiante),
    CONSTRAINT fk_conductor_estudiante FOREIGN KEY (id_estudiante)
        REFERENCES estudiante (id_estudiante)
);

CREATE TABLE pasajero (
    id_estudiante  NUMBER NOT NULL,
    fecha_registro DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT pk_pasajero PRIMARY KEY (id_estudiante),
    CONSTRAINT fk_pasajero_estudiante FOREIGN KEY (id_estudiante)
        REFERENCES estudiante (id_estudiante)
);

-- ---------------------------------------------------------------------
-- 4. Vehiculo y viaje
-- ---------------------------------------------------------------------

CREATE TABLE vehiculo (
    placa         VARCHAR2(10) NOT NULL,
    id_conductor  NUMBER NOT NULL,
    marca         VARCHAR2(50) NOT NULL,
    modelo        VARCHAR2(50) NOT NULL,
    anio          NUMBER(4)    NOT NULL,
    color         VARCHAR2(30) NOT NULL,
    cupos         NUMBER(2)    NOT NULL,
    CONSTRAINT pk_vehiculo PRIMARY KEY (placa),
    CONSTRAINT fk_vehiculo_conductor FOREIGN KEY (id_conductor)
        REFERENCES conductor (id_estudiante),
    CONSTRAINT ck_vehiculo_anio  CHECK (anio BETWEEN 1950 AND 2030),
    CONSTRAINT ck_vehiculo_cupos CHECK (cupos BETWEEN 1 AND 20)
);

CREATE TABLE viaje (
    id_viaje          NUMBER GENERATED ALWAYS AS IDENTITY,
    placa             VARCHAR2(10) NOT NULL,
    id_punto_origen   NUMBER NOT NULL,
    fecha_hora_salida TIMESTAMP NOT NULL,
    ruta_general      VARCHAR2(300) NOT NULL,
    tarifa            NUMBER(10,2) NOT NULL,
    cupos_ofrecidos   NUMBER(2)    NOT NULL,
    estado            VARCHAR2(15) DEFAULT 'PROGRAMADO' NOT NULL,
    distancia_km      NUMBER(6,2),
    hora_salida_real  TIMESTAMP,
    hora_llegada_real TIMESTAMP,
    CONSTRAINT pk_viaje PRIMARY KEY (id_viaje),
    CONSTRAINT fk_viaje_vehiculo FOREIGN KEY (placa)
        REFERENCES vehiculo (placa),
    CONSTRAINT fk_viaje_punto FOREIGN KEY (id_punto_origen)
        REFERENCES punto (id_punto),
    CONSTRAINT ck_viaje_tarifa   CHECK (tarifa >= 0),
    CONSTRAINT ck_viaje_cupos    CHECK (cupos_ofrecidos > 0),
    CONSTRAINT ck_viaje_estado   CHECK (estado IN
        ('PROGRAMADO','EN_CURSO','COMPLETADO','CANCELADO')),
    CONSTRAINT ck_viaje_distancia CHECK (distancia_km IS NULL OR distancia_km > 0),
    CONSTRAINT ck_viaje_horas    CHECK (hora_llegada_real IS NULL
        OR hora_salida_real IS NULL
        OR hora_llegada_real > hora_salida_real)
);

-- ---------------------------------------------------------------------
-- 5. Tablas intermedias (M:N)
-- ---------------------------------------------------------------------

CREATE TABLE parada_viaje (
    id_viaje        NUMBER NOT NULL,
    id_punto        NUMBER NOT NULL,
    orden           NUMBER(3) NOT NULL,
    origen_parada   VARCHAR2(10) NOT NULL,
    CONSTRAINT pk_parada_viaje PRIMARY KEY (id_viaje, id_punto),
    CONSTRAINT uk_parada_viaje_orden UNIQUE (id_viaje, orden),
    CONSTRAINT fk_parada_viaje FOREIGN KEY (id_viaje)
        REFERENCES viaje (id_viaje),
    CONSTRAINT fk_parada_punto FOREIGN KEY (id_punto)
        REFERENCES punto (id_punto),
    CONSTRAINT ck_parada_orden  CHECK (orden > 0),
    CONSTRAINT ck_parada_origen CHECK (origen_parada IN ('INICIAL','SOLICITUD'))
);

CREATE TABLE solicitud (
    id_viaje         NUMBER NOT NULL,
    id_pasajero      NUMBER NOT NULL,
    id_punto         NUMBER NOT NULL,
    fecha_solicitud  TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    estado           VARCHAR2(10) DEFAULT 'PENDIENTE' NOT NULL,
    fecha_respuesta  TIMESTAMP,
    CONSTRAINT pk_solicitud PRIMARY KEY (id_viaje, id_pasajero),
    CONSTRAINT fk_solicitud_viaje FOREIGN KEY (id_viaje)
        REFERENCES viaje (id_viaje),
    CONSTRAINT fk_solicitud_pasajero FOREIGN KEY (id_pasajero)
        REFERENCES pasajero (id_estudiante),
    CONSTRAINT fk_solicitud_punto FOREIGN KEY (id_punto)
        REFERENCES punto (id_punto),
    CONSTRAINT ck_solicitud_estado CHECK (estado IN
        ('PENDIENTE','ACEPTADA','RECHAZADA','CANCELADA'))
);

-- ---------------------------------------------------------------------
-- 6. Indices sobre llaves foraneas que no son prefijo de una PK/UK
--    (mejoran los joins de los RFC y los tableros)
-- ---------------------------------------------------------------------

CREATE INDEX ix_programa_universidad  ON programa (id_universidad);
CREATE INDEX ix_punto_localidad       ON punto (id_localidad);
CREATE INDEX ix_estprog_programa      ON estudiante_programa (id_programa);
CREATE INDEX ix_vehiculo_conductor    ON vehiculo (id_conductor);
CREATE INDEX ix_viaje_placa           ON viaje (placa);
CREATE INDEX ix_viaje_origen          ON viaje (id_punto_origen);
CREATE INDEX ix_parada_punto          ON parada_viaje (id_punto);
CREATE INDEX ix_solicitud_pasajero    ON solicitud (id_pasajero);
CREATE INDEX ix_solicitud_punto       ON solicitud (id_punto);

-- Las reglas RN1 a RN8 (cupos, estados, cancelacion con 2 horas, etc.)
-- se implementan con triggers en un script aparte.
-- RN10 y "estudiante con al menos un programa" se validan en la
-- aplicacion, dentro de la misma transaccion de registro.
