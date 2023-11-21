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
CREATE TABLE G5_Proyecto.producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  descripcion VARCHAR(30) NOT NULL,  
  detalle VARCHAR(1600) NOT NULL, 
  precio DOUBLE,
  existencias INT,  
  ruta_imagen VARCHAR(1024),
  activo BOOLEAN,
  PRIMARY KEY (id_producto)) 
  ENGINE = InnoDB
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

INSERT INTO G5_Proyecto.producto (id_producto,descripcion,detalle,precio,existencias,ruta_imagen,activo) VALUES
(1,'Adidas blanca','Lorem ipsum dolor sit amet consectetur adipiscing elit iaculis, ullamcorper in fringilla eu cras tempor mi. Luctus blandit sapien mauris vestibulum consequat mattis taciti aliquam ullamcorper, sagittis suscipit etiam urna convallis interdum tempor bibendum, ultricies habitant viverra natoque dictum posuere senectus volutpat. Cum ad vehicula condimentum nunc lacus nec tellus eleifend, a platea curae nullam sollicitudin nibh class cursus taciti, posuere purus inceptos facilisis cubilia suspendisse ut.',23000,5,'https://www.addictmiami.com/cdn/shop/products/H06258_1_1200x1200.png?v=1676613747',true),
(2,'puma negra','Quisque in ridiculus scelerisque platea accumsan libero sem vel, mi cras metus cubilia tempor conubia fermentum volutpat gravida, maecenas semper sodales potenti turpis enim dapibus. Volutpat accumsan vivamus dignissim blandit vel eget posuere donec id, tempus sagittis aliquam erat luctus ornare aptent cubilia aliquet proin, ultrices ante pretium gravida sed vitae vestibulum aenean. Eleifend nascetur conubia ornare purus a eget at metus est risus natoque, elementum dis vulputate sociosqu integer ut ad nisl dui molestie.',27000,2,'https://www.izapatillas.com/30644-large_default/puma-pwrframe-tr-training-mujer-376170-10-negra-gris.jpg',true),
(3,'vans ajedrez','Natoque lacinia accumsan hendrerit pretium sociis imperdiet a, nullam ornare erat suspendisse praesent porta, euismod in augue tempus aliquet habitasse. Non accumsan nostra cras vestibulum augue facilisi auctor scelerisque suscipit, iaculis maecenas varius sollicitudin lacus netus et ultricies tincidunt, tortor curabitur tempor diam aliquet dis platea integer. Potenti aliquet erat neque vitae et sociis pretium, viverra euismod vivamus scelerisque metus est feugiat curae, parturient auctor aliquam pharetra nam congue.',24000,5,'https://media.vogue.mx/photos/6388cb6b100355e249602f8f/master/w_1600%2Cc_limit/vans_2.png',true);

Select * from usuarios;

