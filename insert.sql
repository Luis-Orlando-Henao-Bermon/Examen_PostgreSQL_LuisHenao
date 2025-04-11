-- inserciones en usuarios

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Luis','Orlando','Henao','Bermon','lucho@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('freiler','aleiro','ortega','ortega','freill@gmail.com','Proveedor');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Maria','Fernanda','Gonzales','perez','marifer@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Jean','Franco','Rodriguez','Rodrigez','jeanF@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Jose','Jose','Perez','Bermon','josej@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Luis','Miguel','Caicedo','Bermon','luchom@gmail.com','Proveedor');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Camilo','Alexander','Machuca','Mencoza','camilin@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Yurley','Patricia','Gomez','Gomez','yurley23@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Laura','Patricia','Salamanca','Zuleta','laurita64@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Yesica','Andrea','Perez','Machuca','yyandrea@gmail.com','Proveedor');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Diego','Alexander','Perez','Gonzales','dieguin@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Miguel','Andres','Guerrero','Caicedo','miguel1672@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Zully','Fernanda','Ortiz','Salamanca','zullita@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Alejandra','Maria','Machuca','Machuca','alejita23@gmail.com','Usuario');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Jhonatan','Andres','Omaña','Gomez','jhonatan326@gmail.com','Proveedor');

insert into usuarios(primer_nombre,segundo_nombre,primer_apellido,	segundo_apellido,	correo,	tipo) 
values('Jhoan','Striven','Bermon','Garay','jhoan33@gmail.com','Usuario'); 

select * from usuarios;


insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Iphone 12','Celular',30,1000,3);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Iphone 13','Celular',20,1200,3);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Iphone 14','Celular',40,1500,3);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Iphone 15','Celular',50,1800,3);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Iphone 16','Celular',40,2000,3);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Azuz 3','Computador',15,600,7);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Reloj Tactil','Accesorio',60,60,11);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Diadema','Accesorios',30,100,11);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Mac M2','Computador',20,2000,3);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Mac M1','Computador',50,1500,3);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Table Samsung','Tablet',22,400,7);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Ipad','Tablet',60,700,3);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('Reloj Samsung','Accesorios',50,100,11);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('XBOX 360','Juego',40,400,11);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('XBOX Series S','Juego',40,800,11);

insert into productos(nombre,categoria,stock,precio,id_proveedor) 
values('PS5','Juego',15,1500,11);

select * from productos;

-- inserciones en ventas

insert into ventas(id_usuario,total) values(1,2200);

insert into ventas(id_usuario,total) values(4,1700);

insert into ventas(id_usuario,total) values(5,2700);

insert into ventas(id_usuario,total) values(5,1200);

insert into ventas(id_usuario,total) values(6,1500);

insert into ventas(id_usuario,total) values(8,4500);

insert into ventas(id_usuario,total) values(9,4500);

insert into ventas(id_usuario,total) values(10,4500);

insert into ventas(id_usuario,total) values(12,4500);

insert into ventas(id_usuario,total) values(13,4500);

insert into ventas(id_usuario,total) values(14,4500);

insert into ventas(id_usuario,total) values(14,4500);

insert into ventas(id_usuario,total) values(1,0);

insert into ventas(id_usuario,total) values(4,0);

insert into ventas(id_usuario,total) values(5,0);

select * from ventas;

-- inserciones en venta_producto

insert into venta_producto(id_venta,id_producto,cantidad) values(1,8,2);

insert into venta_producto(id_venta,id_producto,cantidad) values(1,9,1);

insert into venta_producto(id_venta,id_producto,cantidad) values(2,13,2);

insert into venta_producto(id_venta,id_producto,cantidad) values(2,16,2);

insert into venta_producto(id_venta,id_producto,cantidad) values(3,1,2);

insert into venta_producto(id_venta,id_producto,cantidad) values(3,12,1);

insert into venta_producto(id_venta,id_producto,cantidad) values(4,2,1);

insert into venta_producto(id_venta,id_producto,cantidad) values(5,3,1);

insert into venta_producto(id_venta,id_producto,cantidad) values(6,3,3);

insert into venta_producto(id_venta,id_producto,cantidad) values(7,3,3);

insert into venta_producto(id_venta,id_producto,cantidad) values(8,3,3);

insert into venta_producto(id_venta,id_producto,cantidad) values(9,3,3);

insert into venta_producto(id_venta,id_producto,cantidad) values(10,3,3);

insert into venta_producto(id_venta,id_producto,cantidad) values(11,3,3);

insert into venta_producto(id_venta,id_producto,cantidad) values(12,3,3);

select * from venta_producto;
