@extends('layouts.app')

@section('content')
<header class="py-sm-5 py-3">
      <div class="container">
        <div class="d-flex flex-sm-row flex-column align-items-center justify-content-between">
          <div class="d-flex align-items-center mb-sm-0 mb-2">
            <img src="{{ asset('themes/frontend/images/logo.png') }}" alt="">
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
          <form action="{{ route('register') }}" method="POST">
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
             <input id="name" type="number" class="form-control @error('name') is-invalid @enderror" name="nominal" value="" required autocomplete="name" autofocus placeholder="contoh : 50000">

              @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
              @enderror

            </div>

           
            

            <button type="submit" class="btn btn-booking py-2">
                                    {{ __('Register') }}
            </button>
          
          </form>
        </div>
      </div>
    </div>
@endsection
