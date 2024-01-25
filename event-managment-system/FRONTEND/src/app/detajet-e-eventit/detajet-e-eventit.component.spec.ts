import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DetajetEEventitComponent } from './detajet-e-eventit.component';

describe('DetajetEEventitComponent', () => {
  let component: DetajetEEventitComponent;
  let fixture: ComponentFixture<DetajetEEventitComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [DetajetEEventitComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(DetajetEEventitComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
