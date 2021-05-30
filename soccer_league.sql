DROP DATABASE IF EXISTS soccer_league_db;
CREATE DATABASE soccer_league_db;
\c soccer_league_db;

CREATE TABLE league_team (
  id SERIAL PRIMARY KEY,
  teams_name TEXT NOT NULL,
  teams_ranking INTEGER
);

CREATE TABLE player (
  id SERIAL PRIMARY KEY,
  player_name TEXT NOT NULL,
  games_played TEXT,
  goals_scored INTEGER
);

CREATE TABLE teams_players (
  id SERIAL PRIMARY KEY,
  members_id TEXT NOT NULL
);

CREATE TABLE referees (
  id SERIAL PRIMARY KEY,
  referees_name TEXT NOT NULL,
  referees_games TEXT
);

CREATE TABLE season (
  id SERIAL PRIMARY KEY,
  teams_name_1 INTEGER,
  VS BOOLEAN NOT NULL,
  teams_name_2 INTEGER,
  begin_date DATE NOT NULL,
  end_date DATE NOT NULL,
  winner TEXT NOT NULL
);




