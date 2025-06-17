-- CREATE USER ciclista_user PASSWORD 'ciclista_pass';
-- CREATE DATABASE ciclistas OWNER ciclista_user;

CREATE TABLE nacionalidades (
  nacionalidad_id     SERIAL PRIMARY KEY,
  nacionalidad        VARCHAR(120) UNIQUE
);

CREATE TABLE ciclistas (
  ciclista_id          SERIAL PRIMARY KEY,
  nombre               VARCHAR(120) NOT NULL,
  nacionalidad_id      INTEGER REFERENCES nacionalidades,
  fecha_nacimiento     DATE
);

CREATE TABLE equipos (
  equipo_id           SERIAL PRIMARY KEY,
  nacionalidad_id     INTEGER REFERENCES nacionalidades,
  director            VARCHAR(120)
);

CREATE TABLE equipos_ciclistas (
  equipo_id           INTEGER REFERENCES equipos,
  ciclista_id         INTEGER REFERENCES ciclistas,
  fecha_inicio        DATE NOT NULL,
  fecha_fin           DATE,
  PRIMARY KEY (equipo_id, ciclista_id, fecha_inicio)
);

CREATE TABLE pruebas (
  prueba_id           SERIAL PRIMARY KEY,
  nombre              VARCHAR(120),
  edicion             INTEGER,
  etapas              INTEGER,
  km_total            INTEGER,
  ganador             INTEGER REFERENCES ciclistas(ciclista_id)
);

CREATE TABLE equipos_pruebas (
  equipo_id           INTEGER REFERENCES equipos,
  prueba_id           INTEGER REFERENCES pruebas,
  puesto              INTEGER
);
