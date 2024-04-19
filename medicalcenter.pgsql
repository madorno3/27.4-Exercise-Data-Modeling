DROP DATABASE medicalcenter;
CREATE DATABASE medicalcenter;
\c medicalcenter;

CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    name TEXT,
    specialty TEXT 
);

CREATE TABLE visits (
    doctor_id TEXT,
    patient_id TEXT,
    date DATE
);

CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    insurance TEXT,
    birthday DATE
);

CREATE TABLE diagnosis (
    name TEXT,
    description TEXT
);


