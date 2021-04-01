@extends('layouts.app')
@section('content')


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
            <!-- INCLUDE LAYOUT KATEGORI BAR -->
            @include('layouts.bar-right.kategori')
            
            <!-- INCLUDE LAYUOUT WILAYAH -->
           @include('layouts.bar-right.daerah-select-option') 

            <!-- INCLUDE LAYOUT RATINGS BAR -->
             {{-- @include('layouts.bar-right.ratings') --}} 
          </div>
          <div class="col-lf-9 col-md-8 col-7">

            @if( $vendors->count() > 0 )

            
            <div class="row">
              @foreach ( $vendors as $vendor )
              <div class="col-lg-4 col-md-6 mb-4">
                <div class="cardo noborder">
                 <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $vendor->nama_vendor }}">
                  <div class="card-body no-paddingleft">
                    <a href="{{ url('/vendors/detail/'.$vendor->id) }}"><h4 class="mb-2">{{ $vendor->nama_vendor }}</h4></a>
                    <p class="mb-2 font-light">{{ $vendor->alamat_lengkap  }}</p>
                   
                    
                  </div>
                </div>
              </div>
             

            @endforeach
              
            </div>
            <!-- PENEMPATAN PAGINATION -->
            {{ $vendors->links('layouts.pagination.pagination') }}
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