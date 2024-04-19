DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE name
(
  name_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE moons
(
  moon_id SERIAL PRIMARY KEY,
  moon TEXT NOT NULL
);

CREATE TABLE orbit
(
  orbit_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL
);

CREATE TABLE galaxy
(
  galaxy_id SERIAL PRIMARY KEY,
  galaxy TEXT NOT NULL
);

INSERT INTO name
  (name)
VALUES 
  ('Earth'),
  ('Mars'),
  ('Venus'),
  ('Neptune'),
  ('Proxima Centauri b'),
  ('Gliese 876 b');

INSERT INTO moons
  (moon)
VALUES
  ('{"The Moon"}'),
  ('{"Phobos", "Deimos"}'),
  ('{}'),
  ('{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('{}'),
  ('{}');

INSERT INTO orbit
  (name, orbital_period_in_years, orbits_around)
VALUES
  ('Earth', 1.00, 'The Sun'),
  ('Mars', 1.88, 'The Sun'),
  ('Venus', 0.62, 'The Sun'),
  ('Neptune', 164.8, 'The Sun'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri'),
  ('Gliese 876 b', 0.23, 'Gliese 876');

INSERT INTO galaxy
  (galaxy)
VALUES
  ('Milky Way');



-- CREATE TABLE planets
-- (
--   id SERIAL PRIMARY KEY,
--   name TEXT NOT NULL,
  -- orbital_period_in_years FLOAT NOT NULL,
  -- orbits_around TEXT NOT NULL,
--   galaxy TEXT NOT NULL,
--   moons TEXT[]
-- );

-- INSERT INTO planets
--   (name, orbital_period_in_years, orbits_around, galaxy, moons)
-- VALUES
--   ('Earth', 1.00, 'The Sun', 'Milky Way', '{"The Moon"}'),
--   ('Mars', 1.88, 'The Sun', 'Milky Way', '{"Phobos", "Deimos"}'),
--   ('Venus', 0.62, 'The Sun', 'Milky Way', '{}'),
--   ('Neptune', 164.8, 'The Sun', 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
--   ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', '{}'),
--   ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', '{}');