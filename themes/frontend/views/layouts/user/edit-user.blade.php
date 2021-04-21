@extends('layouts.app')

@section('content')

<!-- INCLUDE HEADER -->
    @include('layouts.header.header-home')
    <!-- END INCLUDE HEADER -->


<div class="container pb-5">
      <div class="row">
        <div class="col-md-7 mx-auto">
          <h3 class="text-secondary text-center text-ptserif mb-2">Silahkan isi untuk Mengupdate data diri anda</h3>

          <form action="{{ url('/test/update/'. Auth::user()->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            {{-- @method('PUT') --}}


            <div class="form-group">
              <label for="email">{{ __('Nama Lengkap') }}</label>
              <input id="email" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $users->name }}" required autocomplete="email" autofocus>

              @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
              @enderror
            </div>

            <div class="form-group">
              <label for="email">{{ __('E-Mail Address') }}</label>
              <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $users->email }}" required autocomplete="email" autofocus>

              @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
              @enderror
            </div>


            <div class="form-group">
              <label for="email">{{ __('Nomor Whatsapp') }}</label>
              <input id="email" type="text" class="form-control @error('email') is-invalid @enderror" name="no_tlp" value="{{ $users->no_tlp }}" required autocomplete="email" autofocus>

              @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
              @enderror
            </div>



            <div class="form-group">
                            <label for="nama_kategori">Photo Profile</label>
                            <input type="file" name="photo_profile" class="dropify"
                                data-allowed-file-extensions="jpg png jpeg" data-max-file-size="2M" />
                            @error('photo_profile')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

            <div class="form-group">

              <label for="password">{{ __('Password') }}</label>
             <!--  <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
              <span id="toggle_pwd" class="fa fa-fw fa-eye field_icon"></span> -->
                <div class="input-group">
                    <input class="form-control py-2 border-right-0" name="password" type="password" id="password" autocomplete="current-password">
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

            <p style="color: red;"><b>*Kosongkan jika password tidak ingin di ubah</b></p>

            <br>

            <div class="form-group">

              <label for="password">{{ __('Confirm Password') }}</label>
             <!--  <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
              <span id="toggle_pwd" class="fa fa-fw fa-eye field_icon"></span> -->
                <div class="input-group">

                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation"autocomplete="new-password">
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
            <p style="color: red;"><b>*Kosongkan jika password tidak ingin di ubah</b></p>

            <br>


            {{-- <div class="form-group form-check d-flex justify-content-between">
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
            </div> --}}
           {{--  <a href="{{ url('auth/google') }}" class="btn btn-outline-dark w-100 py-2 mb-4"><img class="mr-4 icon-google" src="{{ asset('themes/frontend/images/icon-google.svg') }}"> Sign in with Google</a> --}}
            <button type="submit" class="btn btn-me py-2">
                                    {{ __('Submit') }}
            </button>

            <a href="{{ url('/user/dashboard/'. Auth::user()->id) }}" class="btn btn-me py-2">
                                    {{ __('Cancel') }}
            </a>

          </form>
        </div>
      </div>
    </div>
@endsection
