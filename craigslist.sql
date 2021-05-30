DROP DATABASE IF EXISTS craiglist_db;
CREATE DATABASE craiglist_db;
\c craiglist_db;

CREATE TABLE by_state (
    id SERIAL PRIMARY KEY,
    state_id TEXT
)

CREATE TABLE by_city (
    id SERIAL PRIMARY KEY,
    city_id TEXT
)

CREATE TABLE by_zip (
    id SERIAL PRIMARY KEY,
    zip_id INTEGER
)

CREATE TABLE user_regions (
  id SERIAL PRIMARY KEY,
  user_nickname VARCHAR(8) NOT NULL,
  state_id TEXT NOT NULL,
  city_id TEXT NOT NULL,
  zip_id INTEGER NOT NULL 
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title TEXT,
  post_descript TEXT,
  categories_id TEXT NOT NULL,
  user_nickname TEXT
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  categories_id TEXT NOT NULL
);
