SELECT     TOP (100) PERCENT dbo.persona.id AS CI, dbo.persona.apellidos AS [Apellido(s)], dbo.persona.nombre AS [Nombre(s)], dbo.centro.nombre AS Centro, 
                      dbo.grupo.nombre AS Grupo, dbo.grupo.inicio AS [Fecha Inicio], dbo.grupo.fin AS [Fecha Fin], CONVERT(varchar(10), dbo.estado.id) 
                      + '  ' + dbo.estado.nombre AS [Estado del alumno], dbo.persona.direccion AS Dirección, dbo.municipio.municipio AS [Municipio ], 
                      dbo.provincia.provincia AS [Provincia ], dbo.persona.emails AS Email, dbo.persona.telefonos AS Teléfono, dbo.ocupacion.ocupacion AS Ocupación, 
                      dbo.profesion.profesion AS Profesión, dbo.persona.edad AS [Edad ], dbo.sexo.sexo AS [Sexo ], dbo.raza.raza AS [Raza ], 
                      dbo.escolaridad.escolaridad AS [Escolaridad ], dbo.alumno.id, dbo.grupo.id_centro, dbo.persona.telefono_cell AS [Telef. Cell.], 
                      dbo.persona.telefono_trabajo AS [Telef. TRAB.], dbo.aspirante.como_supo AS [Como lo supo], dbo.aspirante.negocio_proyectado AS [Negocio proyectado], 
                      dbo.aspirante.mes_comienzo AS [Fecha solicitada], dbo.aspirante.numero_planilla AS [Num. planilla], dbo.estado_aspirante.Estado AS [Estado aspirante], 
                      dbo.programa.nombre AS Programa, dbo.especificaciones.nombre AS Especificación, dbo.alumno.otros_datos AS [Otros Datos], 
                      dbo.alumno.comparte_info AS [Comparte INFO], dbo.motivos_entrada.motivo AS Motivos
FROM         dbo.sexo INNER JOIN
                      dbo.persona ON dbo.sexo.id = dbo.persona.id_sexo INNER JOIN
                      dbo.raza ON dbo.persona.id_raza = dbo.raza.id INNER JOIN
                      dbo.escolaridad ON dbo.persona.id_escolaridad = dbo.escolaridad.id INNER JOIN
                      dbo.profesion ON dbo.persona.id_profesion = dbo.profesion.id INNER JOIN
                      dbo.ocupacion ON dbo.persona.id_ocupacion = dbo.ocupacion.id INNER JOIN
                      dbo.municipio ON dbo.persona.id_municipio = dbo.municipio.id INNER JOIN
                      dbo.provincia ON dbo.persona.id_provincia = dbo.provincia.id LEFT OUTER JOIN
                      dbo.aspirante INNER JOIN
                      dbo.motivos_entrada ON dbo.aspirante.id_motivo_entrada = dbo.motivos_entrada.id ON dbo.persona.id = dbo.aspirante.id_persona LEFT OUTER JOIN
                      dbo.grupo INNER JOIN
                      dbo.alumno ON dbo.grupo.id = dbo.alumno.id_grupo INNER JOIN
                      dbo.centro ON dbo.grupo.id_centro = dbo.centro.id INNER JOIN
                      dbo.estado ON dbo.alumno.id_estado = dbo.estado.id ON dbo.persona.id = dbo.alumno.id_persona LEFT OUTER JOIN
                      dbo.programa ON dbo.aspirante.id_programa = dbo.programa.id LEFT OUTER JOIN
                      dbo.estado_aspirante ON dbo.aspirante.id_estado = dbo.estado_aspirante.id LEFT OUTER JOIN
                      dbo.especificaciones ON dbo.aspirante.id_especificacion = dbo.especificaciones.id
ORDER BY [Fecha Inicio] DESC, [Fecha Fin] DESC, [Apellido(s)]
