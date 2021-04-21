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
                <h2>Jasa</h2>
                <div class="d-flex align-items-center">
                    <a href="{{route('vendors.tambahjasa')}}" class="btn btn-me-outline">Tambah Jasa</a>
                </div>
              </div>
              <div class="card mb-5">
                <div class="card-body">
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="pills-semua1-tab" data-toggle="pill" href="#pills-semua1" role="tab" aria-controls="pills-semua1" aria-selected="true">Semua</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-gedung1-tab" data-toggle="pill" href="#pills-gedung1" role="tab" aria-controls="pills-gedung1" aria-selected="false">Gedung</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-rias1-tab" data-toggle="pill" href="#pills-rias1" role="tab" aria-controls="pills-rias1" aria-selected="false">Tara Rias</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-photographer1-tab" data-toggle="pill" href="#pills-photographer1" role="tab" aria-controls="pills-photographer1" aria-selected="false">Photographer</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-dekorasi1-tab" data-toggle="pill" href="#pills-dekorasi1" role="tab" aria-controls="pills-dekorasi1" aria-selected="false">Dekorasi</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-entertainment1-tab" data-toggle="pill" href="#pills-entertainment1" role="tab" aria-controls="pills-entertainment1" aria-selected="false">Entertainment</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-semua1" role="tabpanel" aria-labelledby="pills-semua1-tab">
                      <div class="row">

                    @forelse ($jasavendor as $row)
                        <div class="col-4 mb-4">
                            <div class="card noborder">
                                <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $row->nama_jasa }}">
                                <div class="card-body no-paddingleft">
                                  <h4 class="mb-2"><a href="">{{ substr($row->nama_jasa,0,30) }}</a></h4>
                                  <p class="mb-2 font-light">{{ ucfirst($row->vendors->kecamatan->name) }}, {{ $row->vendors->wilayah->name }}</p>
                                  <div class="d-flex mb-2">
                                    <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                    <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                    <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                    <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                    <img class="mr-2" src="{{asset('themes/frontend/images/star-light.png')}}" alt="">
                                  </div>
                                  <h2 class="text-orange text-ptserif">Rp. {{ number_format($row->harga) }}</h2>

                                </div>
                              </div>
                          </div>
                          @empty
                          <div class="col-4 mb-4">
                            <div class="card noborder">
                          <p>Anda belum memiliki jasa</p>
                            </div>
                          </div>
                      @endforelse


                      </div>
                      {{ $jasavendor->links('layouts.pagination.pagination') }}
                    </div>
                    <div class="tab-pane fade" id="pills-gedung1" role="tabpanel" aria-labelledby="pills-gedung1-tab">
                        <div class="row">

                            @forelse ($jasagedung as $row)
                                <div class="col-4 mb-4">
                                    <div class="card noborder">
                                        <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $row->nama_jasa }}">
                                        <div class="card-body no-paddingleft">
                                          <h4 class="mb-2"><a href="">{{ substr($row->nama_jasa,0,30) }}</a></h4>
                                          <p class="mb-2 font-light">{{ ucfirst($row->vendors->kecamatan->name) }}, {{ $row->vendors->wilayah->name }}</p>
                                          <div class="d-flex mb-2">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-light.png')}}" alt="">
                                          </div>
                                          <h2 class="text-orange text-ptserif">Rp. {{ number_format($row->harga) }}</h2>

                                        </div>
                                      </div>
                                  </div>
                                  @empty
                                  <div class="col-4 mb-4">
                                    <div class="card noborder">
                                  <p>Anda belum memiliki jasa</p>
                                    </div>
                                  </div>
                              @endforelse


                              </div>
                              {{ $jasagedung->links('layouts.pagination.pagination') }}
                    </div>
                    <div class="tab-pane fade" id="pills-rias1" role="tabpanel" aria-labelledby="pills-rias1-tab">
                        <div class="row">

                            @forelse ($jasatatarias as $row)
                                <div class="col-4 mb-4">
                                    <div class="card noborder">
                                        <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $row->nama_jasa }}">
                                        <div class="card-body no-paddingleft">
                                          <h4 class="mb-2"><a href="">{{ substr($row->nama_jasa,0,30) }}</a></h4>
                                          <p class="mb-2 font-light">{{ ucfirst($row->vendors->kecamatan->name) }}, {{ $row->vendors->wilayah->name }}</p>
                                          <div class="d-flex mb-2">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-light.png')}}" alt="">
                                          </div>
                                          <h2 class="text-orange text-ptserif">Rp. {{ number_format($row->harga) }}</h2>

                                        </div>
                                      </div>
                                  </div>
                                  @empty
                                  <div class="col-4 mb-4">
                                    <div class="card noborder">
                                  <p>Anda belum memiliki jasa</p>
                                    </div>
                                  </div>
                              @endforelse


                              </div>
                              {{ $jasatatarias->links('layouts.pagination.pagination') }}
                    </div>
                    <div class="tab-pane fade" id="pills-photographer1" role="tabpanel" aria-labelledby="pills-photographer1-tab">
                        <div class="row">

                            @forelse ($jasaphotografer as $row)
                                <div class="col-4 mb-4">
                                    <div class="card noborder">
                                        <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $row->nama_jasa }}">
                                        <div class="card-body no-paddingleft">
                                          <h4 class="mb-2"><a href="">{{ substr($row->nama_jasa,0,30) }}</a></h4>
                                          <p class="mb-2 font-light">{{ ucfirst($row->vendors->kecamatan->name) }}, {{ $row->vendors->wilayah->name }}</p>
                                          <div class="d-flex mb-2">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-light.png')}}" alt="">
                                          </div>
                                          <h2 class="text-orange text-ptserif">Rp. {{ number_format($row->harga) }}</h2>

                                        </div>
                                      </div>
                                  </div>
                                  @empty
                                  <div class="col-4 mb-4">
                                    <div class="card noborder">
                                  <p>Anda belum memiliki jasa</p>
                                    </div>
                                  </div>
                              @endforelse


                              </div>
                              {{ $jasaphotografer->links('layouts.pagination.pagination') }}
                    </div>
                    <div class="tab-pane fade" id="pills-dekorasi1" role="tabpanel" aria-labelledby="pills-dekorasi1-tab">
                        <div class="row">

                            @forelse ($jasadekorasi as $row)
                                <div class="col-4 mb-4">
                                    <div class="card noborder">
                                        <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $row->nama_jasa }}">
                                        <div class="card-body no-paddingleft">
                                          <h4 class="mb-2"><a href="">{{ substr($row->nama_jasa,0,30) }}</a></h4>
                                          <p class="mb-2 font-light">{{ ucfirst($row->vendors->kecamatan->name) }}, {{ $row->vendors->wilayah->name }}</p>
                                          <div class="d-flex mb-2">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-light.png')}}" alt="">
                                          </div>
                                          <h2 class="text-orange text-ptserif">Rp. {{ number_format($row->harga) }}</h2>

                                        </div>
                                      </div>
                                  </div>
                                  @empty
                                  <div class="col-4 mb-4">
                                    <div class="card noborder">
                                  <p>Anda belum memiliki jasa</p>
                                    </div>
                                  </div>
                              @endforelse


                              </div>
                              {{ $jasadekorasi->links('layouts.pagination.pagination') }}
                    </div>
                    <div class="tab-pane fade" id="pills-entertainment1" role="tabpanel" aria-labelledby="pills-entertainment1-tab">
                        <div class="row">

                            @forelse ($jasaentertaiment as $row)
                                <div class="col-4 mb-4">
                                    <div class="card noborder">
                                        <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $row->nama_jasa }}">
                                        <div class="card-body no-paddingleft">
                                          <h4 class="mb-2"><a href="">{{ substr($row->nama_jasa,0,30) }}</a></h4>
                                          <p class="mb-2 font-light">{{ ucfirst($row->vendors->kecamatan->name) }}, {{ $row->vendors->wilayah->name }}</p>
                                          <div class="d-flex mb-2">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-full.png')}}" alt="">
                                            <img class="mr-2" src="{{asset('themes/frontend/images/star-light.png')}}" alt="">
                                          </div>
                                          <h2 class="text-orange text-ptserif">Rp. {{ number_format($row->harga) }}</h2>

                                        </div>
                                      </div>
                                  </div>
                                  @empty
                                  <div class="col-4 mb-4">
                                    <div class="card noborder">
                                  <p>Anda belum memiliki jasa</p>
                                    </div>
                                  </div>
                              @endforelse


                              </div>
                              {{ $jasaentertaiment->links('layouts.pagination.pagination') }}
                    </div>
                  </div>
                </div>
              </div>

            </div>
    </div>

  </div>
