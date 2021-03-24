@extends('layouts.app')

@section('content')

<header class="py-sm-5 py-3">
      <div class="container">
        <div class="d-flex flex-sm-row flex-column align-items-center justify-content-between">
          <div class="d-flex align-items-center mb-sm-0 mb-2">
            <img src="{{ asset('themes/frontend/images/logo.png') }}" alt="">
          </div>
          <h1 class="h5 font-regular mr-3 pointer">Belum punya akun? <a href="{{ route('register') }}" class="color-primary font-regular ml-2 pointer">Daftar disini</a></h1>
        </div>
      </div>
</header>

<div class="container pb-5">
      <div class="row">
        <div class="col-md-7 mx-auto">
          <h1 class="text-secondary text-center text-ptserif mb-2">Halo, selamat datang !</h1>
          <h2 class="h3 font-regular text-center text-secondary mb-5">Silahkan masuk ke akun alapesta kamu untuk mengexplore jasa dari kami</h2>
          <form action="{{ route('login') }}" method="POST">
            @csrf
            <div class="form-group">
              <label for="email">{{ __('E-Mail Address') }}</label>
              <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

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
                    <input class="form-control py-2 border-right-0 border @error('password') is-invalid @enderror" name="password" type="password" id="password" required autocomplete="current-password">
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


            <div class="form-group form-check d-flex justify-content-between">
              <div>
                <!-- <input type="checkbox" class="form-check-input" id="exampleCheck1"> -->
                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                <label class="form-check-label" for="exampleCheck1">{{ __('Remember Me') }}</label>
              </div>

                @if (Route::has('password.request'))
                    <a class="color-danger pointer" href="{{ route('password.request') }}">
                        {{ __('Forgot Your Password?') }}
                    </a>
                @endif
              
            </div>
            <div class="p-4">
              <div class="login-or">
                <p class="mb-0">or</p>
              </div>
            </div>
            <a class="btn btn-outline-dark w-100 py-2 mb-4"><img class="mr-4 icon-google" src="{{ asset('themes/frontend/images/icon-google.svg') }}"> Sign in with Google</a> 
            <button type="submit" class="btn btn-booking py-2">
                                    {{ __('Login') }}
            </button>
           
          </form>
        </div>
      </div>
    </div>
@endsection
