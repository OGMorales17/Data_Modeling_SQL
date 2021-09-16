DROP DATABASE IF EXISTS craiglist_db;
CREATE DATABASE craiglist_db;
\c craiglist_db;

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title TEXT,
  content TEXT,
  users_id INTEGER REFERENCES users (id),
  categories_id TEXT NOT NULL,
  regions_id INTEGER REFERENCES regions (id)
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  users_name VARCHAR(8) NOT NULL,
  pwd TEXT NOT NULL,
  preferred_region INTEGER REFERENCES regions (id)
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  cat_name TEXT NOT NULL
);

CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    reg_name TEXT
)
