-- crear_tabla_usuarios.sql
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    rol VARCHAR(50),
    edad INT
); 