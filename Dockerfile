# Usa una imagen base oficial de Python como punto de partida
FROM python:3.8-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos 'requirements.txt' y 'app.py' al directorio de trabajo
COPY requirements.txt app.py ./

# Instala las dependencias de Python especificadas en 'requirements.txt'
RUN pip install --no-cache-dir -r requirements.txt

# Informa a Docker que el contenedor escuchará en el puerto 8080
EXPOSE 8080

# Define el comando que se ejecutará cuando se inicie el contenedor
CMD ["python", "app.py"]