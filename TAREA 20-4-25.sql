-- Crear la base de datos
CREATE DATABASE  if not exists Sistema_Escolar_Boca_chica;
USE Sistema_Escolar_Boca_chica ;

-- Crear la tabla de direcciones
CREATE TABLE Direcciones (
    id_direccion INT AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL
);

-- Crear la tabla de estudiantes
CREATE TABLE Estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_direccion INT,
    FOREIGN KEY (id_direccion) REFERENCES Direcciones(id_direccion)
);

-- Crear la tabla de cursos
CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Crear la tabla de profesores
CREATE TABLE Profesores (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

-- Crear la tabla de departamentos
CREATE TABLE Departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

-- Crear la tabla de matrículas
CREATE TABLE Matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha_matricula DATE NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);


