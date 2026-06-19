# Penca Mundial 2026

## Descripción

Sistema web desarrollado en Python utilizando Flask y MySQL para la gestión de una penca del Mundial 2026.

Permite:

* Registro de usuarios
* Inicio de sesión
* Roles de administrador y usuario
* Visualización de selecciones participantes
* Visualización de partidos
* Ingreso de pronósticos
* Carga de resultados oficiales
* Cálculo automático de puntajes
* Ranking de participantes

---

## Requisitos

* Python 3.13 o superior
* MySQL Server
* Librerías indicadas en requirements.txt

---

## Instalación

### 1. Crear la base de datos

Ejecutar el archivo:

BD_Penca_Mundial_2026_Cs.sql

Esto creará la base de datos y las tablas necesarias.

---

### 2. Configurar la conexión

Editar el archivo:

config.py

y configurar los datos de conexión:

DB_HOST = "localhost"
DB_USER = "root"
DB_PASSWORD = "SU_CONTRASEÑA"
DB_NAME = "penca_mundial"

---

### 3. Instalar dependencias

Abrir una terminal en la carpeta del proyecto y ejecutar:

pip install -r requirements.txt

---

### 4. Importar datos iniciales

Ubicar el archivo:

mundial2026_pencas_completada.xlsx

en la carpeta correspondiente del proyecto.

Luego ejecutar:

python importar_excel.py

Esto cargará automáticamente:

* Selecciones participantes
* Partidos del Mundial

---

### 5. Ejecutar la aplicación

python app.py

La aplicación estará disponible en:

http://127.0.0.1:5000

---

## Usuario Administrador

Usuario:

admin

Contraseña:

admin123

---

## Funcionalidades del Administrador

* Visualizar usuarios registrados
* Cargar resultados oficiales
* Calcular puntajes
* Visualizar ranking

---

## Funcionalidades del Usuario

* Registrarse
* Iniciar sesión
* Visualizar partidos
* Ingresar pronósticos
* Consultar ranking

---

## Video Demo del Proyecto
https://drive.google.com/drive/folders/1tqpOFb2BI6F3adXzA59-piVGwr1pUh6n?usp=sharing

---

## Estructura del Proyecto

PencaMundial2026/

├── app.py

├── config.py

├── requirements.txt

├── BD_Penca_Mundial_2026_Cs.sql

├── importar_excel.py

├── templates/

├── static/

├── utils/

└── excel/

---

## Autores

José Ignacio Illanes, Juan Sebastián Bernal, Luca Nochera, Joaquin Da rosa

Licenciatura en informatica - Universidad catolica del Uruguay

Clases Ciencias de la computación

Proyecto Universitario

Penca Mundial 2026
