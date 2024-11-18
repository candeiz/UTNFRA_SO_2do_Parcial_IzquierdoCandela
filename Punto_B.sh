#!/bin/bash

# Obtener el usuario de referencia y el archivo de lista de usuarios
USUARIO_REF="$1"
LISTA_USUARIOS="$2"

# Verificar si el archivo de usuarios existe
if [ ! -f "$LISTA_USUARIOS" ]; then
    echo "Error: El archivo '$LISTA_USUARIOS' no existe o no es un archivo válido."
    exit 1
fi

# Obtener la contraseña del usuario de referencia
CLAVE_USUARIO=$(grep "$USUARIO_REF" /etc/shadow | awk -F ':' '{print $2}')

# Verificar si se obtuvo la contraseña
if [ -z "$CLAVE_USUARIO" ]; then
    echo "Error: No se pudo obtener la contraseña del usuario '$USUARIO_REF'."
    exit 1
fi

# Leer el archivo de usuarios
while IFS=, read -r USUARIO GRUPO HOME_USER || [ -n "$USUARIO" ]; do
    # Eliminar posibles espacios al inicio y final de cada campo
    USUARIO=$(echo "$USUARIO" | xargs)
    GRUPO=$(echo "$GRUPO" | xargs)
    HOME_USER=$(echo "$HOME_USER" | xargs)

    # Ignorar líneas vacías o comentarios
    if [[ -z "$USUARIO" || "$USUARIO" =~ ^# ]]; then
        continue
    fi


    # Crear el grupo si no existe
    if ! getent group "$GRUPO" > /dev/null 2>&1; then
	echo "Creando grupo '$GRUPO'..."
	sudo groupadd "$GRUPO"
    else
	echo "El grupo '$GRUPO' ya existe."
    fi

    # Crear el directorio home si no existe
    if [ ! -d "$HOME_USER" ]; then
	echo "Creando directorio home '$HOME_USER'..."
	sudo mkdir -p "$HOME_USER"
	sudo chown "$USUARIO:$GRUPO" "$HOME_USER"
    else
	echo "El directorio home '$HOME_USER' ya existe."
    fi

    # Crear el usuario
    if ! id "$USUARIO" > /dev/null 2>&1; then
	echo "Creando usuario '$USUARIO'..."
	sudo useradd -m -d "$HOME_USER" -g "$GRUPO" -p "$(openssl passwd -1 'Contraseña123')" "$USUARIO"
    else
	echo "El usuario '$USUARIO' ya existe."
    fi

done < "$LISTA_USUARIOS"

echo "Proceso completado."
