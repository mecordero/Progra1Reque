CREATE PROCEDURE Verificacion_LogIn @Usuario nchar(15)
AS
BEGIN
	select Usuario,Clave,tipo,iddueño from LOG_IN where usuario=@usuario
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
