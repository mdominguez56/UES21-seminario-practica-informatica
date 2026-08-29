CREATE DATABASE IF NOT EXISTS fundacion_cana;
USE fundacion_cana;

-- Tabla de Usuarios (Directivos y Líderes)
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    rol ENUM('DIRECTIVO', 'LIDER_PROYECTO') NOT NULL
);

-- Tabla de Proyectos
CREATE TABLE Proyectos (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    objetivo TEXT,
    presupuesto_inicial DECIMAL(10,2),
    estado ENUM('PLANIFICACION', 'EN_PROGRESO', 'FINALIZADO') DEFAULT 'PLANIFICACION',
    id_lider INT,
    FOREIGN KEY (id_lider) REFERENCES Usuarios(id_usuario)
);

-- Tabla de Hitos
CREATE TABLE Hitos (
    id_hito INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT NOT NULL,
    nombre VARCHAR(150) NOT NULL,
    fecha_limite DATE,
    costo_real DECIMAL(10,2) DEFAULT 0.00,
    responsable VARCHAR(100),
    completado BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_proyecto) REFERENCES Proyectos(id_proyecto) ON DELETE CASCADE
);

-- Insertar datos de prueba
INSERT INTO Usuarios (nombre, email, password, rol) VALUES
('Oscar Rodriguez', 'oscar.directiva@cana.org', 'admin123', 'DIRECTIVO'),
('Carlos Dominguez', 'carlos.lider@cana.org', 'lider123', 'LIDER_PROYECTO');

INSERT INTO Proyectos (nombre, objetivo, presupuesto_inicial, estado, id_lider) VALUES
('Comedor Solidario', 'Brindar almuerzos a 500 niños', 150000.00, 'EN_PROGRESO', 2);

INSERT INTO Hitos (id_proyecto, nombre, fecha_limite, costo_real, responsable, completado) VALUES
(1, 'Compra de insumos mes 1', '2026-09-15', 45000.00, 'Voluntario A', TRUE),
(1, 'Distribución de viandas', '2026-09-30', 0.00, 'Voluntario B', FALSE);
