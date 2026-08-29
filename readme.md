# Sistema de Gestión - Fundación María de Caná

Este repositorio contiene el prototipo funcional desarrollado para el **Trabajo Práctico 1 (TP1)** de la materia **Seminario de Práctica de Informática** (Universidad Siglo 21).

El proyecto consiste en un Sistema de Información de Apoyo a la Administración (MIS) diseñado para ayudar a la **Fundación María de Caná** a gestionar sus proyectos solidarios, realizar el seguimiento de hitos/tareas y visualizar métricas mediante un tablero de control (dashboard).

## 🛠️ Tecnologías Utilizadas

*   **Lenguaje:** Java (Aplicación de consola)
*   **Base de Datos:** MySQL
*   **Conexión:** JDBC (Java Database Connectivity)
*   **Arquitectura:** Patrón MVC (Modelo-Vista-Controlador)

## 📁 Estructura del Proyecto

El código está organizado siguiendo el patrón MVC para asegurar una alta cohesión y bajo acoplamiento:

*   `/config`: Configuración de la conexión a la base de datos MySQL.
*   `/models`: Entidades del sistema (Ej: `Proyecto.java`, `Usuario.java`).
*   `/controllers`: Lógica de negocio y consultas SQL (Ej: `ProyectoController.java`).
*   `/views`: Interfaz de usuario (consola interactiva en `Main.java`).
*   `database.sql`: Script completo para la creación de la base de datos, tablas y carga de datos de prueba.

## 🚀 Instrucciones de Ejecución

1. **Configurar la Base de Datos:**
   * Importa el archivo `database.sql` en tu motor MySQL local para crear la base de datos `fundacion_cana` y poblarla con los datos iniciales.

2. **Configurar la Conexión JDBC:**
   * Verifica que tienes el driver `mysql-connector-j` configurado en tu entorno.
   * Abre el archivo `config/ConexionDB.java` y ajusta las variables `USER` y `PASSWORD` según las credenciales de tu servidor local.

3. **Compilar y Ejecutar:**
   * Puedes abrir el proyecto desde tu IDE de Java favorito o compilarlo directamente desde la terminal.
   * Ejecuta la clase `views.Main` para iniciar el sistema interactivo por consola.

---
**Autor:** Matías Domínguez Alonso
**Materia:** Seminario de Práctica de Informática# Sistema de Gestión - Fundación María de Caná

Este repositorio contiene el prototipo funcional desarrollado para el **Trabajo Práctico 1 (TP1)** de la materia **Seminario de Práctica de Informática** (Universidad Siglo 21).

El proyecto consiste en un Sistema de Información de Apoyo a la Administración (MIS) diseñado para ayudar a la **Fundación María de Caná** a gestionar sus proyectos solidarios, realizar el seguimiento de hitos/tareas y visualizar métricas mediante un tablero de control (dashboard).

## 🛠️ Tecnologías Utilizadas

*   **Lenguaje:** Java (Aplicación de consola)
*   **Base de Datos:** MySQL
*   **Conexión:** JDBC (Java Database Connectivity)
*   **Arquitectura:** Patrón MVC (Modelo-Vista-Controlador)

## 📁 Estructura del Proyecto

El código está organizado siguiendo el patrón MVC para asegurar una alta cohesión y bajo acoplamiento:

*   `/config`: Configuración de la conexión a la base de datos MySQL.
*   `/models`: Entidades del sistema (Ej: `Proyecto.java`, `Usuario.java`).
*   `/controllers`: Lógica de negocio y consultas SQL (Ej: `ProyectoController.java`).
*   `/views`: Interfaz de usuario (consola interactiva en `Main.java`).
*   `database.sql`: Script completo para la creación de la base de datos, tablas y carga de datos de prueba.

## 🚀 Instrucciones de Ejecución

1. **Configurar la Base de Datos:**
   * Importa el archivo `database.sql` en tu motor MySQL local para crear la base de datos `fundacion_cana` y poblarla con los datos iniciales.

2. **Configurar la Conexión JDBC:**
   * Verifica que tienes el driver `mysql-connector-j` configurado en tu entorno.
   * Abre el archivo `config/ConexionDB.java` y ajusta las variables `USER` y `PASSWORD` según las credenciales de tu servidor local.

3. **Compilar y Ejecutar:**
   * Puedes abrir el proyecto desde tu IDE de Java favorito o compilarlo directamente desde la terminal.
   * Ejecuta la clase `views.Main` para iniciar el sistema interactivo por consola.

---
**Autor:** Matías Domínguez Alonso
**Materia:** Seminario de Práctica de Informática
