# 📚 Módulo 01 — Fundamentos de SQL
Este módulo introduce los conceptos básicos de SQL utilizando PostgreSQL, enfocados en la creación de tablas, inserción de datos y consultas básicas.

El objetivo es comprender cómo se estructura una base de datos y cómo interactuar con ella mediante consultas.

--- 

# 🎯 Objetivo del módulo

Al finalizar este módulo deberías ser capaz de:
 - Crear tablas en SQL
 - Definir tipos de datos
 - Aplicar restricciones
 - Insertar registros
 - Realizar consultas básicas

# 🧠 ¿Qué es SQL?
**SQL (Structured Query Language)** es el lenguaje utilizado para:
 - 📎 Crear bases de datos
 - 📎 Crear tablas
 - 📎 Insertar datos
 - 📎 Consultar información
 - 📎 Actualizar registros
 - 📎 Eliminar datos

Es el lenguaje estándar utilizado para trabajar con bases de datos relacionales.

---
# 🗄 ¿Qué es una tabla?

Una tabla es una estructura dentro de una base de datos donde se almacenan los datos organizados en:
 - **Filas (rows)** → registros
 - ** Columnas (columnas)** → atributos de los datos
Ejemplo de tabla de usuarios:

| **ID** | **nombre** |   **Email**       | **edad**| **rol**|
|------------------------------------------------------------|
| **1**  | Carlos     | carlos@email.com  |   23    | admin  |
| **2**  | Laura      |laura@email.com    |   19    | usuario|

---

# 📊 Diagrama de la tabla usuarios
```
usuarios
│
├── id (SERIAL) PK
├── nombre (VARCHAR)
├── email (VARCHAR) UNIQUE
├── edad (INT)
├── rol (VARCHAR)
└── fecha_registro (DATE)

``` 

# 🏗 Cómo crear una tabla en SQL
Para crear una tabla se utiliza la instrucción:

```
CREATE TABLE nombre_tabla (
    columna tipo_de_dato restricciones
);
``` 
# 📥 Insertar datos
Ejemplo:

```
INSERT INTO usuarios (nombre, email, edad, rol)
VALUES ('Carlos Perez', 'carlos@email.com', 25, 'admin');
``` 
---

# 🔎 Consultas SQL

**Mostrar todos los usuarios** 
```
SELECT * FROM usuarios;
``` 
---
## Mostrar solo nombre y email
```
SELECT nombre, email
FROM usuarios;
``` 
---
## Filtrar usuarios mayores de 18
```
SELECT *
FROM usuarios
WHERE edad > 18;
```
---
## Ordenar por edad

```
SELECT *
FROM usuarios
ORDER BY edad DESC;
``` 

---
## Buscar usuarios que empiezan con "A"

```
SELECT *
FROM usuarios
WHERE nombre LIKE 'A%';
``` 
---





---
# 📌 Ejemplo: Crear tabla de usuarios

```
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    edad INT,
    rol VARCHAR(50),
    fecha_registro DATE DEFAULT CURRENT_DATE
);
``` 
# 🔍 Explicación de cada parte

## 🔹 CREATE TABLE

Se utiliza para crear una nueva tabla en la base de datos.

---

## 🔹 SERIAL

Genera automáticamente un número incremental para cada registro.

Se usa normalmente para **identificadores únicos.** 

---

## 🔹 PRIMARY KEY

Identifica de forma única cada fila de la tabla.

No puede repetirse.

---

## 🔹 VARCHAR(100)

Tipo de dato para almacenar texto.

El número indica el máximo de caracteres permitidos.

---

## 🔹 NOT NULL

Indica que el campo no puede quedar vacío.

---

## 🔹 UNIQUE

Evita que se repitan valores en esa columna.

Ejemplo: emails.

---

## 🔹 DEFAULT 

Define un valor por defecto si no se especifica uno al insertar datos.

---



