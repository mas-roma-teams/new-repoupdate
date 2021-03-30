@extends('layouts.app')

@section('content')
<header class="py-sm-5 py-3">
      <div class="container">
        <div class="d-flex flex-sm-row flex-column align-items-center justify-content-between">
          <div class="d-flex align-items-center mb-sm-0 mb-2">
            <img src="{{ asset('themes/frontend/images/logo.png') }}" alt="">
          </div>
          <h1 class="h5 font-regular mr-3 pointer">Sudah punya akun? <a href="{{ route('login') }}" class="color-primary font-regular ml-2 pointer">Masuk</a></h1>
        </div>
      </div>
    </header>

    <div class="container pb-5">
      <div class="row">
        <div class="col-md-7 mx-auto">
          <h1 class="text-secondary text-center text-ptserif mb-2">Halo, selamat datang kembali!</h1>
          <h2 class="h3 font-regular text-center text-secondary mb-5">Daftarkan dirimu sekarang untuk mendapatkan penawaran exclusive</h2>
          <form action="{{ route('register') }}" method="POST">
            @csrf
            <div class="form-group">
              <label for="name">Nama Pengguna</label>
             <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

              @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
              @enderror

            </div>
            <div class="form-group">
              <label for="notel">Nomor Whatsapp</label>
              <input type="text" class="form-control" name="no_tlp" id="notel" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="email">Alamat Email</label>
              <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

              @error('email')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
            </div>
            <div class="form-group">

              <label for="password">{{ __('Password') }}</label>
             <!--  <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
              <span id="toggle_pwd" class="fa fa-fw fa-eye field_icon"></span> --> 
                <div class="input-group">
                    <input class="form-control py-2 border-right-0 border @error('password') is-invalid @enderror" type="password" id="password" name="password" required autocomplete="current-password">
                    <span class="input-group-append">
                        <div class="input-group-text bg-transparent"><i id="toggle_pwd" class="fa fa-eye" style="cursor: pointer;"></i></div>
                    </span>
                </div>
                @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>

            <div class="form-group">

              <label for="password">{{ __('Confirm Password') }}</label>
             <!--  <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
              <span id="toggle_pwd" class="fa fa-fw fa-eye field_icon"></span> --> 
                <div class="input-group">

                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                    <span class="input-group-append">
                        <div class="input-group-text bg-transparent"><i id="toggle_pwd1" class="fa fa-eye" style="cursor: pointer;"></i></div>
                    </span>
                </div>
                @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
            <div class="p-4">
              <div class="login-or">
                <p class="mb-0">or</p>
              </div>
            </div>
            <a class="btn btn-outline-dark w-100 py-2 mb-4"><img class="mr-4 icon-google" src="{{ asset('themes/frontend/images/icon-google.svg') }}"> Sign in with Google</a> 

            <button type="submit" class="btn btn-booking py-2">
                                    {{ __('Register') }}
            </button>
          
          </form>
        </div>
      </div>
    </div>
@endsection
