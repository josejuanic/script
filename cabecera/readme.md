# Componente Cabecera

El componente **Cabecera** proporciona una barra de navegación con un título dinámico, un menú lateral y un buscador opcional. Está diseñado para ser reutilizado en diferentes partes de la aplicación, con opciones de personalización para la unidad, el color de fondo y el menú de navegación.

## Descripción

Este componente se utiliza para mostrar una cabecera con un logo, el nombre de la unidad (ejemplo: "Ejército de Tierra"), un título configurable y un buscador opcional. También incluye un menú lateral que puede abrirse o cerrarse, y una serie de elementos de navegación.

## Funcionalidad

1. **Unidad dinámica:** La unidad (Ejército, Armada, etc.) y sus detalles (nombre completo, color de fondo, icono) se actualizan automáticamente según el valor de la propiedad `unidad`.
2. **Menú lateral:** El componente incluye un menú de navegación lateral que se puede abrir y cerrar al hacer clic en un ícono de lista.
3. **Buscador expandible:** Un campo de búsqueda que se puede expandir para permitir la introducción de texto de búsqueda.
4. **Interactividad:** El componente permite la interacción con el menú lateral y el buscador a través de métodos que alternan su visibilidad.

---

## Inputs

### `titulo: string`
- **Descripción:** Título que se mostrará en la cabecera.
- **Tipo:** `string`
- **Valor por defecto:** `'Título por defecto'`
- **Ejemplo:**
  ```typescript
  titulo = 'Mi Aplicación';
  ```

### `unidad: string`
- **Descripción:** Nombre corto de la unidad (por ejemplo, 'Tierra', 'Mar', 'Aire'). Esto determinará los detalles de la unidad (nombre completo, color, icono) que se muestran en la cabecera.
- **Tipo:** `string`
- **Valor por defecto:** `'Tierra'`
- **Ejemplo:**
  ```typescript
  unidad = 'Aire';
  ```

### `habilitarBusqueda: boolean`
- **Descripción:** Determina si se debe mostrar el campo de búsqueda o no en la cabecera.
- **Tipo:** `boolean`
- **Valor por defecto:** `true`
- **Ejemplo:**
  ```typescript
  habilitarBusqueda = false;
  ```

### `menuNavegacion: { icono: string; texto: string; enlace: string }[]`
- **Descripción:** Lista de objetos que definen los elementos del menú lateral, cada uno con un icono, texto y un enlace.
- **Tipo:** `Array<{ icono: string; texto: string; enlace: string }>`
- **Ejemplo:**
  ```typescript
  menuNavegacion = [
    { icono: 'bi-house', texto: 'Inicio', enlace: '/inicio' },
    { icono: 'bi-person', texto: 'Perfil', enlace: '/perfil' }
  ];
  ```

---

## Métodos

### `ngOnChanges(changes: SimpleChanges)`
- **Descripción:** Método que se ejecuta cuando uno de los `Inputs` del componente cambia. Actualiza los detalles de la unidad (nombre completo, color de fondo, icono) en función del valor de `unidad`.

### `toggleSearch()`
- **Descripción:** Alterna el estado de expansión del campo de búsqueda. Si se expande, da foco al input de búsqueda.
- **Uso:** Llamado al hacer clic en el ícono de búsqueda.
  
### `toggleMenu()`
- **Descripción:** Alterna la visibilidad del menú lateral.
- **Uso:** Llamado al hacer clic en el ícono de menú.

---

## Uso

### Paso 1: Importar el componente

Para usar el componente **Cabecera**, debes importarlo en el módulo adecuado.

```typescript
import { Cabecera } from './cabecera.component';
```

Asegúrate de que el componente esté incluido en la lista de `declarations` de tu módulo.

### Paso 2: Incluir el componente en tu template

Una vez importado, puedes usar el componente en tu template HTML:

```html
<app-cabecera
  [titulo]="'Mi Aplicación'"
  [unidad]="'Aire'"
  [habilitarBusqueda]="true"
  [menuNavegacion]="[
    { icono: 'bi-house', texto: 'Inicio', enlace: '/inicio' },
    { icono: 'bi-person', texto: 'Perfil', enlace: '/perfil' }
  ]">
</app-cabecera>
```

---

## Estilos y Personalización

Este componente usa Bootstrap para la mayoría de los estilos de la interfaz (íconos, botones, menús). Si deseas personalizar los estilos, puedes modificar la clase `cabecera.component.css`.

---

## Notas

- El componente **Cabecera** es **standalone**, por lo que no requiere de módulos adicionales para su funcionamiento, pero depende de `CommonModule` y `RouterModule`.
- El componente integra un icono y el nombre completo de la unidad, según un mapa de configuraciones (`UNIDAD_MAP`).
- El menú lateral se puede ocultar o mostrar mediante interacciones con los botones de menú.
- El campo de búsqueda se expande cuando el usuario hace clic en el ícono de búsqueda.
