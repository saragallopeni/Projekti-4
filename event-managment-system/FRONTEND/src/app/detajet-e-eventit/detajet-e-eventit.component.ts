import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { KrijoeventinService } from '../sevice/krijoeventin.service';

@Component({
  selector: 'app-detajet-e-eventit',
  templateUrl: './detajet-e-eventit.component.html',
  styleUrls: ['./detajet-e-eventit.component.scss']
})
export class DetajetEEventitComponent implements OnInit {
  eventDetails: any;

  constructor() {}
  
  ngOnInit() {

  }
}
