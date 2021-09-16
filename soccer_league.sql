DROP DATABASE IF EXISTS soccer_league_db;
CREATE DATABASE soccer_league_db;
\c soccer_league_db;

CREATE TABLE results (
  id SERIAL PRIMARY KEY,
  teams_id INTEGER REFERENCES teams (id),
  match_id INTEGER REFERENCES matches (id),
  result TEXT
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  team_name TEXT NOT NULL,
  city TEXT NOT NULL,
  ranking INTEGER
);

CREATE TABLE goals (
  id SERIAL PRIMARY KEY,
  match_id INTEGER REFERENCES matches (id),
  player_id INTEGER REFERENCES players (id)
);

CREATE TABLE matches (
  id SERIAL PRIMARY KEY,
  home_team INTEGER REFERENCES teams (id),
  visitor_team INTEGER REFERENCES teams (id),
  match_location TEXT NOT NULL,
  match_date DATE,
  begin_time INTEGER NOT NULL,
  season_id INTEGER REFERENCES seasons (id),
  referee1_id INTEGER REFERENCES referees (id),
  referee2_id INTEGER REFERENCES referees (id),
  referee3_id INTEGER REFERENCES referees (id)
);

CREATE TABLE player (
  id SERIAL PRIMARY KEY,
  player_name TEXT NOT NULL,
  dob DATE,
  team_id INTEGER REFERENCES teams (id)
);


CREATE TABLE referees (
  id SERIAL PRIMARY KEY,
  ref_name TEXT NOT NULL,
);

CREATE TABLE lineups (
  id SERIAL PRIMARY KEY,
  player_id INTEGER REFERENCES players (id),
  match_id INTEGER REFERENCES matches (id),
  team_id INTEGER REFERENCES teams (id)
);

CREATE TABLE seasons (
  id SERIAL PRIMARY KEY,
  begin_date DATE NOT NULL,
  end_date DATE NOT NULL
);




