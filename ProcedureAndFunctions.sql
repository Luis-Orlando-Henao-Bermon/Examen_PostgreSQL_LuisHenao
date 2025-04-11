--Un procedimiento almacenado para registrar una venta.

create or replace procedure registrar_venta(
	id_usaurio integer
)
language plpgsql as $$
begin 
	insert into ventas(id_usuario,total) values(8,0);
end;
$$
-- llamada de prueba
call registrar_venta(2);

--Validar que el cliente exista.

create or replace function validar_cliente(
f_correo varchar(150)
)
returns varchar(50) as $$
declare 
	mensaje varchar(50);
	cantidad_usuarios bigint;
begin 
	select count(*) into cantidad_usuarios from usuarios where correo=f_correo;

	if cantidad_usuarios>0 then
		mensaje='El usuario existe';
	else
		mensaje= 'El usuario no existe';
	end if;
	return mensaje;
end;
$$ language plpgsql;	

-- select de prueba
select validar_cliente('lucho@gmail.com');

--Verificar que el stock sea suficiente antes de procesar un detalle de venta.

create or replace procedure agregar_detalle_venta(
f_id_venta integer,
f_id_producto integer,
f_cantidad integer
)
language plpgsql as $$
declare 	
	cantidad_actual int;
	precio_producto numeric;
begin 
	select stock into cantidad_actual from productos where id=f_id_producto;
	select precio into precio_producto from productos where id=f_id_producto;

	if cantidad_actual< f_cantidad then
		raise notice 'Cantidad insuficiente en stock';
	else
		insert into venta_producto(id_venta,id_producto,cantidad) values(f_id_venta,f_id_producto,f_cantidad);
		update ventas set total=total+(precio_producto*f_cantidad) where id= f_id_venta;
		update productos set stock=cantidad_actual-f_cantidad where id= f_id_producto;
		
	end if;
end;
$$;

-- llamada de prueba

call agregar_detalle_venta(7,2,3);

