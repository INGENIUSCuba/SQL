USE [DataEmprende]
GO
/****** Object:  StoredProcedure [dbo].[proyecto_total]    Script Date: 09/14/2015 23:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[proyecto_total]
@F1 nvarchar(50),
@F2 nvarchar(50)
AS
SELECT     estado_proyecto, COUNT(nombre) AS Cantidad
FROM         dbo.reporte_proyecto
WHERE     (fecha_entrega > @F1 AND fecha_entrega < @F2)
GROUP BY estado_proyecto
