USE fundacion_cana;

INSERT INTO roles (nombre) VALUES
    ('DIRECTIVO'),
    ('LIDER_PROYECTO'),
    ('VOLUNTARIO');

INSERT INTO usuarios (id_rol, nombre, email, password_hash) VALUES
    (1, 'Oscar Rodriguez', 'oscar.directiva@cana.org', 'hash-demo-directivo'),
    (2, 'Carlos Dominguez', 'carlos.lider@cana.org', 'hash-demo-lider'),
    (3, 'Ana Perez', 'ana.voluntaria@cana.org', 'hash-demo-voluntaria');

INSERT INTO proyectos
    (id_lider, nombre, objetivo, presupuesto_inicial, fecha_inicio, fecha_fin, estado)
VALUES
    (2, 'Comedor Solidario', 'Brindar almuerzos a 500 niños', 150000.00,
     '2026-09-01', '2026-12-20', 'EN_PROGRESO');

INSERT INTO hitos
    (id_proyecto, nombre, descripcion, fecha_limite, porcentaje_avance, estado)
VALUES
    (1, 'Compra de insumos', 'Adquirir los insumos del primer mes',
     '2026-09-15', 100.00, 'COMPLETADO'),
    (1, 'Distribucion de viandas', 'Organizar la entrega a las personas beneficiarias',
     '2026-09-30', 35.00, 'EN_PROGRESO');

INSERT INTO asignaciones (id_hito, id_usuario, fecha_asignacion) VALUES
    (1, 3, '2026-09-01'),
    (2, 3, '2026-09-01');

INSERT INTO costos (id_hito, fecha, monto, descripcion) VALUES
    (1, '2026-09-10', 45000.00, 'Compra de insumos del primer mes'),
    (2, '2026-09-12', 12000.00, 'Logistica de distribucion');
