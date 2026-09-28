# Base de datos del sistema

La base de datos utiliza MySQL 8 y el motor InnoDB.

## Orden de ejecucion

1. Ejecutar `schema.sql`.
2. Ejecutar `seed.sql`.
3. Ejecutar las consultas de `queries.sql`.

## Archivos

- `schema.sql`: crea la base, las tablas, las claves y los indices.
- `seed.sql`: inserta datos de prueba.
- `queries.sql`: contiene consultas, actualizaciones y borrado controlado.
- `dbdiagram.dbml`: modelo para importar en dbdiagram.io.

## Diagrama

Importar `dbdiagram.dbml` en [dbdiagram.io](https://dbdiagram.io/). Luego exportar el modelo como PNG para incorporarlo al informe del TP2.

El modelo usa tablas con claves primarias y foraneas. Representa un modelo entidad-relacion relacional con cardinalidades. No reemplaza el modelo SQL: ambos deben mantenerse alineados.
