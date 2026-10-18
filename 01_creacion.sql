--TABLA MEMBRESIAS

CREATE TABLE membresias (
    id_membresia NUMBER PRIMARY KEY,
    nombre VARCHAR2(30) NOT NULL UNIQUE,
    precio NUMBER(8,2) NOT NULL CHECK (precio > 0),
    duracion_dias NUMBER NOT NULL CHECK (duracion_dias > 0)
);

--Tabla entrenadores

CREATE TABLE entrenadores (
    id_entrenador NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    apellido VARCHAR2(50) NOT NULL,
    especialidad VARCHAR2(50) NOT NULL,
    telefono VARCHAR2(15) NOT NULL UNIQUE
);

--Tabla clientes
CREATE TABLE clientes (
    id_cliente NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    apellido VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL UNIQUE,
    telefono VARCHAR2(15) NOT NULL UNIQUE,
    fecha_registro DATE NOT NULL,
    id_membresia NUMBER,
    FOREIGN KEY (id_membresia)
        REFERENCES membresias(id_membresia)
);

---Tabla clases 

CREATE TABLE clases (
    id_clase NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    dia_semana VARCHAR2(10) NOT NULL,
    hora VARCHAR2(5) NOT NULL,
    cupo_maximo NUMBER NOT NULL CHECK (cupo_maximo > 0),
    precio NUMBER(8,2) DEFAULT 0 NOT NULL
        CHECK (precio >= 0),
    id_entrenador NUMBER NOT NULL,
    FOREIGN KEY (id_entrenador)
        REFERENCES entrenadores(id_entrenador)
);

-- Tabla inscripciones

CREATE TABLE inscripciones (
    id_inscripcion NUMBER PRIMARY KEY,
    id_cliente NUMBER NOT NULL,
    id_clase NUMBER NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    estado VARCHAR2(12) DEFAULT 'Activa' NOT NULL
        CHECK (estado IN ('Activa', 'Finalizada', 'Cancelada')),
    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_clase)
        REFERENCES clases(id_clase),
    UNIQUE (id_cliente, id_clase, fecha_inscripcion)
);

--Tabla pagos 

CREATE TABLE pagos (
    id_pago NUMBER PRIMARY KEY,
    id_cliente NUMBER NOT NULL,
    tipo_pago VARCHAR2(10) NOT NULL
        CHECK (tipo_pago IN ('Membresia', 'Clase')),
    id_membresia NUMBER,
    id_inscripcion NUMBER,
    monto NUMBER(8,2) NOT NULL CHECK (monto > 0),
    fecha_pago DATE NOT NULL,
    metodo_pago VARCHAR2(20) NOT NULL
        CHECK (metodo_pago IN
            ('Efectivo', 'Tarjeta', 'Transferencia')),

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_membresia)
        REFERENCES membresias(id_membresia),

    FOREIGN KEY (id_inscripcion)
        REFERENCES inscripciones(id_inscripcion),

    CHECK (
        (tipo_pago = 'Membresia'
            AND id_membresia IS NOT NULL
            AND id_inscripcion IS NULL)
        OR
        (tipo_pago = 'Clase'
            AND id_inscripcion IS NOT NULL
            AND id_membresia IS NULL)
    )
);
