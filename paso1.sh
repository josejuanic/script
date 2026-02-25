#!/bin/bash

#mensajito de bienvenida cordial y diplomatica
echo "Saludo diplomático: Buenos días subnormales"
echo "Dale matarile miniño"

#para que lea el nombre que quieres poner el proyecto
read -p "Introduce el nombre de tu proyecto: " nombre

#crea el proyecto
ng new "$nombre"

echo "Proyecto creado, mira a ver si hay que hacer push"
echo "Siguiente paso será: Crear las carpetas"
read -p "Pulsa enter para continuar" nada

#accede al proyecto
cd "$nombre"/src/app

#crear las carpetas como nos explicó el generoso
mkdir -p {components,services,models,utils,pipes,interceptors,views}

echo "Carpetas creadas, mira a ver si hay que hacer push"
echo "Siguiente paso será: Generar los componentes pie y cabecera"
read -p "Pulsa enter para continuar" nada 

#generar los componentes
ng generate component components/cabecera
ng generate component components/pie

#borramos los archivos spec que dijo que nanai de la china
rm -fr components/cabecera/cabecera.spec.ts
rm -fr components/pie/pie.spec.ts

#borramos del app.html todo menos el router outlet
echo "ESTO MARCHA! MINIÑO!" >app.html
echo "<router-outlet/>" >> app.html

#ya hemos hecho todas las movidas iniciales y ahora vamos a darle
echo " ________________________________________________________________"
echo "|                                                                |"
echo "| pincha en el enlace y te tiene que salir la pagina vacia       |"
echo "| a partir de aquí abre Visual y la carpeta del proyecto         |"
echo "| y ejecuta el siguiente.sh                                      |"
echo "| esta se quedara \"sirviendo\"                                  |"
echo "|________________________________________________________________|"

ng serve

