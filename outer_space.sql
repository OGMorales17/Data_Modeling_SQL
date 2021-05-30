-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

-- CREATE TABLE planets
-- (
--   id SERIAL PRIMARY KEY,
--   name TEXT NOT NULL,
--   orbital_period_in_years FLOAT NOT NULL,
--   orbits_around TEXT NOT NULL,
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


---------------------------  Modified Data  ---------------------------------

CREATE TABLE galaxy (
  id SERIAL PRIMARY KEY,
  galaxy TEXT NOT NULL
);

CREATE TABLE planets (
  id SERIAL PRIMARY KEY,
  planets TEXT NOT NULL
);

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  names TEXT[]
);

CREATE TABLE orbital_period_in_years (
  id SERIAL PRIMARY KEY,
  orbital_period_in_years FLOAT NOT NULL
);

CREATE TABLE orbits_around (
  id SERIAL PRIMARY KEY,
  orbits_around TEXT NOT NULL
);

INSERT INTO galaxy
  (galaxy)
VALUES
  ('Milky Way');

INSERT INTO planets
  (name)
VALUES
  ('Earth'),
  ('Mars'),
  ('Venus'),
  ('Neptune'),
  ('Proxima Centauri b'),
  ('Gliese 876 b');

INSERT INTO moons 
  (name)
VALUES
  ({"The Moon"}),
  ({"Phobos"}),
  ({"Deimos"}),
  ({"Naiad"}),
  ({"Thalassa"}),
  ({"Despina"}),
  ({"Galatea"}),
  ({"Larissa"}),
  ({"S/2004 N 1"}),
  ({"Proteus"}),
  ({"Triton"}),
  ({"Nereid"}),
  ({"Halimede"}),
  ({"Sao"}),
  ({"Laomedeia"}),
  ({"Psamathe"}),
  ({"Neso"});


INSERT INTO orbital_period_in_years
  (orbital_period_in_years)
VALUES
  (1.00),
  (1.88),
  (0.62),
  (164.8),
  (0.03),
  (0.23);


INSERT INSERT orbits_around
  (orbits_around)
VALUES
  ('The Sun'),
  ('Proxima Centauri'),
  ('Gliese 876');
 

