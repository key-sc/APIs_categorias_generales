# Usa una imagen base de Node.js
FROM node:latest

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia el archivo de la colección y el de las variables de entorno
COPY APIs-CategoriaGeneral.postman_collection.json stage.postman_environment.json ./

# Instala Newman y el paquete de newman para reportes htmlextra
RUN npm install -g newman newman-reporter-htmlextra

#Copia el script de ejecución de pruebas
COPY scripts/run-tests.sh /usr/local/bin/run-tests.sh

# Da permisos de ejecución al script
RUN chmod +x /usr/local/bin/run-tests.sh

# Comando por defecto para ejecutar el script de pruebas
CMD ["run-tests.sh"]
