DROP DATABASE IF EXISTS medical_center_db;
CREATE DATABASE medical_center_db;
\c medical_center_db;

CREATE TABLE medical_staff (
  id SERIAL PRIMARY KEY,
  doctors_full_name TEXT NOT NULL,
  specialty TEXT NOT NULL
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  patients_full_name TEXT NOT NULL,
  disease TEXT
);

CREATE TABLE consultation (
  id SERIAL PRIMARY KEY,
  consultation_date INTEGER NOT NULL,
  doctor TEXT NOT NULL,
  patient TEXT NOT NULL,
--   reason_of_visit TEXT NOT NULL,
  diagnostic TEXT NOT NULL, 
  disease_id TEXT
);

CREATE TABLE diseases (
  id SERIAL PRIMARY KEY,
  diseases_id TEXT NOT NULL
);
