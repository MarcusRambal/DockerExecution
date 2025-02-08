#!/bin/bash

REPO_URL="https://github.com/MarcusRambal/DockerScripts.git"
APP_DIR="app"


if [ ! -d "$APP_DIR" ]; then
    echo "Clonando el repositorio..."
    git clone "$REPO_URL" "$APP_DIR"
else
    echo "El repositorio ya existe. Actualizando..."
    cd "$APP_DIR"
    git pull origin main
    cd ..
fi


echo "Iniciando los contenedores..."
docker-compose up --build
