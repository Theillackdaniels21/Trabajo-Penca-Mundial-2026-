CREATE DATABASE IF NOT EXISTS penca_mundial;
USE penca_mundial;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    usuario VARCHAR(100) NOT NULL UNIQUE,
    contrasena_hash VARCHAR(255) NOT NULL,
    fecha_registro DATE NOT NULL,
    rol VARCHAR(50) NOT NULL DEFAULT 'usuario',
    estado VARCHAR(50) NOT NULL DEFAULT 'Activo',
    puntos_totales INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id_usuario)
);

CREATE TABLE selecciones (
    id_seleccion INT NOT NULL,
    pais VARCHAR(100) NOT NULL,
    confederacion VARCHAR(50),
    entrenador VARCHAR(100),
    grupo VARCHAR(10),
    color VARCHAR(50),
    PRIMARY KEY (id_seleccion)
);

CREATE TABLE partidos (
    id_partido INT NOT NULL,
    fecha DATE,
    hora TIME,
    sede VARCHAR(100),
    id_local INT NOT NULL,
    id_visitante INT NOT NULL,
    goles_local INT,
    goles_visitante INT,
    fase VARCHAR(50),
    estado VARCHAR(50),

    PRIMARY KEY (id_partido),

    FOREIGN KEY (id_local)
        REFERENCES selecciones(id_seleccion),

    FOREIGN KEY (id_visitante)
        REFERENCES selecciones(id_seleccion)
);

CREATE TABLE pronosticos (
    id_pronostico INT AUTO_INCREMENT,

    id_usuario INT NOT NULL,
    id_partido INT NOT NULL,

    pred_local INT NOT NULL,
    pred_visitante INT NOT NULL,

    puntos INT DEFAULT 0,

    PRIMARY KEY (id_pronostico),

    CONSTRAINT unique_pronostico
        UNIQUE (id_usuario, id_partido),

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario),

    FOREIGN KEY (id_partido)
        REFERENCES partidos(id_partido)
);

INSERT INTO usuarios (
    nombre,
    apellido,
    email,
    usuario,
    contrasena_hash,
    fecha_registro,
    rol,
    estado,
    puntos_totales
)
VALUES (
    'Administrador',
    'Sistema',
    'admin@penca.com',
    'admin',
    'admin123',
    CURDATE(),
    'admin',
    'Activo',
    0
);
