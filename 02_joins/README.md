# 🔗 Módulo 02 — JOINs en SQL
En bases de datos reales la información **no se almacena en una sola tabla.**
Los datos se organizan en **múltiples tablas relacionadas** para evitar duplicación y mantener una estructura eficiente.

Para poder consultar información que se encuentra en varias tablas utilizamos **JOINs.**

Los **JOINs** permiten combinar datos de dos o más tablas basándose en una relación común entre ellas.

Este concepto es fundamental para cualquier desarrollador que trabaje con:

 - Backend

 - Data Analysis

 - Data Engineering

 - Sistemas empresariales

---
# 🎯 Objetivo del módulo
Al finalizar este módulo deberías ser capaz de:
Comprender cómo se relacionan las tablas en una base de datos relacional

 - Utilizar claves primarias y claves foráneas

 - Combinar información de múltiples tablas usando JOIN

 - Comprender los diferentes tipos de JOIN

 - Escribir consultas SQL más complejas utilizadas en aplicaciones reales. 

---

# 📁 Estructura del módulo
```
02_joins
|
├── README.md
├── create_tables.sql
├── insert_data.sql
└── consultas_join.sql
``` 
Descripción:

 - **create_tables.sql** → creación de tablas relacionadas

 - **insert_data.sql** → datos de prueba

 - **consultas_join.sql** → consultas con JOIN 
---

# 💻 Flujo de trabajo recomendado
 1. Crear las tablas

      - *create_tables.sql*

 2. Insertar datos

     - *insert_data.sql*

 3. Ejecutar consultas JOIN

     - *consultas_join.sql*

Todo el desarrollo puede realizarse desde **VSCode**, utilizando extensiones como **SQLTools**, mientras que herramientas como **pgAdmin** pueden utilizarse para visualizar la estructura de la base de datos.

---

# 🚀 Importancia de JOIN en desarrollo real
Los JOIN son esenciales para trabajar con sistemas reales como:
plataformas de comercio electrónico

 - sistemas de gestión empresarial

 - aplicaciones web

 - análisis de datos

Dominar JOIN permite construir consultas más avanzadas y comprender cómo interactúan los datos dentro de una base de datos relacional.

---

# 🧠 ¿Qué es un JOIN?
Un **JOIN** es una operación en SQL que permite **combinar filas de dos o más tablas** utilizando una columna relacionada entre ellas.

Generalmente esta relación se establece mediante:
 - **Primary Key (PK)**

 - **Foreign Key (FK)** 

Ejemplo conceptual:
```
usuario
|
|--- id (PRIMARY KEY)
|--- nombre 
|--- email 

pedidos
|
|--- id
|--- usuario_id (FOREIGN KEY)
|--- producto
|___ presio
``` 
En este caso:
```
usuarios.id ←→ pedidos.usuario_id

``` 
Esto significa que cada pedido pertenece a un usuario.

# 🗄 Ejemplo de tablas relacionadas
## Tabla usuarios

```
|---------------------|
|    *id*  | *nombre* |
|---------------------|
|     1    |  Carlos  |
|     2    | Laura    |
|     3    | Andrea   |
|     4    | Pedro    |
|---------------------| 

``` 
## Tabla pedidos

```
|-------------------------|----------|
|    id    | usuario_id   | producto |
|-------------------------|----------|
|     1    |      1       |  Laptop  |
|     2    |      1       |  Mouse   |
|     3    |      2       | Teclado  |
|     4    |      3       | Monitor  |
|------------------------------------| 

``` 

Aquí podemos observar que:

 - Carlos tiene 2 pedidos

 - Laura tiene 1 pedido

 - Pedro no tiene pedidos

Para obtener información combinada utilizamos **JOIN.**

---

# 🔑 Tipos de JOIN más utilizados

SQL proporciona varios tipos de JOIN para combinar tablas dependiendo del resultado que queremos obtener.

Los más importantes son:

 - **INNER JOIN**

 - **LEFT JOIN**

 - **RIGHT JOIN**

 - **FULL JOIN**

Estos cuatro tipos cubren la mayoría de los casos utilizados en desarrollo backend y análisis de datos.

---

## 1️⃣ INNER JOIN

El **INNER JOIN** devuelve solo las filas que tienen coincidencias en ambas tablas.

Ejemplo:

```
SELECT usuarios.nombre, pedidos.producto 
FROM usuarios 
INNER JOIN pedidos 
ON usuarios.id = pedidos.usuario_id;
``` 

Resultado:

|nombre | producto |
|------------------|
| Carlos| Laptop   |
| Carlos| Mouse    |
| Laura | Teclado  |

Los usuarios sin pedidos **no aparecen en el resultado.**

---
## 2️⃣ LEFT JOIN
El **LEFT JOIN** devuelve:

 - Todos los registros de la **tabla izquierda**

 - Coincidencias de la tabla derecha

Si no hay coincidencia, se muestran valores **NULL.**

Ejemplo:

```
ELECT usuarios.nombre, pedidos.producto 
FROM usuarios 
LEFT JOIN pedidos 
ON usuarios.id = pedidos.usuario_id;
``` 

Resultado:
|nombre | producto |
|------------------|
| Carlos| Laptop   |
| Carlos| Mouse    |
| Laura | Teclado  |
| Pedro | NULL     |

Esto permite ver usuarios sin pedidos.

---
## 3️⃣ RIGHT JOIN
El **RIGHT JOIN** devuelve:

Todos los registros de la tabla derecha

Coincidencias de la tabla izquierda

Ejemplo:

```
SELECT usuarios.nombre, pedidos.producto 
FROM usuarios 
RIGHT JOIN pedidos 
ON usuarios.id = pedidos.usuario_id;
``` 
En la práctica profesional muchos equipos prefieren usar **LEFT JOIN** en lugar de **RIGHT JOIN** para mantener consistencia en las consultas.

---
 ## 4️⃣ FULL JOIN
 El **FULL JOIN** devuelve todos los registros de ambas tablas.

Si una fila no tiene coincidencia en la otra tabla, se rellena con **NULL.**

Ejemplo:
```
SELECT usuarios.nombre, pedidos.producto 
FROM usuarios 
FULL JOIN pedidos 
ON usuarios.id = pedidos.usuario_id;
``` 
Esto permite visualizar todas las relaciones posibles entre ambas tablas.

---

# 🧩 Claves importantes en relaciones
## 🔹 Primary Key (PK)
Identifica de forma única cada registro de una tabla.

Ejemplo:
```
id SERIAL PRIMARY KEY
``` 
---
## 🔹 Foreign Key (FK)
Es una columna que referencia la clave primaria de otra tabla, permitiendo crear relaciones entre tablas.

Ejemplo:
```
FOREIGN KEY (usuario_id) 
REFERENCES usuarios(id)
``` 




