-- drop database danas;
create database danas;
use danas;

create table cargo (
idCargo int(5) primary key not null auto_increment,
cargo varchar(45)
);

insert into cargo (idCargo,cargo)
values 	(1,"Administrador"),
		(2,"Empleado"),
        (3,"Cliente");

create table tipodocumento (
idtipoDocumento int(2) primary key not null auto_increment,
descripcion varchar(45) not null
);

insert into tipodocumento (idtipoDocumento,descripcion)
values	(1, 'Cedula de ciudadania'),
		(2, 'Tarjeta de identidad'),
		(3, 'Pasaporte'),
		(4, 'Cedula de Extranjeria');

create table usuario (
idUsuario int(11) primary key not null auto_increment,
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
estado int(11) not null default '1'
);

insert into usuario (idUsuario,nombre,apellido,idtipoDocumento,numeroDocumento,telefono,direccion,correo,nick,clave,idCargo,estado) 
values	(1, 'Camilo Alejandro', 'Perez NiÃ±o', 2, '6545646546', '5464564564', '456f46s5a4f6a5s4', 'camilo@gmail.com', 'admi', '202cb962ac59075b964b07152d234b70', 1, 1),
		(2, 'Pepe Empleado', 'Nose Nose', 2, '5456456456', '564564', '5as6456a4f', 'nose@gmail.com', 'emp', '202cb962ac59075b964b07152d234b70', 2, 1);

        
create table cliente (
idCliente int(11) primary key not null auto_increment,
nombre varchar(50) not null,
apellido varchar(50) not null,
idTipoDocumento int(2) not null,
numeroDocumento varchar(45) not null,
telefono varchar(25) not null,
direccion varchar(60) not null,
correo varchar(60) not null,
nick varchar(30) not null,
clave varchar(100) not null,
idCargo int(2) not null
);

insert into cliente (idCliente,nombre,apellido,idTipoDocumento,numeroDocumento,telefono,direccion,correo,nick,clave,idCargo)
values	(1,"Felipe","Bigotes",1,"1000713776","3102472648","514fdgfgh","pipenunez.04@gmail.com","lipe","202cb962ac59075b964b07152d234b70",3);

create table cotizacion (
idCotizacion int(11) primary key not null auto_increment,
fecha date not null,
total double not null,
idUsuario int(11) null,
idCliente int(11) null

);

create table detallecotizacion (
idDetalleCotizacion int(11) primary key not null auto_increment,
idCotizacion int(11) not null,
idProducto int(11) not null,
Cantidad int(11) not null,
Subtotal double default null
);

create table detalleentrega (
idDetalleDeEntrega int(11) primary key not null auto_increment,
idMaterial int(11) default null,
idProveedor int(11) default null,
cantidad int(11) not null,
precioUnidad decimal(10,0) not null,
FechaEntrega date 
);

create table genero (
idGenero int(11) primary key not null auto_increment,
descripción varchar(50) not null
);

insert into genero (idGenero,descripción) 
values	(1, "Niño"),
		(2, "NIña"),
		(3, "Unisex");
        
create table material (
idMaterial int(11) primary key not null auto_increment,
material varchar(20) not null,
precioUnidad decimal(10,0) default null
);

insert into material (idMaterial,material,precioUnidad) 
values	(1, "madera", 10000),
		(2, "tela", 12000),
		(3, "hilo", 9000);

create table producto (
idProducto int(11) primary key not null auto_increment,
producto varchar (50) not null,
descripcion varchar(100) not null,
genero int(11) not null,
precio decimal(10,0) not null,
cantidad int(11) not null,
date_add datetime not null default current_timestamp,
usuario int(11) not null,
estatus int(11) not null default '1',
imagen varchar (250) not null
);

create table proveedor (
idProveedor int(11) primary key not null auto_increment,
proveedor varchar(20) default null,
contacto varchar(100) not null,
telefono varchar(15) not null,
direccion text not null,
data_add datetime not null default current_timestamp,
Estatus int(11) not null default "1"
);

insert into proveedor (idProveedor,proveedor,contacto,telefono,direccion,data_add,Estatus) 
values	(1, 'madera', 'andres', '321551522', 'calle 75 N 23', '2020-03-02 05:48:43', 1),
		(2, 'hilo', 'Carlos', '33215154552', 'calle 95 N 12 jumenez', '2020-03-02 05:51:33', 1),
		(3, 'tela', 'carol', '3202455315', 'carrrera 87 N 97 ', '2020-03-02 05:51:33', 1),
		(7, 'Maderas', 'felipe', '32145645', '31385413', '2020-03-04 14:40:40', 1),
		(8, 'Lipe', 'Bigotez', '321654987', 'wajidawj', '2020-03-05 12:02:40', 1);
        
create table registrarproducto (
idRegistrarProducto int(11) primary key not null auto_increment,
idProducto int(11) not null,
fecha datetime not null default current_timestamp,
cantidad int(11) not null,
precio decimal(10,0) not null,
idUsuario int(11) not null default '1'
);        

/* insert into registrarproducto (idRegistrarProducto,idProducto,fecha,cantidad,precio,idUsuario) 
values	(1,, now(), 2, 150, 1); */


create table venta (
idregistroVenta int(11) primary key not null auto_increment,
NombreCliente varchar(50) not null,
idProducto int(11) not null,
fecha datetime not null,
Precio decimal(10,0) not null,
idUsuario int(11) not null
);
  
-- LLAVES FORANEAS --
  
alter table usuario
  add key fk_usuario_cargo (idCargo),
  add key fk_usuario_tipoDocumento (idtipoDocumento);
  
alter table cliente
  add key fk_cliente_cargo (idCargo),
  add key fk_cliente_tipoDocumento (idtipoDocumento);
  
alter table venta
  add key idUsuario (idUsuario),
  add key idProducto (idProducto);
  
alter table cotizacion
  add key idUsuario (idUsuario),
  add key idCliente (idCliente);
  

alter table detallecotizacion
  add key idProducto (idProducto),
  add key idCotizacion (idCotizacion);
  
alter table detalleentrega
  add key detalleDeEntrega_material (idMaterial); 
  
alter table producto
  add key genero (genero),
  add key usuario (usuario);
  
alter table registrarproducto
  add key idProducto (idProducto),
  add key usuario_id (idUsuario);
  
alter table cliente
  add constraint fk_cliente_cargo foreign key (idCargo) references cargo (idCargo),
  add constraint fk_cliente_tipoDocumento foreign key (idtipoDocumento) references tipodocumento (idtipoDocumento);
  
alter table cotizacion
  add constraint cotizacion_usuario foreign key (idUsuario) references usuario (idUsuario),
  add constraint cotizacion_cliente foreign key (idCliente) references cliente (idCliente);
  
alter table detallecotizacion
  add constraint detallecotizacion_ibfk_1 foreign key (idProducto) references producto (idProducto),
  add constraint detallecotizacion_ibfk_2 foreign key (idCotizacion) references cotizacion (idCotizacion);
  
alter table detalleentrega
  add constraint detalleentrega_ibfk_1 foreign key (idMaterial) references material (idMaterial);
  
alter table producto
  add constraint producto_ibfk_3 foreign key (genero) references genero (idGenero),
  add constraint producto_ibfk_5 foreign key (usuario) references usuario (idUsuario);
  
  
alter table usuario
  add constraint fk_usuario_cargo foreign key (idCargo) references cargo (idCargo),
  add constraint fk_usuario_tipoDocumento foreign key (idtipoDocumento) references tipodocumento (idtipoDocumento);
  
alter table venta
  add constraint venta_ibfk_1 foreign key (idUsuario) references usuario (idUsuario),
  add constraint venta_ibfk_2 foreign key (idProducto) references producto (idProducto);
  
alter table registrarproducto
add constraint registrarproducto_ibfk_3 foreign key (idproducto) references producto (idProducto),
add constraint registrarproducto_ibfk_2 foreign key (idUsuario) references usuario (idUsuario);
