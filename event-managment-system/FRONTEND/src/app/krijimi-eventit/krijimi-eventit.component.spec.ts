import { ComponentFixture, TestBed } from '@angular/core/testing';

import { KrijimiEventitComponent } from './krijimi-eventit.component';

describe('KrijimiEventitComponent', () => {
  let component: KrijimiEventitComponent;
  let fixture: ComponentFixture<KrijimiEventitComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [KrijimiEventitComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(KrijimiEventitComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
