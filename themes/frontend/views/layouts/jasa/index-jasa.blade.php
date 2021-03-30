@extends('layouts.app')
@section('content')

 <!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
 <!-- END INCLUDE HEADER -->

<div class="container">
      <div class="title w-75 mx-auto mb-5">
        <h1 class="text-center color-primary text-ptserif mb-5">Temukan kebutuhan untuk moment pernikahan anda</h1>
        <form class="seacrh" action="">
          <input type="text" placeholder="Search.." name="search">
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>
      </div>
      <div class="list">
        <div class="row">
          <div class="col-lg-3 col-md-4 col-5">
            <!-- INCLUDE LAYOUT BAR KATEGORI -->
            @include('layouts.bar-right.kategori')
            
            <!-- INCLUDE LAYUOUT WILAYAH -->
            @include('layouts.bar-right.daerah-select-option') 

            <!-- INCLUDE LAYOUT RATINGS BAR -->
           {{-- @include('layouts.bar-right.ratings') --}} 
          </div>
          <div class="col-lf-9 col-md-8 col-7">

            @if( $jasas->count() > 0 )

            
            <div class="row">
              @foreach ( $jasas as $jasa )
              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card noborder">
                 <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $jasa->nama_jasa }}">
                  <div class="card-body no-paddingleft">
                    <h4 class="mb-2">{{ $jasa->nama_jasa }}</h4>
                    <p class="mb-2 font-light">kosong</p>
                    <div class="alert alert-danger" role="alert">
                      Dilihat : 0 
                    </div>

                    <div class="alert alert-success" role="alert">
                      Jumlah Transaksi : 0
                    </div>
                  </div>
                </div>
              </div>
             

            @endforeach
              
            </div>
            <!-- PENEMPATAN PAGINATION -->
            {{ $jasas->links('layouts.pagination.pagination') }}
            <!-- END -->
            @else
            <div class="alert alert-primary" role="alert">
              DATA KOSONG, HUBUNGI ADMIN....!!!
            </div>
            @endif
           

             

          
          </div>
        </div>
      </div>
    </div>

    @endsection