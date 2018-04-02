USE [BD_Baratico]
GO

CREATE PROCEDURE Verificacion_LogIn @Usuario nchar(15)
AS
BEGIN
	select Usuario,Clave,tipo,iddueño from LOG_IN where Usuario=@usuario
END
GO

CREATE PROCEDURE Obtener_Cliente @id int
AS
BEGIN
	select Nombre,Apellidos,CorreoElectronico,Direccion from Cliente where idCliente=@id
END
GO

CREATE PROCEDURE Obtener_Admin @id int
AS
BEGIN
	select Nombre,Apellidos from Administrador where IdAdiministrador=@id
END
GO

CREATE PROCEDURE Buscar_Usuario @Usuario nchar(15)
AS
BEGIN
	select Usuario from LOG_IN where usuario=@usuario
END
GO


CREATE PROCEDURE Registrar_Cliente @nombre nchar(20),@apellidos nchar(40),@correo nchar(50), @usuario nchar(15), @clave nchar(20)
AS
BEGIN	
	insert into CLIENTE values (@nombre,@apellidos,@correo,null)
	insert into Log_In values (@usuario,@clave,2,(SELECT TOP 1 idCliente FROM cliente cl ORDER BY cl.idCliente DESC))
END
GO

CREATE PROCEDURE Obtener_Productos
AS
BEGIN	
	select IdProducto,Nombre,idCategoría,CantidadVendida,Precio,CalificacionPromedio from producto
END
GO


CREATE PROCEDURE Obtener_Categorias
AS
BEGIN	
	select IdCategoría,Nombre from categoria
END
GO
