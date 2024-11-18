# vim dockerfile y PEGO

# Usa nginx como imagen base
#FROM nginx:latest

# Copia el archivo index.html modificado al directorio de nginx
#COPY index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80
#EXPOSE 80

# docker build -t candeiz/web1-candela -f web1-candela .

# docker images

# docker login -u usuario

# docker tag web1-apellidonombre usuariodocker/web1-apellidonombre

# docker push candeiz/web1-izquierdocandela

# vim run.sh y pegar:

# !/bin/bash

# Ejecutar la imagen Docker en el puerto 8080
# docker run -d -p 8080:80 candeiz/web1-izquierdocandela

# chmod +x run.sh

# ./run.sh

# docker ps

# curl localhost:8080
