/* Crear la base de datos 'G5_Proyecto' */
CREATE DATABASE G5_Proyecto;

USE G5_Proyecto;
/* Crear un usuario llamado 'usuario_G5_Proyecto' con contraseña 'la_Clave' y darle acceso a la base de datos 'G5_Proyecto' */
CREATE USER 'user_G5' IDENTIFIED BY 'Bdproyecto5';
GRANT ALL PRIVILEGES ON G5_Proyecto.* TO 'user_G5';

 

/* Utilizar la base de datos 'G5_Proyecto' */
/* Crear la tabla para almanecenar a los usuarios */ 
CREATE TABLE G5_Proyecto.usuarios (
	id_user INT NOT NULL AUTO_INCREMENT,
	usr_nombre_usr VARCHAR(40),   -- Campos para el nickname del usuario
    usr_password varchar(100), -- Campos para la contraseña del usuario
    usr_nombre VARCHAR(40),          -- Campos para el nombre del usuario
    usr_apellidos VARCHAR(255),       -- Campos para el apellido del usuario
    usr_provincia VARCHAR(150),       -- Campo para el provincia del usuario
    usr_direccion VARCHAR(255),       -- Campo para colocar la dirección del usuario
	edad int ,   --  Campo para guardar la edad del usuario
    usr_email  varchar(200),    -- Campo para el correo electronico del usuario 
    usr_fech_na date ,-- Campos para almacenar la fecha de nacimiento del usuario
    usr_admin bool,  -- Campo para validar si el usuario es admin o no
    PRIMARY KEY (id_user)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


USE G5_Proyecto;

/* Insertar datos en la tabla de usuarios */
INSERT INTO usuarios (usr_nombre_usr, usr_password, usr_nombre, usr_apellidos, usr_provincia, usr_direccion, edad, usr_email, usr_fech_na, usr_admin)
VALUES
('G4_User', 'PassG4', 'G4', 'NA', 'San Pedro', 'Fidelitas', 0, 'example@email.com', '2023-10-30', 1),
('carla_1987', 'Passw123', 'Carla', 'García Pérez', 'Madrid', 'Calle Mayor 123', 34, 'carla@email.com', '1987-04-15', 0),
('juanita_1990', 'Pwd456', 'Juana', 'Martínez López', 'Barcelona', 'Avenida Diagonal 789', 31, 'juanita@email.com', '1990-09-22', 0),
('roberto_1985', 'Hola1245', 'Roberto', 'Sánchez Martín', 'Valencia', 'Calle del Mar 56', 36, 'roberto@email.com', '1985-12-05', 0),
('andres_1992', 'Passw123', 'Andrés', 'Rodríguez Gómez', 'Sevilla', 'Calle Sevilla 987', 29, 'andres@email.com', '1992-07-30', 0);

Select * from usuarios


