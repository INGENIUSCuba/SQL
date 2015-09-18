USE [DataEmprende]
GO
/****** Object:  UserDefinedFunction [dbo].[cant_asistencia]    Script Date: 09/14/2015 23:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<INGENIUS Cuba>
-- Create date: <23-05-2015>
-- Description:	<Determina la asistencia de un alumno>
-- =============================================
ALTER FUNCTION [dbo].[cant_asistencia](@idalumno int, @idcurso int)
	
RETURNS int 
AS 
-- Returns the stock level for the product.
BEGIN
    DECLARE @ret int;
 SELECT   @ret = COUNT(asistio) 
FROM         dbo.asistencia
WHERE     ((asistio = 1) AND (id_alumno = @idalumno) and (id_curso=@idcurso))
    
    RETURN @ret;
END;
