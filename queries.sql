--Listar los productos con stock menor a 5 unidades.

select * from productos where stock<5;

--Calcular ventas totales de un mes específico.

select * from ventas where fecha>='2025-04-01' and fecha<'2025-05-01';

--Obtener el cliente con más compras realizadas.

select u.*,count(v.*) as cantidad_de_compras from usuarios u inner join ventas v on u.id=v.id_usuario group by 1 order by cantidad_de_compras desc limit 1; 

--Listar los 5 productos más vendidos.

select p.*, sum(vp.cantidad) as cantidad_vendida from productos p inner join venta_producto vp on p.id=vp.id_producto group by 1 order by cantidad_vendida desc,1 asc limit 5;

--Consultar ventas realizadas en un rango de fechas de tres Días y un Mes. para los tres dias pondre entre hoy y hace 3 dias

select * from ventas where fecha<=current_date and fecha>current_date-3;

--Identificar clientes que no han comprado en los últimos 6 meses.

select u.* from usuarios u left join ventas v on u.id=v.id_usuario 
where v.id_usuario not in (select id_usuario from ventas where fecha>='2024-10-01' and fecha<'2025-04-01') and v.id_usuario is null and u.tipo='Usuario';
