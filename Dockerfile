# Dockerfile para Flask
FROM python:3.11-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar requisitos
COPY /requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación Antes era web/ .
COPY / .

EXPOSE 5000

CMD ["python", "app.py"]

