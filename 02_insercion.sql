--REGISTROS--
--Membresias--
INSERT ALL
    INTO membresias VALUES (1, 'Basica', 150, 30)
    INTO membresias VALUES (2, 'Estandar', 250, 30)
    INTO membresias VALUES (3, 'Premium', 400, 30)
    INTO membresias VALUES (4, 'Anual', 2400, 365)
SELECT 1 FROM DUAL;

--ENTRENADORES-
INSERT ALL
    INTO entrenadores VALUES (1, 'Carlos', 'Perez', 'Musculacion', '55510001')
    INTO entrenadores VALUES (2, 'Maria', 'Lopez', 'Yoga', '55510002')
    INTO entrenadores VALUES (3, 'Jose', 'Ramirez', 'Spinning', '55510003')
    INTO entrenadores VALUES (4, 'Ana', 'Morales', 'Pilates', '55510004')
    INTO entrenadores VALUES (5, 'Luis', 'Garcia', 'Padel', '55510005')
    INTO entrenadores VALUES (6, 'Sofia', 'Hernandez', 'Zumba', '55510006')
SELECT 1 FROM DUAL;

--CLIENTES-
INSERT ALL
    INTO clientes VALUES (1, 'Ana', 'Gomez', 'ana1@example.com', '55520001', DATE '2026-01-02', 1)
    INTO clientes VALUES (2, 'Luis', 'Perez', 'luis2@example.com', '55520002', DATE '2026-01-03', 2)
    INTO clientes VALUES (3, 'Maria', 'Lopez', 'maria3@example.com', '55520003', DATE '2026-01-04', 3)
    INTO clientes VALUES (4, 'Carlos', 'Diaz', 'carlos4@example.com', '55520004', DATE '2026-01-05', 4)
    INTO clientes VALUES (5, 'Sofia', 'Ruiz', 'sofia5@example.com', '55520005', DATE '2026-01-06', 1)
    INTO clientes VALUES (6, 'Pedro', 'Mendez', 'pedro6@example.com', '55520006', DATE '2026-01-07', 2)
    INTO clientes VALUES (7, 'Laura', 'Castro', 'laura7@example.com', '55520007', DATE '2026-01-08', 3)
    INTO clientes VALUES (8, 'Diego', 'Flores', 'diego8@example.com', '55520008', DATE '2026-01-09', 4)
    INTO clientes VALUES (9, 'Elena', 'Vargas', 'elena9@example.com', '55520009', DATE '2026-01-10', 1)
    INTO clientes VALUES (10, 'Miguel', 'Torres', 'miguel10@example.com', '55520010', DATE '2026-01-11', 2)
    INTO clientes VALUES (11, 'Paula', 'Reyes', 'paula11@example.com', '55520011', DATE '2026-01-12', 3)
    INTO clientes VALUES (12, 'Andres', 'Ortiz', 'andres12@example.com', '55520012', DATE '2026-01-13', 2)
    INTO clientes VALUES (13, 'Daniela', 'Cruz', 'daniela13@example.com', '55520013', DATE '2026-01-14', 1)
    INTO clientes VALUES (14, 'Jorge', 'Ramos', 'jorge14@example.com', '55520014', DATE '2026-01-15', 4)
    INTO clientes VALUES (15, 'Valeria', 'Molina', 'valeria15@example.com', '55520015', DATE '2026-01-16', 3)
    INTO clientes VALUES (16, 'Fernando', 'Soto', 'fernando16@example.com', '55520016', DATE '2026-01-17', 2)
    INTO clientes VALUES (17, 'Keila', 'Herrera', 'gabriela17@example.com', '55520017', DATE '2026-01-18', 1)
    INTO clientes VALUES (18, 'Ricardo', 'Aguilar', 'ricardo18@example.com', '55520018', DATE '2026-01-19', 3)
    INTO clientes VALUES (19, 'Camila', 'Navarro', 'camila19@example.com', '55520019', DATE '2026-01-20', 4)
    INTO clientes VALUES (20, 'Mateo', 'Romero', 'mateo20@example.com', '55520020', DATE '2026-01-21', 2)
SELECT 1 FROM DUAL;

--CLASES --
INSERT ALL
    INTO clases VALUES (1, 'Musculacion', 'Lunes', '08:00', 20, 0, 1)
    INTO clases VALUES (2, 'Yoga', 'Martes', '09:00', 15, 0, 2)
    INTO clases VALUES (3, 'Spinning', 'Miercoles', '10:00', 20, 0, 3)
    INTO clases VALUES (4, 'Pilates', 'Jueves', '11:00', 15, 0, 4)
    INTO clases VALUES (5, 'Zumba', 'Viernes', '17:00', 25, 0, 6)
    INTO clases VALUES (6, 'Musculacion', 'Sabado', '09:00', 20, 0, 1)
    INTO clases VALUES (7, 'Yoga', 'Lunes', '16:00', 15, 0, 2)
    INTO clases VALUES (8, 'Spinning', 'Martes', '18:00', 20, 0, 3)
    INTO clases VALUES (9, 'Pilates', 'Miercoles', '17:00', 15, 0, 4)
    INTO clases VALUES (10, 'Padel', 'Viernes', '18:00', 8, 100, 5)
SELECT 1 FROM DUAL;

--INSCRIPCIONES-
INSERT ALL
    INTO inscripciones VALUES (1, 1, 1, DATE '2026-02-01', 'Finalizada')
    INTO inscripciones VALUES (2, 2, 2, DATE '2026-02-02', 'Finalizada')
    INTO inscripciones VALUES (3, 3, 3, DATE '2026-02-03', 'Finalizada')
    INTO inscripciones VALUES (4, 4, 4, DATE '2026-02-04', 'Finalizada')
    INTO inscripciones VALUES (5, 5, 5, DATE '2026-02-05', 'Finalizada')
    INTO inscripciones VALUES (6, 6, 6, DATE '2026-02-06', 'Finalizada')
    INTO inscripciones VALUES (7, 7, 7, DATE '2026-02-07', 'Finalizada')
    INTO inscripciones VALUES (8, 8, 8, DATE '2026-02-08', 'Finalizada')
    INTO inscripciones VALUES (9, 9, 9, DATE '2026-02-09', 'Finalizada')
    INTO inscripciones VALUES (10, 10, 1, DATE '2026-02-10', 'Finalizada')
    INTO inscripciones VALUES (11, 11, 2, DATE '2026-02-11', 'Finalizada')
    INTO inscripciones VALUES (12, 12, 3, DATE '2026-02-12', 'Finalizada')
    INTO inscripciones VALUES (13, 13, 4, DATE '2026-02-13', 'Finalizada')
    INTO inscripciones VALUES (14, 14, 5, DATE '2026-02-14', 'Finalizada')
    INTO inscripciones VALUES (15, 15, 6, DATE '2026-02-15', 'Finalizada')
    INTO inscripciones VALUES (16, 16, 7, DATE '2026-02-16', 'Finalizada')
    INTO inscripciones VALUES (17, 17, 8, DATE '2026-02-17', 'Finalizada')
    INTO inscripciones VALUES (18, 18, 9, DATE '2026-02-18', 'Finalizada')
    INTO inscripciones VALUES (19, 19, 1, DATE '2026-02-19', 'Finalizada')
    INTO inscripciones VALUES (20, 20, 2, DATE '2026-02-20', 'Finalizada')
    INTO inscripciones VALUES (21, 1, 3, DATE '2026-02-21', 'Activa')
    INTO inscripciones VALUES (22, 2, 4, DATE '2026-02-22', 'Activa')
    INTO inscripciones VALUES (23, 3, 5, DATE '2026-02-23', 'Activa')
    INTO inscripciones VALUES (24, 4, 6, DATE '2026-02-24', 'Activa')
    INTO inscripciones VALUES (25, 5, 7, DATE '2026-02-25', 'Activa')
    INTO inscripciones VALUES (26, 15, 10, DATE '2026-04-10', 'Finalizada')
    INTO inscripciones VALUES (27, 16, 10, DATE '2026-04-11', 'Finalizada')
    INTO inscripciones VALUES (28, 17, 10, DATE '2026-04-12', 'Finalizada')
    INTO inscripciones VALUES (29, 18, 10, DATE '2026-04-13', 'Finalizada')
    INTO inscripciones VALUES (30, 19, 10, DATE '2026-04-14', 'Finalizada')
    INTO inscripciones VALUES (31, 20, 10, DATE '2026-04-15', 'Finalizada')
SELECT 1 FROM DUAL;

--PAGOS-
INSERT ALL
    INTO pagos VALUES (1, 1, 'Membresia', 1, NULL, 150, DATE '2026-03-02', 'Efectivo')
    INTO pagos VALUES (2, 2, 'Membresia', 2, NULL, 250, DATE '2026-03-07', 'Tarjeta')
    INTO pagos VALUES (3, 3, 'Membresia', 3, NULL, 400, DATE '2026-03-08', 'Transferencia')
    INTO pagos VALUES (4, 4, 'Membresia', 4, NULL, 2400, DATE '2026-03-09', 'Tarjeta')
    INTO pagos VALUES (5, 5, 'Membresia', 1, NULL, 150, DATE '2026-03-10', 'Efectivo')
    INTO pagos VALUES (6, 6, 'Membresia', 2, NULL, 250, DATE '2026-03-11', 'Transferencia')
    INTO pagos VALUES (7, 7, 'Membresia', 3, NULL, 400, DATE '2026-03-12', 'Tarjeta')
    INTO pagos VALUES (8, 8, 'Membresia', 1, NULL, 150, DATE '2026-03-13', 'Efectivo')
    INTO pagos VALUES (9, 9, 'Membresia', 4, NULL, 2400, DATE '2026-03-14', 'Transferencia')
    INTO pagos VALUES (10, 10, 'Membresia', 2, NULL, 250, DATE '2026-03-15', 'Tarjeta')
    INTO pagos VALUES (11, 11, 'Membresia', 1, NULL, 150, DATE '2026-03-16', 'Efectivo')
    INTO pagos VALUES (12, 12, 'Membresia', 3, NULL, 400, DATE '2026-03-17', 'Transferencia')
    INTO pagos VALUES (13, 13, 'Membresia', 2, NULL, 250, DATE '2026-03-18', 'Efectivo')
    INTO pagos VALUES (14, 14, 'Membresia', 4, NULL, 2400, DATE '2026-03-19', 'Tarjeta')
    INTO pagos VALUES (15, 15, 'Membresia', 1, NULL, 150, DATE '2026-03-20', 'Transferencia')
    INTO pagos VALUES (16, 16, 'Membresia', 3, NULL, 400, DATE '2026-03-21', 'Efectivo')
    INTO pagos VALUES (17, 17, 'Membresia', 2, NULL, 250, DATE '2026-03-22', 'Tarjeta')
    INTO pagos VALUES (18, 18, 'Membresia', 1, NULL, 150, DATE '2026-03-23', 'Efectivo')
    INTO pagos VALUES (19, 19, 'Membresia', 4, NULL, 2400, DATE '2026-03-24', 'Transferencia')
    INTO pagos VALUES (20, 20, 'Membresia', 3, NULL, 400, DATE '2026-03-25', 'Tarjeta')
    INTO pagos VALUES (21, 1, 'Membresia', 2, NULL, 250, DATE '2026-04-02', 'Efectivo')
    INTO pagos VALUES (22, 2, 'Membresia', 1, NULL, 150, DATE '2026-04-03', 'Tarjeta')
    INTO pagos VALUES (23, 3, 'Membresia', 4, NULL, 2400, DATE '2026-04-04', 'Transferencia')
    INTO pagos VALUES (24, 4, 'Membresia', 3, NULL, 400, DATE '2026-04-05', 'Efectivo')
    INTO pagos VALUES (25, 5, 'Membresia', 2, NULL, 250, DATE '2026-04-06', 'Tarjeta')
    INTO pagos VALUES (26, 6, 'Membresia', 1, NULL, 150, DATE '2026-04-07', 'Transferencia')
    INTO pagos VALUES (27, 7, 'Membresia', 3, NULL, 400, DATE '2026-04-08', 'Efectivo')
    INTO pagos VALUES (28, 8, 'Membresia', 4, NULL, 2400, DATE '2026-04-09', 'Tarjeta')
    INTO pagos VALUES (29, 9, 'Membresia', 2, NULL, 250, DATE '2026-04-10', 'Transferencia')
    INTO pagos VALUES (30, 10, 'Membresia', 1, NULL, 150, DATE '2026-04-11', 'Efectivo')
    INTO pagos VALUES (31, 11, 'Membresia', 3, NULL, 400, DATE '2026-04-12', 'Tarjeta')
    INTO pagos VALUES (32, 12, 'Membresia', 2, NULL, 250, DATE '2026-04-13', 'Transferencia')
    INTO pagos VALUES (33, 13, 'Membresia', 1, NULL, 150, DATE '2026-04-14', 'Efectivo')
    INTO pagos VALUES (34, 14, 'Membresia', 4, NULL, 2400, DATE '2026-04-15', 'Tarjeta')
    INTO pagos VALUES (35, 15, 'Clase', NULL, 26, 100, DATE '2026-04-16', 'Efectivo')
    INTO pagos VALUES (36, 16, 'Clase', NULL, 27, 100, DATE '2026-04-16', 'Tarjeta')
    INTO pagos VALUES (37, 17, 'Clase', NULL, 28, 100, DATE '2026-04-17', 'Transferencia')
    INTO pagos VALUES (38, 18, 'Clase', NULL, 29, 100, DATE '2026-04-17', 'Efectivo')
    INTO pagos VALUES (39, 19, 'Clase', NULL, 30, 100, DATE '2026-04-18', 'Tarjeta')
    INTO pagos VALUES (40, 20, 'Clase', NULL, 31, 100, DATE '2026-04-18', 'Transferencia')
SELECT 1 FROM DUAL;

COMMIT;

--VERIFICANDO LOS REGISROS 

SELECT 'MEMBRESIAS' AS tabla, COUNT(*) AS total
FROM membresias
UNION ALL
SELECT 'ENTRENADORES', COUNT(*)
FROM entrenadores
UNION ALL
SELECT 'CLIENTES', COUNT(*)
FROM clientes
UNION ALL
SELECT 'CLASES', COUNT(*)
FROM clases
UNION ALL
SELECT 'INSCRIPCIONES', COUNT(*)
FROM inscripciones
UNION ALL
SELECT 'PAGOS', COUNT(*)
FROM pagos;
