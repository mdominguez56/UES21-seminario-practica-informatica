# Sistema de gestión de proyectos

Repositorio del proyecto académico desarrollado para la materia **Seminario de Práctica de Informática** de la Universidad Siglo 21.

El sistema está orientado a la Fundación María de Caná. Su objetivo es centralizar la gestión de proyectos solidarios, hitos, responsables, costos e indicadores de seguimiento.

## Trabajos prácticos

### TP1

El TP1 define el problema, los objetivos, el alcance, el conocimiento del negocio, los requisitos y los casos de uso del sistema.

### TP2

El TP2 desarrolla los siguientes aspectos:

- Aplicación del Proceso Unificado de Desarrollo (PUD).
- Diagramas UML de análisis, diseño e implementación.
- Prototipos visuales de interfaces orientadas a JavaFX.
- Modelo relacional de la base de datos.
- Diagrama entidad-relación.
- Scripts SQL de creación, inserción, consulta, actualización y borrado.
- Plan y casos de prueba.
- Definiciones de comunicación mediante JavaFX, JDBC y MySQL.
- Evidencias de ejecución de la base de datos.

## Tecnologías

- Java.
- JavaFX como tecnología prevista para las interfaces de escritorio.
- MySQL 8.
- JDBC (Java Database Connectivity).
- Arquitectura Modelo-Vista-Controlador (MVC).
- Docker para ejecutar MySQL de forma local.

## Estructura del repositorio

```text
.
├── database/
│   ├── schema.sql
│   ├── seed.sql
│   ├── queries.sql
│   ├── dbdiagram.dbml
│   ├── diagrama-entidad-relacion.png
│   └── README.md
├── tp2_capturas_sql/
│   ├── 01-tablas-creadas.png
│   ├── 02-datos-insertados.png
│   ├── 03-consulta-con-resultados.png
│   ├── 04-actualizacion-hito.png
│   └── 05-borrado-verificacion.png
├── ConexionDB.java
├── Main.java
├── Proyecto.java
├── ProyectoController.java
└── database.sql
```

## Base de datos

La base se denomina `fundacion_cana` y utiliza MySQL con el motor InnoDB.

El modelo incluye las tablas:

- `roles`.
- `usuarios`.
- `proyectos`.
- `hitos`.
- `asignaciones`.
- `costos`.

La documentación y los scripts se encuentran en [`database/`](database/).

### Orden de ejecución

1. Ejecutar [`database/schema.sql`](database/schema.sql).
2. Ejecutar [`database/seed.sql`](database/seed.sql).
3. Ejecutar las consultas de [`database/queries.sql`](database/queries.sql).

### Modelo entidad-relación

El modelo editable se encuentra en [`database/dbdiagram.dbml`](database/dbdiagram.dbml).

La imagen del diagrama se encuentra en [`database/diagrama-entidad-relacion.png`](database/diagrama-entidad-relacion.png).

## Ejecución con Docker

Crear el contenedor MySQL:

```bash
docker run --name fundacion-mysql \
  -e MYSQL_ROOT_PASSWORD=tp2demo \
  -p 3306:3306 \
  -d mysql:8.0
```

Ejecutar los scripts desde la raíz del repositorio:

```bash
docker exec -i fundacion-mysql mysql -uroot -ptp2demo < database/schema.sql
docker exec -i fundacion-mysql mysql -uroot -ptp2demo < database/seed.sql
docker exec -i fundacion-mysql mysql -uroot -ptp2demo < database/queries.sql
```

La contraseña `tp2demo` es solo para pruebas locales.

## Evidencias SQL

Las capturas utilizadas en el TP2 se encuentran en [`tp2_capturas_sql/`](tp2_capturas_sql/).

Incluyen evidencias de:

- Creación de tablas.
- Inserción de datos.
- Consulta con resultados.
- Actualización de un hito.
- Borrado controlado y verificación.

## Estado del prototipo

El prototipo Java actual permite registrar y listar proyectos mediante JDBC.

El diseño del TP2 define la evolución hacia:

- Autenticación por rol.
- Gestión de hitos.
- Asignación de responsables.
- Registro de costos.
- Tablero de control.
- Alertas por atraso y desvío presupuestario.
- Interfaces de escritorio JavaFX.

Las funciones diseñadas pero no implementadas se presentan como alcance futuro. No se consideran funcionalidades terminadas.

## Repositorio

Repositorio principal:

https://github.com/mdominguez56/UES21-seminario-practica-informatica

Carpeta de base de datos:

https://github.com/mdominguez56/UES21-seminario-practica-informatica/tree/main/database

## Autor

Matías Domínguez Alonso  
Materia: Seminario de Práctica de Informática
