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
                <h4 class="text-ptserif text-center mb-2">{{$users->name}}</h4>
                <h5 class="text-secondary mb-4">Saldo : Rp 875.000</h5>
                <div class="d-flex align-items-center">


                </div>
              </div>

              @include('layouts.bar-right.list-menu-user')


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
                                <h4>Total Transaksi</h4>
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



