SELECT 
	Id, 
	Equipo, 
	PTS = ganados * 3 + empatados, 
	PJ = jugados,
	PG = ganados, 
	PE = empatados,
	PP = jugados - (ganados + empatados),  
	GF = golesAFavor, 
	GC = golesEnContra, 
	DG = golesAFavor - golesEnContra
FROM 
(
	SELECT 
		e.Id AS Id,
		e.NombreCorto AS Equipo,
		SUM(CASE
			WHEN e.Id = p.IdEquipoLocal THEN 1 
			WHEN e.Id = p.IdEquipoVisitante THEN 1
			ELSE 0
			END
		) AS jugados, 
		SUM(CASE
			WHEN e.Id = p.IdEquipoLocal AND p.GolesLocal > p.GolesVisitante THEN 1 
			WHEN e.Id = p.IdEquipoVisitante AND p.GolesVisitante > p.GolesLocal THEN 1
			ELSE 0
			END
		) AS ganados, 
		SUM(CASE
			WHEN p.GolesVisitante = p.GolesLocal THEN 1
			ELSE 0
			END
		) AS empatados,
		SUM(CASE
			WHEN e.Id = p.IdEquipoLocal THEN p.GolesLocal 
			WHEN e.Id = p.IdEquipoVisitante THEN p.GolesVisitante 
			ELSE 0
			END
		) AS golesAFavor,
		SUM(CASE
			WHEN e.Id = p.IdEquipoLocal THEN p.GolesVisitante 
			WHEN e.Id = p.IdEquipoVisitante THEN p.GolesLocal 
			ELSE 0
			END
		) AS golesEnContra
	FROM JET
	LEFT JOIN Partido p ON p.IdTorneo = JET.IdTorneo AND p.Jugado = 1
	INNER JOIN Equipo e ON JET.IdEquipo = e.Id
	WHERE JET.IdTorneo = 81 AND JET.IdJugador IS NULL
	GROUP BY e.Id, e.NombreCorto
) AS TablaPosiciones
ORDER BY PTS DESC, DG DESC, GF DESC, Equipo ASC
