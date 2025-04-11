-- create database gestion_tienda;

create table usuarios(
	id serial primary key,
	primer_nombre varchar(30) not null,
	segundo_nombre varchar(30),
	primer_apellido varchar(30) not null,
	segundo_apellido varchar(30),
	correo varchar(150) not null unique,
	tipo varchar(30) not null
	
);


create table productos(

	id serial primary key,
	nombre varchar(50) not null,
	categoria varchar(50) not null,
	stock integer not null,
	precio numeric(10,2) not null,
	id_proveedor integer not null,
	foreign key (id_proveedor) references usuarios(id)

);

create table ventas(

	id serial primary key,
	id_usuario integer not null,
	total numeric(10,2),
	fecha date default current_date,
	foreign key (id_usuario) references usuarios(id)
	
);

create table venta_producto(

	id_venta integer not null,
	id_producto integer not null,
	cantidad integer not null,
	foreign key (id_venta) references ventas(id),
	foreign key (id_producto) references productos(id)

);



