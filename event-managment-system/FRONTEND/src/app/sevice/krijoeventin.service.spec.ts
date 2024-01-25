import { TestBed } from '@angular/core/testing';

import { KrijoeventinService } from './krijoeventin.service';

describe('KrijoeventinService', () => {
  let service: KrijoeventinService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(KrijoeventinService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
