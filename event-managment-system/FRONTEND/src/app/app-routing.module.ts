import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { KrijimiEventitComponent } from './krijimi-eventit/krijimi-eventit.component';
import { DetajetEEventitComponent } from './detajet-e-eventit/detajet-e-eventit.component';

const routes: Routes = [
  {
    path:'',
    component: HomeComponent
  },
  {
    path:'krijoeventin',
    component: KrijimiEventitComponent
  },
  { path: 'event/:id', 
  component: DetajetEEventitComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
