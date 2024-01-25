import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RregjistrimiEventitComponent } from './rregjistrimi-eventit.component';

describe('RregjistrimiEventitComponent', () => {
  let component: RregjistrimiEventitComponent;
  let fixture: ComponentFixture<RregjistrimiEventitComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [RregjistrimiEventitComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(RregjistrimiEventitComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
