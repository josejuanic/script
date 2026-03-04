import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Bandera } from './bandera.component';

describe('Bandera', () => {
  let component: Bandera;
  let fixture: ComponentFixture<Bandera>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Bandera]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Bandera);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
