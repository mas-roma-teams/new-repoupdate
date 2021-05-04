@extends('layouts.app')
@section('content')


<!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
<!-- END INCLUDE HEADER -->


  <div class="container">
    <div class="row">

            <div class="col-3">
              <!-- FOTO USER LEFT -->
              @include('layouts.user.foto-user')

              <!-- LIST MENU USER -->
              @include('layouts.bar-right.list-menu-user')


            </div>

            <div class="col-9">

                <div class="row mb-3">
                    <div class="col-md-12">
                      @include('layouts.message.flash-message')
                        <div class="card">
                            <div class="card-body">
                                <h4>Kode referal</h4>
                                 <input type="text" class="total-font text-orange input-kode" value="{{ Auth::user()->kode_referal }}" id="myInput" disabled>
                                  <button class="btn btn-me mb-2" onclick="myFunction()">Copy</button>
                                
                                <p>Dapatkan penghasilan 2% dari setiap transaksi dengan cara memasukan kode referal di setiap transaksi kamu, atau kamu juga bisa bantu orang sekitarmu yang membutuhkan jasa untuk acara mereka dan kamu bisa dapat penghasilan dari transaksi mereka dengan cara memasukan kode referal ini , jadi tunggu apalagi, kamu bisa dapat penghasilan dengan modal ngomong, selamat mencoba</p>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-6 mb-2">
                        <div class="card">
                            <div class="card-body">
                              
                                <h4>Jumlah Transaksi</h4>
                                @if($transcount == 0)
                                <h3 class="text-orange">Belum Ada Transaksi</h3>
                                @else
                                <h3 class="text-orange">{{ $transcount }}</h3>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="card">
                            <div class="card-body">
                                <h4>Total Transaksi</h4>
                                
                                @if(Auth::user()->transaksi()->sum('harga_total') == 0)
                                  <h3 class="text-orange">
                                    Belum Ada Transaksi
                                  </h3>
                                @else
                                  <h3 class="text-orange">
                                    Rp. {{ number_format(Auth::user()->transaksi()->sum('harga_total'),0,',','.') }}
                                  </h3>
                                @endif
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">

                    </div>
                </div>
            </div>

    </div>

  </div>



