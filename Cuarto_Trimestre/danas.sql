drop database danas;
create database danas;
use danas;

create table usuario (
  idUsuario int(11) not null,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  idtipoDocumento int(2) not null,
  numeroDocumento varchar(45) not null,
  telefono varchar(25) not null,
  direccion varchar(60) not null,
  correo varchar(60) not null,
  nick varchar(30) not null,
  clave varchar(100) not null,
  idCargo int(2) not null,
  estado int(11) not null default 1
); 

create table tipodocumento (
  idtipoDocumento int(2) NOT NULL,
  descripcion varchar(45) NOT NULL
);

create table cargo (
  idCargo int(2) not null,
  cargo varchar(45) not null
);

insert into usuario (idUsuario, nombre, apellido, idtipoDocumento, numeroDocumento, telefono, direccion, correo, nick, clave, idCargo, estado) VALUES
(1, 'Camilo Alejandro', 'Perez Niño', 3, '5645623', '45634322', 'ASFASFASFASF', 'camiloperez1284@gmail.com', 'camilo', '202cb962ac59075b964b07152d234b70', 1, 1),
(2, 'Valentina', 'Rivera Niño', 1, '14377647', '574575757', '741723747', 'Vale@gmail.com', 'valu', '202cb962ac59075b964b07152d234b70', 2, 1),
(3, 'Yaneth', 'Niño Toscano', 1, '16754574', '747575', '4747547fwf', 'Yane15@hotmail.com', 'yane', '202cb962ac59075b964b07152d234b70', 3, 1),
(4, 'Felipé', 'Perez Niño', 2, '5648641', '56434123231', 'casfas4fa53', 'felipe@gmail.com', 'pipe', '202cb962ac59075b964b07152d234b70', 3, 1),
(5, 'Damian', 'Almares Nose', 1, '56514', '45455', 'asfasfasfa25', 'dalma@hotmail.com', 'dami', '202cb962ac59075b964b07152d234b70', 3, 1),
(6, 'Gustavo', 'Hernadez Rojas', 1, '84563413', '74646545', '74654as65d4', 'gus@hotmail.com', 'gus', '202cb962ac59075b964b07152d234b70', 2, 1),
(7, 'Arturo', 'Katano Silvestre', 1, '64454964', '86465464', '4a65s4f6a46', 'artu04@gmail.com', 'arturito', '202cb962ac59075b964b07152d234b70', 3, 1),
(8, 'Carlos', 'Monroy Sanchez', 1, '56353563', '56356356356', 'c4as65f4', 'carlos1@hotmail.com', 'carlos', '202cb962ac59075b964b07152d234b70', 2, 1),
(9, 'Juan felipe', 'Carlosama Guarin ', 1, '664656846', '531463453', 'as4f65as4f56a medellin', 'campero123@hotmail.com', 'carlongas', '202cb962ac59075b964b07152d234b70', 3, 1),
(10, 'Juan Manuel', 'Humos Cardona', 4, '645645644', '78646464', 's4a56d4asd56', 'veneco@gmail.com', 'humos', '202cb962ac59075b964b07152d234b70', 2, 1);

insert into cargo (idCargo, cargo) values
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Cliente');

INSERT INTO tipodocumento (idtipoDocumento, descripcion) values
(1, 'Cedula de ciudadania'),
(2, 'Tarjeta de identidad'),
(3, 'Pasaporte'),
(4, 'Cedula de Extranjeria');

alter table usuario
add primary key (idUsuario),
ADD KEY idCargo (idCargo),
add key fk_usuario_tipodocumento (idtipoDocumento);

alter table cargo
add primary key (idCargo);

alter table tipodocumento
add primary key (idtipoDocumento);

alter table usuario
add constraint fk_usuario_cargo foreign key (idCargo) references cargo (idCargo),
add constraint fk_usuario_tipodocumento foreign key (idtipoDocumento) references tipodocumento (idtipoDocumento);


  
  
