#!/bin/bash

# Directorio donde se guardarán los reportes
REPORT_DIR=/usr/src/app/reports

# Crea el directorio de reportes si no existe
mkdir -p $REPORT_DIR

# Ejecuta las pruebas con Newman y genera el reporte
newman run APIs-CategoriaGeneral.postman_collection.json --environment stage.postman_environment.json --reportes cli,htmlextra --reporter-htmlextra-export $REPORT_DIR/report.html
