# crea la base de datos
DROP DATABASE IF EXISTS casadelfuturo;
CREATE DATABASE casadelfuturo;
USE casaDelFuturo; 

# crea una tabla
DROP TABLE IF EXISTS Rol;
CREATE TABLE Rol (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    rol VARCHAR(20)
);

DROP TABLE IF EXISTS Domicilio;
CREATE TABLE Domicilio(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    provicia VARCHAR(20) NOT NULL,
    localidad VARCHAR(20) NOT NULL,
    calle VARCHAR(40) NOT NULL,
    altura INT NOT NULL,
    piso INT,
    departamento VARCHAR(5)
);

DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    nombre VARCHAR(60) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    dni INT NOT NULL,
    correo VARCHAR(100) NOT NULL,
    contrasenia VARCHAR(60) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_rol INT NOT NULL,
    id_domicilio INT NOT NULL,
    
    FOREIGN KEY (id_rol) REFERENCES rol(id),
    FOREIGN KEY (id_domicilio) REFERENCES domicilio(id)
);

# Agregar datos a una tabla
# rol
INSERT INTO rol VALUES(DEFAULT, "admin");
INSERT INTO rol VALUES(DEFAULT, "alumno");
INSERT INTO rol VALUES(DEFAULT, "tallerista");

# domicilio
INSERT INTO domicilio VALUES(DEFAULT,"Mendoza", "Godoy Cruz","Rafael Cubillos", 2222, NULL, NULL);

# usuario
INSERT INTO usuario VALUES(DEFAULT, "Lucas", "Zarandón",42510225, "lucaszarandon24@gmail.com","i<3programar","1999-07-01", 3, 1);

