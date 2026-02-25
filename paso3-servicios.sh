#!/bin/bash
read -p "Introduce el nombre EXACTO del proyecto que habías creado: " nombre

cd "$nombre"/src/app

ng generate service services/servicioRecursos

rm -fr services/servicio-recursos.spec.ts
