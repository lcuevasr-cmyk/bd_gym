---CONSULTAS 

--Muestra los pagos de las clases
SELECT
    c.nombre,
    c.apellido,
    cl.nombre AS clase,
    p.monto,
    p.fecha_pago,
    p.metodo_pago
FROM pagos p
INNER JOIN clientes c
    ON p.id_cliente = c.id_cliente
INNER JOIN inscripciones i
    ON p.id_inscripcion = i.id_inscripcion
INNER JOIN clases cl
    ON i.id_clase = cl.id_clase
WHERE p.tipo_pago = 'Clase';

--CONSULTA 2 muestra los clientes y sus inscripciones 
SELECT
    c.nombre,
    c.apellido,
    cl.nombre AS clase,
    i.fecha_inscripcion,
    i.estado
FROM clientes c
INNER JOIN inscripciones i
    ON c.id_cliente = i.id_cliente
INNER JOIN clases cl
    ON i.id_clase = cl.id_clase
ORDER BY c.nombre;

--Consulta 3 muestra los entrenadores, las clases que tienen asigandos y la cantidad de clases
-- asignadas a los entrenadores

SELECT
    e.nombre,
    e.apellido,
    cl.nombre AS nombre_clase,
    COUNT(cl.id_clase) AS total_clases
FROM entrenadores e
LEFT JOIN clases cl
    ON e.id_entrenador = cl.id_entrenador
GROUP BY
    e.id_entrenador,
    e.nombre,
    e.apellido,
    cl.nombre
ORDER BY e.nombre;

--consulta 4  Me muestra el total recaudado por el tipo de pago
SELECT
    tipo_pago,
    SUM(monto) AS total_recaudado
FROM pagos
GROUP BY tipo_pago;

--Consulta 5 cuenta las inscripciones segun su estado
SELECT
    estado,
    COUNT(*) AS total_inscripciones
FROM inscripciones
GROUP BY estado
ORDER BY estado;

--Consulta 6 cuenta cuantos clientes hay registrados
SELECT
    COUNT(*) AS total_clientes
FROM clientes;

---consulta 7 calcula el promedio de los pagos
SELECT
    AVG(monto) AS promedio_pago
FROM pagos;

---consulta 8 Muestra solo las inscripciones activas
SELECT
    c.nombre,
    c.apellido,
    cl.nombre AS clase,
    i.fecha_inscripcion,
    i.estado
FROM inscripciones i
INNER JOIN clientes c
    ON i.id_cliente = c.id_cliente
INNER JOIN clases cl
    ON i.id_clase = cl.id_clase
WHERE i.estado = 'Activa'
ORDER BY i.fecha_inscripcion;

--consulta 9 busca los clientes cuyo numbre empiezan con la letra...
SELECT
    id_cliente,
    nombre,
    apellido,
    email
FROM clientes
WHERE nombre LIKE 'F%'  --(cualquier cantida de caracteres)
ORDER BY nombre;

---consulta 10 busca pagos realizados entre dos fechas 
SELECT
    id_pago,
    id_cliente,
    tipo_pago,
    monto,
    fecha_pago,
    metodo_pago
FROM pagos
WHERE fecha_pago BETWEEN DATE '2026-04-01' -- (seleciona valores )
                     AND DATE '2026-04-30'
ORDER BY fecha_pago;


