@extends('layouts.app')

@section('content')
<header class="py-sm-5 py-3">
      <div class="container">
        <div class="d-flex flex-sm-row flex-column align-items-center justify-content-between">
          <div class="d-flex align-items-center mb-sm-0 mb-2">
           <img class="mr-5" src="{{ asset('themes/frontend/images/logo4.png') }}" width="155px" alt="">
          </div>
          <!-- <h1 class="h5 font-regular mr-3 pointer">Sudah punya akun? <a href="{{ route('login') }}" class="color-primary font-regular ml-2 pointer">Masuk</a></h1> -->
        </div>
      </div>
    </header>

    <div class="container pb-5">
      <div class="row">
        <div class="col-md-7 mx-auto">
          <h1 class="text-secondary text-center text-ptserif mb-2">Silahkan Masukan Nominal untuk tarik tunai</h1>
         <!--  <h2 class="h3 font-regular text-center text-secondary mb-5">Daftarkan dirimu sekarang untuk mendapatkan penawaran exclusive</h2> -->
          <form action="{{ route('tarik-tunai-post') }}" method="POST">
            @csrf
            <!-- <input type="text" name="vendor_status" value="0"> -->
            <div class="form-group">
              <label for="name">Nama Pengguna</label>
             <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ Auth::user()->name }}" required autocomplete="name" autofocus disabled>

              @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
              @enderror

            </div>
            <div class="form-group">
              <label for="notel">Nomor Whatsapp</label>
              <input type="text" class="form-control" name="no_tlp" id="notel" aria-describedby="emailHelp" value="{{ Auth::user()->no_tlp }}" disabled>
            </div>

            
            <div class="form-group">
              <label for="email">Alamat Email</label>
              <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ Auth::user()->email }}" required autocomplete="email" disabled>

              @error('email')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
            </div>

            <div class="form-group">
              <label for="name">Nominal Penarikan</label>
             <!-- <input id="dengan-rupiah" type="text" class="form-control @error('name') is-invalid @enderror" name="nominal" value="" required autocomplete="name" autofocus placeholder="contoh : 50000"> -->
             <input type="text"  class="form-control" id="rupiah" name="jumlah_penarikan" data-a-sign="Rp. " data-a-dec="," data-a-sep="." placeholder="Klik Untuk masukan Jumlah Penarikan">

              @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
              @enderror

            </div>


          <!-- LAYOUT PENARIKAN  -->
           <div class="form-group">
             <label for="name">Metode Penarikan</label>
              <div class="class-payment">
                    <div class="col-md-4">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="metode_penarikan" id="exampleRadios2" value="ovo">
                        <img src="{{ asset('themes/frontend/logo-payment/logo-ovo.png') }}" class="img-fluid gambar-payment">
                      </div>
                 
                    </div>

                    <div class="col-md-4">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="metode_penarikan" id="exampleRadios2" value="gopay">
                        <img src="{{ asset('themes/frontend/logo-payment/gopay.png') }}" class="img-fluid gambar-payment">
                      </div>
                 
                    </div>

                    <div class="col-md-4">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="metode_penarikan" id="exampleRadios2" value="indomaret">
                        <img src="{{ asset('themes/frontend/logo-payment/indomaret.jpg') }}" class="img-fluid gambar-payment">
                      </div>
                 
                    </div>
              </div>

              <div class="class-payment mt-2">
                    <div class="col-md-4">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="metode_penarikan" id="exampleRadios2" value="alfa">
                        <img src="{{ asset('themes/frontend/logo-payment/alfa.png') }}" class="img-fluid gambar-payment">
                      </div>
                 
                    </div>

                    <div class="col-md-4">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="metode_penarikan" id="exampleRadios2" value="linkaja">
                        <img src="{{ asset('themes/frontend/logo-payment/link-aja.png') }}" class="img-fluid gambar-payment">
                      </div>
                 
                    </div>

                    <div class="col-md-4">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="metode_penarikan" id="exampleRadios2" value="atmbersama">
                        <img src="{{ asset('themes/frontend/logo-payment/atm-bersama.png') }}" class="img-fluid gambar-payment">
                      </div>
                 
                    </div>
              </div>

               
           </div>
            

            <button type="submit" class="btn btn-booking btn-me py-2">
                                    {{ __('Tarik Tunai') }}
            </button>
          
          </form>
        </div>
      </div>
    </div>
@endsection
