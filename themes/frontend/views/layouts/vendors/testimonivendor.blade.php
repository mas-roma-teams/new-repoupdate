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
                  <img src="{{asset('storage/'.$profilevendor->photo_vendor)}}" alt="">
                </div>
                <h4 class="text-ptserif text-center mb-2">{{$profilevendor->nama_vendor}}</h4>
                <h5 class="text-secondary mb-4">{{ $profilevendor->kecamatan->name}}-{{$profilevendor->wilayah->name}}</h5>
                <div class="d-flex align-items-center">
                  <img src="images/icon-verified.png" alt="">
                    @if($profilevendor)
                  <p class="text-success font-semibold ml-2">Terverifikasi</p>
                  @else
                  <p class="text-danger font-semibold ml-2">Belum Verifikasi</p>
                  @endif
                </div>
              </div>

              @include('layouts.bar-right.list-menu-vendor')


            </div>


            <div class="col-9">

              <div class="d-flex justify-content-between mb-3">
                <h2>Testimoni</h2>
              </div>
              <div class="card mb-5">
                <div class="card-body">
                  <div class="row pt-5">
                    <div class="col-4">
                      <div class="card">
                        <div class="profile medium-border">
                          <img src="images/ex-profile-1.jpg" alt="">
                        </div>
                        <div class="card-body">
                          <h4 class="color-primary mb-2 mt-4">Ayu Puspita Sarih</h4>
                          <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. </h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="card">
                        <div class="profile medium-border">
                          <img src="images/ex-profile-1.jpg" alt="">
                        </div>
                        <div class="card-body">
                          <h4 class="color-primary mb-2 mt-4">Faruq Abdullah</h4>
                          <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. </h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="card">
                        <div class="profile medium-border">
                          <img src="images/ex-profile-1.jpg" alt="">
                        </div>
                        <div class="card-body">
                          <h4 class="color-primary mb-2 mt-4">Norman Deus</h4>
                          <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. </h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

    </div>

  </div>



