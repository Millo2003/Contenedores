# Use la imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de requerimientos y la aplicación
COPY requirements.txt requirements.txt
COPY app/ app/

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto que usará Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "main.py"]
