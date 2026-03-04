import {
  Component,
  ElementRef,
  ViewChild,
  Input,
  OnChanges,
  SimpleChanges,
  Output,
  EventEmitter,
} from '@angular/core';

import { Bandera } from '../bandera/bandera.component';
import { RouterModule } from '@angular/router';

@Component({
  selector: 'app-cabecera',
  standalone: true,
  templateUrl: './cabecera.component.html',
  styleUrl: './cabecera.component.css',
  imports: [Bandera, RouterModule],
})
export class Cabecera {
  @Input() titulo: string = 'Panacea';
  @Input() unidad: string = 'Ejército de Tierra';
  @Output() menuClick = new EventEmitter<void>();
  url: string = 'https://ejercito.defensa.gob.es/';

  onMenuClick() {
    this.menuClick.emit();
  }
}
