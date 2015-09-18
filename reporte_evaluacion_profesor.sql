SELECT     TOP (100) PERCENT dbo.centro.nombre AS Centro, dbo.persona.nombre + ' ' + dbo.persona.apellidos AS Nombre_completo, dbo.curso.descripcion AS Materia, 
                      dbo.curso.evaluacion, dbo.curso.evaluacion_numerica, dbo.curso.id_profesor, dbo.curso.fecha_inicio, dbo.curso.fecha_fin, dbo.centro.id AS id_centro, 
                      dbo.curso.id_grupo, dbo.grupo.nombre AS Grupo
FROM         dbo.curso INNER JOIN
                      dbo.profesores ON dbo.curso.id_profesor = dbo.profesores.id_persona INNER JOIN
                      dbo.persona ON dbo.profesores.id_persona = dbo.persona.id INNER JOIN
                      dbo.grupo ON dbo.curso.id_grupo = dbo.grupo.id INNER JOIN
                      dbo.centro ON dbo.grupo.id_centro = dbo.centro.id
ORDER BY dbo.curso.fecha_inicio DESC
