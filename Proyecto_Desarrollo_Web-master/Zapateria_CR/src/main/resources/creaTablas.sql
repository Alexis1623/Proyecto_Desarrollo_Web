/*Se crea la base de datos */
drop schema if exists G5_Proyecto;
drop user if exists user_G5;
CREATE SCHEMA G5_Proyecto ;

USE G5_Proyecto;
/* Crear un usuario llamado 'usuario_G5_Proyecto' con contraseña 'la_Clave' y darle acceso a la base de datos 'G5_Proyecto' */
CREATE USER 'user_G5' IDENTIFIED BY 'Bdproyecto5';
GRANT ALL PRIVILEGES ON G5_Proyecto.* TO 'user_G5';

 /* la tabla de categoria contiene categorias de productos*/
create table G5_Proyecto.categoria (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  descripcion VARCHAR(30) NOT NULL,
  ruta_imagen varchar(1024),
  activo bool,
  PRIMARY KEY (id_categoria))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table G5_Proyecto.producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  id_categoria INT NOT NULL,
  descripcion VARCHAR(30) NOT NULL,  
  detalle VARCHAR(1600) NOT NULL, 
  precio double,
  existencias int,  
  ruta_imagen varchar(1024),
  activo bool,
  PRIMARY KEY (id_producto),
  foreign key fk_producto_caregoria (id_categoria) references categoria(id_categoria)  
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

/*Se crea la tabla de clientes llamada cliente... igual que la clase Cliente */
CREATE TABLE G5_Proyecto.usuario (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(512) NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  apellidos VARCHAR(30) NOT NULL,
  correo VARCHAR(25) NULL,
  telefono VARCHAR(15) NULL,
  ruta_imagen varchar(1024),
  activo boolean,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table G5_Proyecto.factura (
  id_factura INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  fecha date,  
  total double,
  estado int,
  PRIMARY KEY (id_factura),
  foreign key fk_factura_usuario (id_usuario) references usuario(id_usuario)  
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table G5_Proyecto.venta (
  id_venta INT NOT NULL AUTO_INCREMENT,
  id_factura INT NOT NULL,
  id_producto INT NOT NULL,
  precio double, 
  cantidad int,
  PRIMARY KEY (id_venta),
  foreign key fk_ventas_factura (id_factura) references factura(id_factura),
  foreign key fk_ventas_producto (id_producto) references producto(id_producto) 
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan 3 registros en la tabla cliente como ejemplo */
INSERT INTO G5_Proyecto.usuario (id_usuario, username,password,nombre, apellidos, correo, telefono,ruta_imagen,activo) VALUES 
(1,'alex','$2a$10$P1.w58XvnaYQUQgZUCk4aO/RTRl8EValluCqB3S2VMLTbRt.tlre.','Alexis', 'Zuñiga Molina',    'yadirzm1623@gmail.com',    '7777-7777', 'https://www.fayerwayer.com/resizer/aaBy2Yvxwyx08naL79IWXJi2TZM=/1024x1024/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/GBJ3JSYQTNGF3NGCV6L4VLWO4Y.jpg',true),
(2,'ker','$2a$10$GkEj.ZzmQa/aEfDmtLIh3udIH5fMphx/35d0EYeqZL5uzgCJ0lQRi','Kersy',  'Téllez Mena', 'kersymena@gmail.com', '8888-8888','https://i.pinimg.com/originals/67/48/a1/6748a118d183bb66e1d7f84aaaf3fb86.jpg',true),
(3,'kev','$2a$10$koGR7eS22Pv5KdaVJKDcge04ZB53iMiw76.UjHPY.XyVYlYqXnPbO','Kevin', 'Pereira Ramirez',     'test@gmail.com',      '9999-9999','https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/16612305-1958-4b03-98d1-2982b7864c7b/detdk6t-bb16c057-f86e-4791-b4ff-536ec289ac02.png/v1/fill/w_800,h_800/steve_stock_icon_by_svg360_detdk6t-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAwIiwicGF0aCI6IlwvZlwvMTY2MTIzMDUtMTk1OC00YjAzLTk4ZDEtMjk4MmI3ODY0YzdiXC9kZXRkazZ0LWJiMTZjMDU3LWY4NmUtNDc5MS1iNGZmLTUzNmVjMjg5YWMwMi5wbmciLCJ3aWR0aCI6Ijw9ODAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.y1H9QkrzNkjTN5InxTqXV7IOJc5gyxtNzkWcomev-r0',true);
/*Users */

/*alex 123 */

/*ker 456 */

/*kev 789 */

/*Se insertan 3 categorias de productos como ejemplo */
INSERT INTO G5_Proyecto.categoria (id_categoria,descripcion,ruta_imagen,activo) VALUES 
('1','Adidas', 'https://d2ulnfq8we0v3.cloudfront.net/cdn/695858/media/catalog/category/MONITORES.jpg',   true), 
('2','Pumas',  'https://cnnespanol.cnn.com/wp-content/uploads/2022/04/teclado-mecanico.jpg',   true),
('3','Vans','https://static-geektopia.com/storage/thumbs/784x311/788/7884251b/98c0f4a5.webp',true);

/*Se insertan 4 productos por categoria */
INSERT INTO G5_Proyecto.producto (id_producto,id_categoria,descripcion,detalle,precio,existencias,ruta_imagen,activo) VALUES
(1,1,'Adidas blanca','Lorem ipsum dolor sit amet consectetur adipiscing elit iaculis, ullamcorper in fringilla eu cras tempor mi. Luctus blandit sapien mauris vestibulum consequat mattis taciti aliquam ullamcorper, sagittis suscipit etiam urna convallis interdum tempor bibendum, ultricies habitant viverra natoque dictum posuere senectus volutpat. Cum ad vehicula condimentum nunc lacus nec tellus eleifend, a platea curae nullam sollicitudin nibh class cursus taciti, posuere purus inceptos facilisis cubilia suspendisse ut.',23000,5,'https://www.addictmiami.com/cdn/shop/products/H06258_1_1200x1200.png?v=1676613747',true),
(2,2,'puma negra','Quisque in ridiculus scelerisque platea accumsan libero sem vel, mi cras metus cubilia tempor conubia fermentum volutpat gravida, maecenas semper sodales potenti turpis enim dapibus. Volutpat accumsan vivamus dignissim blandit vel eget posuere donec id, tempus sagittis aliquam erat luctus ornare aptent cubilia aliquet proin, ultrices ante pretium gravida sed vitae vestibulum aenean. Eleifend nascetur conubia ornare purus a eget at metus est risus natoque, elementum dis vulputate sociosqu integer ut ad nisl dui molestie.',27000,2,'https://www.izapatillas.com/30644-large_default/puma-pwrframe-tr-training-mujer-376170-10-negra-gris.jpg',true),
(3,3,'vans ajedrez','Natoque lacinia accumsan hendrerit pretium sociis imperdiet a, nullam ornare erat suspendisse praesent porta, euismod in augue tempus aliquet habitasse. Non accumsan nostra cras vestibulum augue facilisi auctor scelerisque suscipit, iaculis maecenas varius sollicitudin lacus netus et ultricies tincidunt, tortor curabitur tempor diam aliquet dis platea integer. Potenti aliquet erat neque vitae et sociis pretium, viverra euismod vivamus scelerisque metus est feugiat curae, parturient auctor aliquam pharetra nam congue.',24000,5,'https://media.vogue.mx/photos/6388cb6b100355e249602f8f/master/w_1600%2Cc_limit/vans_2.png',true);


/*Se crean 6 facturas */   /*'Activa','Pagada','Anulada')*/
INSERT INTO G5_Proyecto.factura (id_factura,id_usuario,fecha,total,estado) VALUES
(1,1,'2022-01-05',211560,2),
(2,2,'2022-01-07',554340,2),
(3,3,'2022-01-07',871000,2),
(4,1,'2022-01-15',244140,1),
(5,2,'2022-01-17',414800,1),
(6,3,'2022-01-21',420000,1);


create table G5_Proyecto.rol (
  id_rol INT NOT NULL AUTO_INCREMENT,
  nombre varchar(20),
  id_usuario int,
  PRIMARY KEY (id_rol),
  foreign key fk_rol_usuario (id_usuario) references usuario(id_usuario)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

insert into G5_Proyecto.rol (id_rol, nombre, id_usuario) values
 (1,'ROLE_ADMIN',1), (2,'ROLE_VENDEDOR',1), (3,'ROLE_USER',1),
 (4,'ROLE_VENDEDOR',2), (5,'ROLE_USER',2),
 (6,'ROLE_USER',3);


