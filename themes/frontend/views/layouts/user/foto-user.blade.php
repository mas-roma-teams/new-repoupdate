                <div class="card-profile mb-5 p-4">
                 <div class="profile square mb-3">
                   @if(Auth::user()->photo_profile == true)
                      <img src="{{ asset('themes/frontend/images/user/' . Auth::user()->photo_profile) }}" alt="" class="foto-profile">
                      @else
                      <img src="{{ asset('themes/frontend/images/user.png') }}" alt="" class="foto-profile">
                      @endif
                  </div>
                <h4 class="text-ptserif text-center mb-2">{{ Auth::user()->name }}</h4>

                @if(Auth::user()->saldo == true )
             
                <h5 class="text-secondary mb-4">Saldo : Rp. {{ number_format(Auth::user()->saldo,0,',','.') }}</h5>
                <button class="btn btn-me mb-2">Tarik Saldo</button>
                @else
                 <h5 class="text-secondary mb-4">Belum Ada Saldo</h5>
                @endif
                <div class="d-flex align-items-center">


                </div>
              </div>