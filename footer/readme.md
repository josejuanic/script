# Componente Footer

El componente **Footer** muestra un pie de página con el logo del Ministerio de Defensa, el nombre completo de la unidad (ejemplo: "Ejército de Tierra") y la versión de la aplicación. El color de fondo y el nombre completo de la unidad se actualizan dinámicamente según el valor de la propiedad `unidad`.

## Descripción

Este componente se utiliza para mostrar un pie de página con información básica sobre la unidad y la versión de la aplicación. El color de fondo y el nombre completo de la unidad se configuran automáticamente según el valor de la propiedad `unidad`.

---

## Inputs

### `unidad: string`
- **Descripción:** Nombre corto de la unidad (por ejemplo, 'Tierra', 'Mar', 'Aire'). Esto determinará los detalles de la unidad (nombre completo, color de fondo) que se muestran en el pie de página.
- **Tipo:** `string`
- **Valor por defecto:** `'Tierra'`
- **Ejemplo:**
  ```typescript
  unidad = 'Aire';
  ```

### `version: string`
- **Descripción:** Versión de la aplicación que se mostrará en el pie de página.
- **Tipo:** `string`
- **Valor por defecto:** `'1.0'`
- **Ejemplo:**
  ```typescript
  version = '2.1';
  ```

---

## Métodos

### `ngOnChanges(changes: SimpleChanges)`
- **Descripción:** Método que se ejecuta cuando uno de los `Inputs` del componente cambia. Actualiza el color de fondo y el nombre completo de la unidad en función del valor de `unidad`.

---

## Uso

### Paso 1: Importar el componente

Para usar el componente **Footer**, debes importarlo en el módulo adecuado.

```typescript
import { Footer } from './footer.component';
```

Asegúrate de que el componente esté incluido en la lista de `declarations` de tu módulo.

### Paso 2: Incluir el componente en tu template

Una vez importado, puedes usar el componente en tu template HTML:

```html
<app-footer
  [unidad]="'Aire'"
  [version]="'2.1'">
</app-footer>
```

---

## Estilos y Personalización

Este componente usa clases CSS predeterminadas para la estructura del pie de página. Puedes personalizar los estilos modificando el archivo `footer.component.css`. Además, puedes ajustar el color de fondo a través de la propiedad `unidad`, que actualizará el valor de `backgroundColor`.

---

## Notas

- El componente utiliza el mapa `UNIDAD_MAP` para determinar los detalles de la unidad, como el color de fondo y el nombre completo, basándose en la propiedad `unidad`. Si no se encuentra la unidad, se utiliza la configuración predeterminada de `'Tierra'`.
- Este componente es **standalone**, por lo que no requiere de módulos adicionales para su funcionamiento, pero depende de `CommonModule`.

--