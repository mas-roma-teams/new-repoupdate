   @extends('layouts.app')
    @section('content')

    <!-- INCLUDE HEADER -->
    @include('layouts.header.header-home')
    <!-- END INCLUDE HEADER -->
    <div id="content">

      

      <div class="container">
        <div class="mb-5">
          <h2 class="text-ptserif mb-2">Semua Kategori</h2>
         <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light"></h5>
            <a href="{{ route('home-awal') }}" class="btn btn-me">Kembali Ke Halaman Utama</a>
          </div>
          <div class="row">
            @foreach( $kategoris as $kategori )
            <div class="col-xl-2 col-md-3 col-sm-4 col-6 mb-2" class="tilt"> 
              <img src="{{ $kategori->icon }}" alt="{{ $kategori->nama_kategori }}" class="img-animation" />
            </div>
            @endforeach
          </div>
        </div>
        
      </div>

     



    </div>
    @endsection
