CREATE DATABASE Enfermedades_respiratorias;

USE Enfermedades_respiratorias;

CREATE TABLE Enfermedades(
   id INT NOT NULL,
   nombre VARCHAR(255) NOT NULL,
   descripcion VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE Sintomas(
   id INT NOT NULL,
   nombre VARCHAR(255) NOT NULL,
   descripcion VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE Tratamientos (
   id INT NOT NULL,
   nombre VARCHAR(255) NOT NULL,
   descripcion VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE Enfermedades_Sintomas(
   enfermedades_id INT NOT NULL,
   sintomas_id INT NOT NULL,
   PRIMARY KEY (enfermedades_id, sintomas_id),
   FOREIGN KEY (enfermedades_id) REFERENCES enfermedades(id),
   FOREIGN KEY (sintomas_id) REFERENCES sintomas(id)
);

CREATE TABLE Tratamientos_enfermedades (
   enfermedades_id INT NOT NULL,
   tratamiento_id INT NOT NULL,
   PRIMARY KEY (enfermedades_id, tratamiento_id),
   FOREIGN KEY (enfermedades_id) REFERENCES enfermedades(id),
   FOREIGN KEY (tratamiento_id) REFERENCES Tratamientos(id)
);




