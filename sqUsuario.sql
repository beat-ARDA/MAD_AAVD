USE HydroLAN;
use Proyecto;

CREATE PROCEDURE sp_BuscarUsuario(@nombreUsuario varchar(100))
AS
BEGIN
SELECT * FROM Usuario WHERE nombreUsuario = @nombreUsuario;
END
GO

CREATE PROCEDURE sp_ModificarUsuario(@nombreUsuario varchar(100), @contraseņa varchar(100), @empleadoCliente tinyint, @intentos tinyint, @estado tinyint)
AS
BEGIN
UPDATE Usuario SET contraseņa = @contraseņa, empleadoCliente = @empleadoCliente, intentos = @intentos, estado = @estado WHERE nombreUsuario = @nombreUsuario;
END
GO

CREATE PROCEDURE sp_EliminarUsuario(@nombreUsuario varchar(100))
AS
BEGIN
DELETE Usuario WHERE nombreUsuario = @nombreUsuario;
END
GO