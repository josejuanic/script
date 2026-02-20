#!/bin/bash
read -p "Introduce el nombre EXACTO del proyecto que habías creado: " nombre

cd "$nombre"/src/app

echo "De momento no he hecho nah pero mira a ver si hay que hacer push"
echo "Siguiente paso será: configurar la cabecera y el pie"
read -p "Pulsa enter para continuar" nada 

echo "CONFIGURANDO LAS CABECERAS Y PIE"

#Modificamos el archivo app.html
echo "<app-cabecera> </app-cabecera>" > app.html
echo "<router-outlet/>" >> app.html
echo "<app-pie> </app-pie>" >> app.html

# Sobrescribimos el archivo app.ts con las importaciones
echo "import { Component, signal } from '@angular/core';" > app.ts
echo "import { RouterOutlet } from '@angular/router';" >> app.ts
echo "import { Cabecera } from './components/cabecera/cabecera';" >> app.ts
echo "import { Pie } from './components/pie/pie';" >> app.ts
echo "" >> app.ts # Línea en blanco
echo "@Component({" >> app.ts
echo "  selector: 'app-root'," >> app.ts
echo "  imports: [RouterOutlet, Cabecera, Pie]," >> app.ts
echo "  templateUrl: './app.html'," >> app.ts
echo "  styleUrl: './app.css'," >> app.ts
echo "})" >> app.ts
echo "export class App {" >> app.ts
echo "  protected readonly title = signal('$nombre');" >> app.ts
echo "}" >> app.ts



echo "HECHO"
echo "AHORA COMPRUEBA QUE EN EL NAVEGADOR PONE LAS MOVIDAS DE WORKS!"
echo "siguiente paso será: Darles formato bonico" 
echo "cuando lo compruebes y si aun no te has cagao encima"
read -p "pulsa enter para continuar" nada

echo "AHORA TOCA DARLE FORMATO A LAS CABECERAS Y PIES"

# Modificamos cabecera.html
echo "<header id=\"titulo\">TITULO DE LA PAGINA WEB</header>" > components/cabecera/cabecera.html

# Modificamos pie.html
echo "<header id=\"titulo\">PIE</header>" > components/pie/pie.html

#Modificamos cabecera.css
echo "#titulo{" > components/cabecera/cabecera.css
echo "	background-color: navy;" >> components/cabecera/cabecera.css
echo "  width: 100%;" >> components/cabecera/cabecera.css
echo "  height: 100px;" >> components/cabecera/cabecera.css
echo "  padding: 10px;" >> components/cabecera/cabecera.css
echo "}">> components/cabecera/cabecera.css

#Modificamos pie.html
echo "<footer> PIE DE PAGINA </footer>" > components/pie/pie.html

#Modificamos pie.css
echo "footer{" > components/pie/pie.css
echo "	background-color: red;" >>components/pie/pie.css
echo "	width: 100%;" >>components/pie/pie.css
echo "	height: 100px;" >>components/pie/pie.css
echo "  padding: 10px;" >>components/pie/pie.css
echo "}" >>components/pie/pie.css
echo "HECHO"
echo "Quitamos las movidas de los margenes raros que salían"
echo "body {" > ../styles.css
echo "	margin:0%;" >>../styles.css
echo "}">>../styles.css
echo "HECHO"
echo "Cabecera y cuerpo con formato bonico, mira a ver si hay que hacer push"
echo "Siguiente paso será: Formato al cuerpo"
read -p "pulsa enter para continuar" nada

echo "AHORA VAMOS A DARLE FORMATO AL CUERPO"
# Modificamos el archivo app.html para meter el cuerpo principal
echo "<app-cabecera> </app-cabecera>" >app.html
echo "<main class=\"cuerpo-principal\">" >>app.html
echo "<router-outlet/>" >> app.html
echo "</main>" >> app.html
echo "<app-pie> </app-pie>" >> app.html

# Modificamos el archivo app.css para darle formato al cuerpo
echo "main{" > app.css
echo "	height: calc(100vh - 200px)" >>app.css
echo "}" >>app.css
echo "HECHO"

echo "ahora vamos a hacer la cabecera reutilizable"
read -p "pulsa enter para continuar" nada

# Modificamos el archivo cabecera.html para meter el titulo dinámico
echo  "<header id=\"titulo\"> {{titulo}} </header>" > components/cabecera/cabecera.html

# Modificamos el archivo cabecera.ts para meter el input del titulo
# _________________________________________________________________________________________________________________
# Se usa el comando SED porque echo no es capaz de meter una linea concreta en un sitio concreto de un archivo.    |
# O lo pone al final o lo sobrescribe todo. Y así es menos gaita.                                                  |
# La sintaxis de sed es:                                                                                           |
# -i: para decir que lo edite directamente en el archivo.                                                          |
# 10c\: para decir que cambie la línea 10 por lo que viene a continuación.                                         |
# Para añadir justo una linea despues de la linea 10 se usaría 10a\ en vez de 10c\. a de añadir y c de cambiar.    |
# Para retrasados vamos                                                                                            |
# y por ultimo se pone el nombre del archivo a modificar.                                                          |
#------------------------------------------------------------------------------------------------------------------|

sed -i "10c\  @Input() titulo: string = \"TITULO DE LA PAGINA WEB\";" components/cabecera/cabecera.ts
sed -i "1c\import { Component, Input } from '@angular/core';" components/cabecera/cabecera.ts

# Modificamos el archivo app.html para meter el titulo dinámico
sed -i "1c\<app-cabecera titulo="Mi Página Web"></app-cabecera>" app.html

# Modificamos el archivo app.ts para meter el titulo dinámico
sed -i "13c\  title: string = 'Mi proyecto en Angular';" app.ts

# Modificamos el archivo app.html para meter el titulo dinámico a través de la variable del app.ts
sed -i "1c\<app-cabecera [titulo]="title"> </app-cabecera>" app.html

echo "HECHO"
echo "Ahora el título de la cabecera es dinámico,"
echo "es decir el titulo de la cabecera se cambia en app.ts y se puede jugar con el"
echo "se manda el titulo a la cabecera a través de un input y luego se lo trae al html dentro del componente cabecera con {{titulo}}"
echo "En fin, movidas chungas mazo de tochas"
echo "mira a ver si hay que hacer push"

echo "Siguiente paso será: Hacer una lista"
echo "Espero que hayas traido rosario"
read -p "pulsa enter para continuar" nada

# Ahora vamos a crear un nuevo componente que es una lista
ng generate component components/item-lista
rm -fr components/item-lista/item-lista.spec.ts

# Modificamos el archivo item-lista.ts para meter el input del elemento de la lista
sed -i "1c\import { Component, Input } from '@angular/core';" components/item-lista/item-lista.ts
sed -i "10c\  @Input() elemento:string = '';" components/item-lista/item-lista.ts

# Modificamos el archivo item-lista.html para meter el formato de la lista
echo "<ul>" > components/item-lista/item-lista.html
echo "    <li>{{elemento}}</li>" >> components/item-lista/item-lista.html
echo "</ul>" >> components/item-lista/item-lista.html

# Modificamos el archivo app.html para meter un elemento de la lista
sed -i "2a\    <app-item-lista elemento=\"Mi nuevo elemento\"></app-item-lista>" app.html

# Modificamos el archivo app.ts para meter un array de elementos de la lista y luego mostrarlo en el html
sed -i "8c\  imports: [RouterOutlet, Cabecera, Pie, ItemLista]," app.ts
sed -i "4a\ import { ItemLista } from './components/item-lista/item-lista';" app.ts
sed -i "14a\   elementos: string[] = ['Elemento 1', 'Elemento 2', 'Elemento 3']; " app.ts

# Modificamos el archivo app.html para mostrar la lista de elementos usando un *ngFor
sed -i "2a\ @for (elemento of elementos; track elemento) {" app.html
sed -i "4c\     <app-item-lista [elemento]="elemento"></app-item-lista>" app.html
sed -i "4a\ }" app.html

echo "HECHO"
echo "Ahora hemos creado un nuevo componente que es una lista"
echo "Siguiente paso será: Pues aun no lo se, pero mira a ver si hay que hacer push"
read -p "pulsa enter para continuar" nada