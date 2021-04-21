@extends('layouts.app')
@section('content')


<!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
<!-- END INCLUDE HEADER -->


  <div class="container">
    <div class="row">

            <div class="col-3">
              <div class="card-profile mb-5 p-4">
                <div class="profile square mb-3">
                   @if(Auth::user()->photo_profile == true)
                      <img src="{{ asset('themes/frontend/images/user/' . Auth::user()->photo_profile) }}" alt="" class="foto-profile">
                      @else
                      <img src="{{ asset('themes/frontend/images/user.png') }}" alt="" class="foto-profile">
                      @endif
                </div>
                <h4 class="text-ptserif text-center mb-2">{{ Auth::user()->name }}</h4>
                <h5 class="text-secondary mb-4">Saldo : Rp 875.000</h5>
                <div class="d-flex align-items-center">


                </div>
              </div>

              @include('layouts.bar-right.list-menu-user')


            </div>

            <div class="col-9">
                <form action="{{ url('/form/update/'. Auth::user()->id) }}" method="POST" enctype="multipart/form-data">
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



