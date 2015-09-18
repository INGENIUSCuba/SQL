SELECT     TOP (100) PERCENT dbo.proyectos.nombre AS proyecto, dbo.persona.apellidos + ' ' + dbo.persona.nombre AS nombre_completo, dbo.alumno.id_proyecto
FROM         dbo.persona INNER JOIN
                      dbo.alumno ON dbo.persona.id = dbo.alumno.id_persona INNER JOIN
                      dbo.proyectos ON dbo.alumno.id_proyecto = dbo.proyectos.id
ORDER BY nombre_completo
