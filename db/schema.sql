DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS owned_pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  poke_type TEXT,
  img_url TEXT
);

CREATE TABLE owned_pokemons(
  id SERIAL PRIMARY KEY,
  pokemon_id INT,
  trainer_id INT,
  cp INT
);

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  level INT,
  img_url TEXT,
  team_id INT
);

CREATE TABLE teams(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
