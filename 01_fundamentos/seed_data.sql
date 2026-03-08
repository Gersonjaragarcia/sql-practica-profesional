INSERT INTO usuarios (nombre, email, edad, rol)
SELECT 
    'Usuario ' || generate_series(1,1000),
    'usuario' || generate_series(1,1000) || '@email.com',
    FLOOR(RANDOM() * 60) + 18,
    CASE 
        WHEN RANDOM() < 0.2 THEN 'admin'
        ELSE 'usuario'
    END;