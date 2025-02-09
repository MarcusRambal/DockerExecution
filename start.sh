#!/bin/bash

REPO_URL="https://github.com/MarcusRambal/DockerScripts.git"
APP_DIR="app"
OUTPUT_DIR="outputs"

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

sleep 2

echo -e "\n======= RESULTADOS ======="
echo -e " Lenguaje    |  Tiempo (ms) "
echo -e "--------------------------"

function mostrar_resultado() {
    local lang=$1
    local file="$OUTPUT_DIR/${lang}_output.txt"

    if [[ -f "$file" ]]; then
        tiempo=$(grep -oE "[0-9]+\.[0-9]+" "$file")
        printf " %-10s | %s ms\n" "$lang" "$tiempo"
    else
        printf " %-10s | %s\n" "$lang" "No disponible"
    fi
}

mostrar_resultado "c"
mostrar_resultado "python"
mostrar_resultado "javascript"
mostrar_resultado "ruby"
mostrar_resultado "go"

echo -e "--------------------------\n"
