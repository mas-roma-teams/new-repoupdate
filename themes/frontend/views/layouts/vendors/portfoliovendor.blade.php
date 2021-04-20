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
                <h2>Portfolio Kami</h2>
                <div class="d-flex align-items-center">
                  <img src="images/icon-plus.png" alt="">
                  <h5 class="text-primary ml-3">Portfolio</h5>
                </div>
              </div>
              <div class="card mb-5">
                <div class="card-body">
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="pills-semua2-tab" data-toggle="pill" href="#pills-semua2" role="tab" aria-controls="pills-semua2" aria-selected="true">Semua</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-gedung2-tab" data-toggle="pill" href="#pills-gedung2" role="tab" aria-controls="pills-gedung2" aria-selected="false">Gedung</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-rias2-tab" data-toggle="pill" href="#pills-rias2" role="tab" aria-controls="pills-rias2" aria-selected="false">Tara Rias</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-photographer2-tab" data-toggle="pill" href="#pills-photographer2" role="tab" aria-controls="pills-photographer2" aria-selected="false">Photographer</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-dekorasi2-tab" data-toggle="pill" href="#pills-dekorasi2" role="tab" aria-controls="pills-dekorasi2" aria-selected="false">Dekorasi</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-entertainment22-tab" data-toggle="pill" href="#pills-entertainment22" role="tab" aria-controls="pills-entertainment22" aria-selected="false">Entertainment</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-semua2" role="tabpanel" aria-labelledby="pills-semua2-tab">
                      <div class="row">
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="pills-gedung2" role="tabpanel" aria-labelledby="pills-gedung2-tab">Gedung</div>
                    <div class="tab-pane fade" id="pills-rias" role="tabpanel" aria-labelledby="pills-rias-tab">Tara Rias</div>
                    <div class="tab-pane fade" id="pills-photographer2" role="tabpanel" aria-labelledby="pills-photographer2-tab">Photographer</div>
                    <div class="tab-pane fade" id="pills-dekorasi2" role="tabpanel" aria-labelledby="pills-dekorasi2-tab">Dekorasi</div>
                    <div class="tab-pane fade" id="pills-entertainment2" role="tabpanel" aria-labelledby="pills-entertainment2-tab">Entertainment</div>
                  </div>
                </div>
              </div>
            </div>

    </div>

  </div>



