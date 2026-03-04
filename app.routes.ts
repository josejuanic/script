import { Routes } from '@angular/router';
import { Activaciones } from './views/activaciones/activaciones';
import { Recursos } from './views/recursos/recursos';

 export const routes: Routes = [
    {
        path: 'recursos',
        component: Recursos
    },
    {
        path: 'activaciones',
        component: Activaciones
    },
    {
        path: '',
        redirectTo: 'recursos',  //ante la nada dirige a recursos
        pathMatch: 'full',
    },
    {
        path: '**',
        redirectTo: 'recursos'   //ante el fallo dirige a recursos
    }
];
