                <div class="card-profile mb-5 p-4">
                  <div class="profile square mb-3">
                      @if(Auth::user()->photo_profile == true)
                      <img src="{{ asset('themes/frontend/images/user/' . Auth::user()->photo_profile) }}" alt="" class="foto-profile">
                      @else
                      <img src="{{ asset('themes/frontend/images/user.png') }}" alt="" class="foto-profile">
                      @endif
                  </div>
                  <h4 class="text-ptserif text-center mb-2">{{ Auth::user()->name }}</h4>

                  @if(Auth::user()->saldo == NULL )
               
                   <h5 class="text-secondary mb-4">Belum Ada Saldo</h5>

                  @elseif($cek_akhir_saldo == TRUE)

                  <?php
                    $saldoawal = Auth::user()->saldo;
                    $saldo_user_ambil =  $cek_akhir_saldo->sum('jumlah_penarikan');
                    // dd($saldo_user_ambil);
                    $saldo_akhir = $saldoawal - $saldo_user_ambil;
                  ?>

                  <h5 class="text-secondary mb-4">Saldo : Rp. {{ number_format($saldo_akhir,0,',','.') }}</h5>
                  <a href="{{ route('tarik-tunai') }}" class="btn btn-me mb-2">Tarik Saldo</a>
                  @endif
                <div class="d-flex align-items-center">


                </div>
              </div>