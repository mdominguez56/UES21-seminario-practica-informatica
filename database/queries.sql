USE fundacion_cana;

-- Consulta de proyectos con lider y avance promedio de sus hitos.
SELECT
    p.id_proyecto,
    p.nombre,
    p.estado,
    u.nombre AS lider,
    COALESCE(ROUND(AVG(h.porcentaje_avance), 2), 0) AS avance_promedio,
    p.presupuesto_inicial,
    COALESCE(SUM(c.monto), 0) AS costo_ejecutado
FROM proyectos p
JOIN usuarios u ON u.id_usuario = p.id_lider
LEFT JOIN hitos h ON h.id_proyecto = p.id_proyecto
LEFT JOIN costos c ON c.id_hito = h.id_hito
GROUP BY p.id_proyecto, p.nombre, p.estado, u.nombre, p.presupuesto_inicial;

-- Consulta de hitos asignados a cada voluntario.
SELECT
    u.nombre AS voluntario,
    p.nombre AS proyecto,
    h.nombre AS hito,
    h.fecha_limite,
    h.porcentaje_avance,
    h.estado
FROM asignaciones a
JOIN usuarios u ON u.id_usuario = a.id_usuario
JOIN hitos h ON h.id_hito = a.id_hito
JOIN proyectos p ON p.id_proyecto = h.id_proyecto
WHERE u.id_rol = (SELECT id_rol FROM roles WHERE nombre = 'VOLUNTARIO');

-- Actualizacion del avance de un hito.
UPDATE hitos
SET porcentaje_avance = 60.00,
    estado = 'EN_PROGRESO'
WHERE id_hito = 2;

-- Registro de un nuevo costo.
INSERT INTO costos (id_hito, fecha, monto, descripcion)
VALUES (2, CURRENT_DATE, 3500.00, 'Materiales de distribucion');

-- Borrado controlado de un costo de prueba.
DELETE FROM costos
WHERE id_costo = 3;
