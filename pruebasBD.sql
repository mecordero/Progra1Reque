USE [BD_Baratico]
GO
insert into CLIENTE values ('Fabián','Piedra Herrera','faph.2009@hotmail.com','Cartago')
insert into Administrador values ('Fabián','Piedra Herrera')
insert into Log_In values ('CliF','CliF',2,1),('AdF','AdF',1,1)

insert into CATEGORIA values ('Limpieza'),('Comida'), ('Hogar'),('Ropa'),('Ferreteria')
insert into PRODUCTO values ('Escoba',1,0,2200,0), ('Jabón',1,0,850,0), ('Arroz',2,0,1100,0), ('Frijoles',2,0,1150,0), ('Alfombra',3,0,3200,0), ('Mesa',3,0,4200,0), ('Camisa azul',4,0,3400,0), ('Jeans',4,0,2450,0), ('Clavo',5,0,50,0),('Martillo',5,0,1850,0)

select * from cliente 
select * from administrador 
select * from LOG_IN 

select * from CATEGORIA
select * from PRODUCTO

delete LOG_IN where idLogIn != 1 and idLogIn!=2
delete CLIENTE where NOMBRE != 'Fabián'
delete Administrador where NOMBRE != 'Fabián'

USE [master]
GO
drop database BD_Baratico