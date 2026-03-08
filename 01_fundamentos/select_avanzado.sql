-- =========================================
-- SELECT AVANZADO
-- Practica de consultas SQL
-- =========================================

-- 1️⃣ Mostrar todos los usuarios
SELECT * FROM usuarios;

-- 2️⃣ Mostrar solo nombre y email
SELECT nombre, email
FROM usuarios;

-- 3️⃣ Filtrar usuarios mayores de 20 años
SELECT *
FROM usuarios
WHERE edad > 20;

-- 4️⃣ Ordenar usuarios por edad (de mayor a menor)
SELECT *
FROM usuarios
ORDER BY edad DESC;

-- 5️⃣ Buscar usuarios cuyo nombre empiece por 'C'
SELECT *
FROM usuarios
WHERE nombre LIKE 'C%';

-- 6️⃣ Contar cuantos usuarios hay
SELECT COUNT(*) AS total_usuarios
FROM usuarios;

-- 7️⃣ Mostrar usuarios con rol admin
SELECT *
FROM usuarios
WHERE rol = 'admin';

-- 8️⃣ Limitar resultados
SELECT *
FROM usuarios
LIMIT 5;

-- 9️⃣ Mostrar edades únicas
SELECT DISTINCT edad
FROM usuarios;

-- 🔟 Ordenar por nombre
SELECT *
FROM usuarios
ORDER BY nombre ASC;

SELECT * FROM usuarios LIMIT 20;