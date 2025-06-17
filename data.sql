-- Script de datos de prueba para la base de datos de ciclistas
BEGIN;
-- Insertar nacionalidades
INSERT INTO nacionalidades (nacionalidad) VALUES 
('España'),
('Francia'),
('Italia'),
('Colombia'),
('Reino Unido'),
('Países Bajos'),
('Bélgica'),
('Alemania'),
('Estados Unidos'),
('Australia'),
('Dinamarca'),
('Eslovenia'),
('Ecuador'),
('Sudáfrica'),
('Noruega');

-- Insertar ciclistas
INSERT INTO ciclistas (nombre, nacionalidad_id, fecha_nacimiento) VALUES 
('Tadej Pogačar', 12, '1998-09-21'),
('Jonas Vingegaard', 11, '1996-12-10'),
('Egan Bernal', 4, '1997-01-13'),
('Geraint Thomas', 5, '1986-05-25'),
('Primož Roglič', 12, '1989-10-29'),
('Remco Evenepoel', 7, '2000-01-25'),
('Wout van Aert', 7, '1994-09-15'),
('Mathieu van der Poel', 6, '1995-01-19'),
('Julian Alaphilippe', 2, '1992-06-11'),
('Peter Sagan', 12, '1990-01-26'),
('Chris Froome', 5, '1985-05-20'),
('Nairo Quintana', 4, '1990-02-04'),
('Alejandro Valverde', 1, '1980-04-25'),
('Vincenzo Nibali', 3, '1984-11-14'),
('Alberto Contador', 1, '1982-12-06'),
('Rigoberto Urán', 4, '1987-01-26'),
('Mikel Landa', 1, '1989-12-13'),
('Enric Mas', 1, '1995-01-07'),
('Adam Yates', 5, '1992-08-07'),
('Simon Yates', 5, '1992-08-07'),
('Richard Carapaz', 13, '1993-05-29'),
('Daryl Impey', 14, '1984-12-06'),
('Caleb Ewan', 10, '1994-07-11'),
('Mark Cavendish', 5, '1985-05-21'),
('Marcel Kittel', 8, '1988-05-11');

-- Insertar equipos
INSERT INTO equipos (nacionalidad_id, director) VALUES 
(12, 'Andrej Hauptman'),        -- UAE Team Emirates (Eslovenia)
(11, 'Richard Plugge'),         -- Team Jumbo-Visma (Dinamarca)
(7, 'Patrick Lefevere'),        -- Quick-Step Alpha Vinyl (Bélgica)
(2, 'Marc Madiot'),             -- Groupama-FDJ (Francia)
(1, 'Joxean Fernández'),        -- Movistar Team (España)
(5, 'Dave Brailsford'),         -- INEOS Grenadiers (Reino Unido)
(3, 'Davide Bramati'),          -- Trek-Segafredo (Italia)
(6, 'Merijn Zeeman'),           -- Alpecin-Fenix (Países Bajos)
(8, 'Ralph Denk'),              -- BORA-hansgrohe (Alemania)
(9, 'Jonathan Vaughters');      -- EF Education-EasyPost (Estados Unidos);

-- Insertar relaciones equipos-ciclistas
INSERT INTO equipos_ciclistas (equipo_id, ciclista_id, fecha_inicio, fecha_fin) VALUES 
-- UAE Team Emirates
(1, 1, '2021-01-01', NULL),     -- Tadej Pogačar
(1, 21, '2020-01-01', NULL),    -- Richard Carapaz

-- Team Jumbo-Visma  
(2, 2, '2019-01-01', NULL),     -- Jonas Vingegaard
(2, 5, '2019-01-01', '2023-12-31'), -- Primož Roglič

-- Quick-Step Alpha Vinyl
(3, 6, '2019-01-01', NULL),     -- Remco Evenepoel
(3, 7, '2021-01-01', NULL),     -- Wout van Aert
(3, 9, '2018-01-01', NULL),     -- Julian Alaphilippe

-- Groupama-FDJ
(4, 12, '2020-01-01', NULL),    -- Nairo Quintana

-- Movistar Team
(5, 13, '2006-01-01', '2022-12-31'), -- Alejandro Valverde
(5, 17, '2016-01-01', NULL),    -- Mikel Landa
(5, 18, '2018-01-01', NULL),    -- Enric Mas

-- INEOS Grenadiers
(6, 3, '2018-01-01', NULL),     -- Egan Bernal
(6, 4, '2010-01-01', NULL),     -- Geraint Thomas
(6, 11, '2010-01-01', '2020-12-31'), -- Chris Froome

-- Trek-Segafredo
(7, 14, '2019-01-01', NULL),    -- Vincenzo Nibali

-- Alpecin-Fenix
(8, 8, '2019-01-01', NULL),     -- Mathieu van der Poel

-- BORA-hansgrohe
(9, 10, '2017-01-01', '2021-12-31'), -- Peter Sagan

-- EF Education-EasyPost
(10, 16, '2018-01-01', NULL),   -- Rigoberto Urán
(10, 19, '2020-01-01', NULL),   -- Adam Yates
(10, 20, '2018-01-01', '2019-12-31'); -- Simon Yates

-- Insertar pruebas
INSERT INTO pruebas (nombre, edicion, etapas, km_total, ganador) VALUES 
('Tour de France', 2023, 21, 3404, 1),    -- Pogačar
('Tour de France', 2022, 21, 3349, 2),    -- Vingegaard  
('Tour de France', 2021, 21, 3383, 1),    -- Pogačar
('Tour de France', 2020, 21, 3484, 1),    -- Pogačar
('Tour de France', 2019, 21, 3460, 3),    -- Egan Bernal
('Tour de France', 2018, 21, 3351, 4),    -- Geraint Thomas

('Giro d''Italia', 2023, 21, 3448, 5),    -- Roglič
('Giro d''Italia', 2022, 21, 3410, 21),   -- Richard Carapaz
('Giro d''Italia', 2021, 21, 3479, 3),    -- Egan Bernal
('Giro d''Italia', 2020, 21, 3488, 21),   -- Richard Carapaz
('Giro d''Italia', 2019, 21, 3531, 21),   -- Richard Carapaz

('Vuelta a España', 2023, 21, 3124, 10),  -- Peter Sagan
('Vuelta a España', 2022, 21, 3280, 6),   -- Remco Evenepoel
('Vuelta a España', 2021, 21, 3336, 5),   -- Primož Roglič
('Vuelta a España', 2020, 21, 3109, 5),   -- Primož Roglič
('Vuelta a España', 2019, 21, 3272, 5),   -- Primož Roglič

('Paris-Roubaix', 2023, 1, 257, 8),       -- Mathieu van der Poel
('Paris-Roubaix', 2022, 1, 257, 7),       -- Wout van Aert
('Paris-Roubaix', 2021, 1, 257, 8),       -- Mathieu van der Poel

('Milano-Sanremo', 2023, 1, 293, 8),      -- Mathieu van der Poel
('Milano-Sanremo', 2022, 1, 293, 17),     -- Mikel Landa
('Milano-Sanremo', 2021, 1, 299, 9),      -- Julian Alaphilippe

('Liège-Bastogne-Liège', 2023, 1, 259, 1), -- Pogačar
('Liège-Bastogne-Liège', 2022, 1, 257, 6), -- Remco Evenepoel
('Liège-Bastogne-Liège', 2021, 1, 259, 1); -- Pogačar

-- Insertar posiciones de equipos en pruebas
INSERT INTO equipos_pruebas (equipo_id, prueba_id, puesto) VALUES 
-- Tour de France 2023
(1, 1, 1),  -- UAE Team Emirates
(2, 1, 2),  -- Team Jumbo-Visma
(6, 1, 3),  -- INEOS Grenadiers

-- Tour de France 2022
(2, 2, 1),  -- Team Jumbo-Visma
(1, 2, 2),  -- UAE Team Emirates
(6, 2, 3),  -- INEOS Grenadiers

-- Giro d'Italia 2023
(2, 7, 1),  -- Team Jumbo-Visma
(1, 7, 2),  -- UAE Team Emirates
(6, 7, 3),  -- INEOS Grenadiers

-- Vuelta a España 2023
(9, 12, 1), -- BORA-hansgrohe
(3, 12, 2), -- Quick-Step Alpha Vinyl
(5, 12, 3), -- Movistar Team

-- Paris-Roubaix 2023
(8, 17, 1), -- Alpecin-Fenix
(3, 17, 2), -- Quick-Step Alpha Vinyl
(2, 17, 3), -- Team Jumbo-Visma

-- Milano-Sanremo 2023
(8, 19, 1), -- Alpecin-Fenix
(1, 19, 2), -- UAE Team Emirates
(3, 19, 3); -- Quick-Step Alpha Vinyl
COMMIT;