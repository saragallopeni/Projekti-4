import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class KrijoeventinService {

  private apiUrl = 'http://localhost:3000';
  
  constructor(private http : HttpClient) { }

  krijoeventin(data: any): Observable<any>{
    return this.http.post<any>(`${this.apiUrl}/krijo`, data);
  }

  merrEventin(): Observable<any[]> {
    return this.http.get<any[]>(`${this.apiUrl}/event`);
  }

}


  
