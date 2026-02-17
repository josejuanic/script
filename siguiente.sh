#!/bin/bash
read -p "Introduce el nombre EXACTO del proyecto que habías creado: " nombre

cd "$nombre"/src/app

echo "De momento no he hecho nah pero mira a ver si hay que hacer push"
echo "Siguiente paso será: configurar la cabecera y el pie"
read -p "Pulsa enter para continuar" nada 

echo "CONFIGURANDO LAS CABECERAS Y PIE"

echo "<app-cabecera> </app-cabecera>" > app.html
echo "<router-outlet/>" >> app.html
echo "<app-pie> </app-pie>" >> app.html

# Sobrescribimos el archivo app.ts y el app.component.ts con las importaciones
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
echo "<header id=\"titulo\">TITULO DE LA PAGINA WEB</header>" > components/cabecera/cabecera.html
echo "<header id=\"titulo\">PIE</header>" > components/pie/pie.html
echo "#titulo{" > components/cabecera/cabecera.css
echo "	background-color: navy;" >> components/cabecera/cabecera.css
echo "  width: 100%;" >> components/cabecera/cabecera.css
echo "  height: 100px;" >> components/cabecera/cabecera.css
echo "  padding: 10px;" >> components/cabecera/cabecera.css
echo "}">> components/cabecera/cabecera.css
echo "<footer> PIE DE PAGINA </footer>" > components/pie/pie.html
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
echo "<app-cabecera> </app-cabecera>" >app.html
echo "<main class=\"cuerpo-principal\">" >>app.html
echo "<router-outlet/>" >> app.html
echo "</main>" >> app.html
echo "<app-pie> </app-pie>" >> app.html
echo "main{" > app.css
echo "	height: calc(100vh-200px)" >>app.css
echo "}" >>app.css
echo "HECHO"

read -p "pulsa enter para continuar" nada


