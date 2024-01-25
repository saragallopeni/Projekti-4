// Your component
import { Component } from '@angular/core';
import { KrijoeventinService } from '../sevice/krijoeventin.service';
import { HttpResponse } from '@angular/common/http';

@Component({
  selector: 'app-krijimi-eventit',
  templateUrl: './krijimi-eventit.component.html',
  styleUrls: ['./krijimi-eventit.component.scss']
})
export class KrijimiEventitComponent {
  photo: File | null = null;  
  titulli: string = '';
  pershkrimi: string = '';
  status: string = '';
  nisja: string = ''; 
  perfundimi: string = '';
  start_registration: string = '';
  end_registration: string = '';
  kapaciteti: number = 0;
  mbajtja: string = '';
  mbajtjaEventit: string[] = ['Zgjedh menyren e mbajtjes','ONLINE','FIZIK'];
  vendndodhja: string = ''; 
  statusi: string[] = ['Zgjedh statusin', 'UPCOMING', 'ONGOING', 'FINISHED', 'CANCELLED'];

  constructor(private eventService: KrijoeventinService) {}

  onFileSelected(event: any) {
    const file: File = event.target.files[0];
    this.photo = file;
  }
  

  krijo() {
    const formData = new FormData();
     if (this.photo) {
      formData.append('photo', this.photo);
    }
    formData.append('titulli', this.titulli);
    formData.append('pershkrimi', this.pershkrimi);
    formData.append('status', this.status);
    formData.append('nisja', this.nisja); 
    formData.append('perfundimi', this.perfundimi); 
    formData.append('start_registration', this.start_registration);
    formData.append('end_registration', this.end_registration);
    formData.append('mbajtja', this.mbajtja);
    formData.append('kapaciteti', String(this.kapaciteti));    
    formData.append('vendndodhja', this.vendndodhja);
    this.eventService.krijoeventin(formData).subscribe(
      (response) => {
        console.log('Përgjigjja: ', response);
        alert('Eventi u krijua');
      }
    );
  }
}
