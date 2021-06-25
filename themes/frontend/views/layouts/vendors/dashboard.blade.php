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
                <div class="row">
                    <div class="col-6">
                        <div class="card">
                            <div class="card-body">
                                <h4>Jumlah Transaksi</h4>
                                <h3 class="text-orange">54</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="card">
                            <div class="card-body">
                                <h4>Jumlah Omset</h4>
                                <h3 class="text-orange">Rp.98.000.000</h3>
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

  @endsection



