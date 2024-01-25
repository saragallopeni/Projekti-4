import { Component, OnInit } from '@angular/core';
import { KrijoeventinService } from '../sevice/krijoeventin.service';
import { SafeUrl, DomSanitizer } from '@angular/platform-browser';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  event: any;
  eventPhoto: SafeUrl = '';
  events: any[] = [];

  constructor(private eventService: KrijoeventinService, private sanitizer: DomSanitizer, private router: Router) {}

  ngOnInit(): void {
    this.eventService.merrEventin().subscribe(
      (data) => {
        this.events = data;
        console.log('this.events:', this.events);
      }
    );
  }

  setEventPhoto() {
    if (this.event && this.event.photo) {
      this.eventPhoto = this.sanitizer.bypassSecurityTrustUrl('data:image/jpg;base64,' + this.event.photo);
    }
  }


}
