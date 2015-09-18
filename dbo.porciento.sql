USE [DataEmprende]
GO
/****** Object:  UserDefinedFunction [dbo].[porciento]    Script Date: 09/15/2015 04:56:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[porciento](@id_alumno int,@id_check int, @id_tipo int, @multiplico float) 
RETURNS  float
AS
BEGIN
	-- Declare the return variable here
	DECLARE @formula float;

SELECT    @formula =  SUM(colcalc) * @multiplico
FROM         dbo.inc_doc_check_list
where (id_alumno = @id_alumno) AND (id_check = @id_check) AND (id_tipo = @id_tipo)
	RETURN @formula
END
