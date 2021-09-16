DROP DATABASE IF EXISTS medical_center_db;
CREATE DATABASE medical_center_db;
\c medical_center_db;

CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  specialty TEXT NOT NULL
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  dob INTEGER NOT NULL
);

CREATE TABLE visits (
  id SERIAL PRIMARY KEY,
  doctor_id INTEGER REFERENCES doctors (id)
  patient_id INTEGER REFERENCES patients (id)
  visit_date INTEGER NOT NULL
);

CREATE TABLE diagnoses (
  id SERIAL PRIMARY KEY,
  diseases_id INTEGER REFERENCES diseases (id),
  visits_id INTEGER REFERENCES visits (id),
);

CREATE TABLE diseases (
  id SERIAL PRIMARY KEY,
  diseases_name TEXT NOT NULL,
  diseases_description TEXT NOT NULL
);
