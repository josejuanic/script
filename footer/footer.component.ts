import { Component, Input, OnChanges, SimpleChanges } from '@angular/core';

@Component({
  selector: 'app-footer',
  standalone: true,
  imports: [],
  templateUrl: './footer.component.html',
  styleUrl: './footer.component.css',
})
export class Footer {
  @Input() unidad: string = 'Ejercito de Tierra';
  @Input() version: string = '1.0';
}
