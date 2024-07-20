# Contenedores
# Servicio Rest API de Predicción

Este repositorio contiene el código fuente para un servicio REST API que simula el uso de un modelo de predicción. Está configurado para ejecutarse en un contenedor Docker.

## Información del Servicio

Este servicio REST API está diseñado para simular el uso de un modelo de predicción. Se implementa utilizando Flask y está configurado para ejecutarse en un contenedor Docker. La API proporciona varios endpoints para interactuar con el modelo de predicción.

## Requerimientos

- Docker
- Docker Compose (opcional)

## Instalación

### Paso 1: Clonar el Repositorio

```sh
git clone https://github.com/tu_usuario/tu_repositorio.git
cd tu_repositorio
Construye la imagen Docker:

sh
Copiar código
docker build -t my_prediction_service .
Ejecuta el contenedor Docker:

sh
Copiar código
docker run -d -p 5000:5000 my_prediction_service
El servicio estará disponible en http://localhost:5000.

Uso (Producción)
Endpoints
Página de Bienvenida
URL: /
Método: GET
Descripción: Muestra una página de bienvenida.
Respuesta:
json
Copiar código
{
  "message": "Bienvenido a My Prediction Service"
}
Predicción
URL: /predict
Método: POST
Descripción: Realiza una predicción basada en los datos proporcionados.
Cuerpo de la Solicitud:
json
Copiar código
{
  "input_data": [1.0, 2.0, 3.0]
}
Respuesta:
json
Copiar código
{
  "prediction": 42.0
}
Ejemplo de Uso
Realizar una Predicción
sh
Copiar código
curl -X POST http://localhost:5000/predict -H "Content-Type: application/json" -d '{"input_data": [1.0, 2.0, 3.0]}'
Página de Bienvenida
sh
Copiar código
curl http://localhost:5000/
Uso (Desarrollo)
Para desarrollar y probar el servicio localmente sin Docker, sigue estos pasos:

Asegúrate de tener Python y pip instalados en tu máquina.

Instala las dependencias del proyecto:

sh
Copiar código
pip install -r requirements.txt
Ejecuta el servicio:

sh
Copiar código
python app/main.py
El servicio estará disponible en http://localhost:5000.
