   @extends('layouts.app')
    @section('content')

    <!-- INCLUDE HEADER -->
    @include('layouts.header.header-home')
    <!-- END INCLUDE HEADER -->
    <div id="content">

      <div class="container">
        <h1 class="text-center color-primary text-ptserif mb-2">Gunakan jasa kami sekarang</h1>
        <h4 class="text-center font-light w-75 mx-auto mb-4">Rencanakan hari pernikahanmu dengan matang, serta gunakan jasa kami untuk membuat hari penting mu menjadi sangat spesial</h4>
        @include('layouts.search.search')
      </div>

      <div class="for_slick_slider center my-5">

        <!-- looping banner -->
        @foreach( $banner as $banners )
          <div class="items">
            <img src="{{ $banners->photo_banner  }}" alt="">
          </div>
        @endforeach
        <!-- end looping banner -->



      </div>

      <div class="container">
        <div class="mb-5">
          <h2 class="text-ptserif mb-2">Kategori</h2>
         <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light"></h5>
            <a href="{{ route('semua-kategori') }}" class="h5 font-regular color-primary text-bold link">lihat semua</a>
          </div>
          <div class="row">
            @foreach( $kategoris as $kategori )
            <div class="col-xl-2 col-md-3 col-sm-4 col-6 mb-2">
              <a href=""><img src="{{ $kategori->icon }}" alt="{{ $kategori->nama_kategori }}" /></a>
            </div>
            @endforeach
          </div>
        </div>
        <div class="mb-5">
          <h2 class="text-ptserif mb-2">Jasa disekitarmu</h2>
          <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </h5>
            <a href="{{ url('/jasa-list') }}" class="h5 font-regular color-primary text-bold link">lihat semua</a>
          </div>
          <div class="row">
            @foreach( $jasas as $jasa )
            <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $jasa->nama_jasa }}">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2"><a href="">{{ substr($jasa->nama_jasa,0,30) }}</a></h4>
                  <p class="mb-2 font-light">{{ ucfirst($jasa->vendors->kecamatan->name) }}, {{ $jasa->vendors->wilayah->name }}</p> 
                  
                  <h2 class=" text-ptserif text-orange">Rp 1500.000</h2>
                  {{-- <span class="float-left">
                    <i class="fa fa-eye"></i>{{ $jasa->dilihat }}


                   </span>

                   <span class="float-right">

                    <i class="fas fa-shopping-cart"></i>  {{ $jasas_count }}

                   </span> --}}
                  {{-- <h2 class="text-orange text-ptserif">Rp. {{ number_format($jasa->harga,2) }}</h2> --}}
                </div>
              </div>
            </div>
            @endforeach
          </div>
        </div>
      </div>

      <div class="home-section mb-5">
        <div class="container">
          <h2 class="text-ptserif mb-2 text-white">Jasa yang paling dicari</h2>
          <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light text-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </h5>
            <a href="" class="h5 font-regular color-primary text-bold link text-white">lihat semua</a>
          </div>
          <div class="row multiple-items">
            
            <div class="col-4 mb-4">
              <div class="card">
                <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="...">
                <div class="card-body">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>
            <div class="col-4 mb-4">
              <div class="card">
                <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="...">
                <div class="card-body">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>
            <div class="col-4 mb-4">
              <div class="card">
                <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="...">
                <div class="card-body">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="mb-5">
            <h2 class="text-ptserif mb-2">Vendor disekitarmu</h2>
            <div class="d-flex justify-content-between mb-3">
              <h5 class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </h5>
              <a href="{{ url('/vendors') }}" class="h5 font-regular color-primary text-bold link">lihat semua</a>
            </div>
            <div class="row">
              @foreach( $vendors as $vendor )
              <div class="col-md-4 col-sm-6 mb-4">
                <div class="card">
                  <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $vendor->nama_vendor }}">
                  <div class="card-body">

                    <h4 class="mb-2"><a href="">{{ substr($vendor->nama_vendor,0,30) }}</a></h4>
                    <p class="mb-2 font-light">{{ substr($vendor->alamat_lengkap,0,40)  }}</p>
                    
                  </div>
                </div>
              </div>
              @endforeach
            </div>
          </div>
      </div>


      {{-- <div class="container">
        <div class="mb-5">
          <h2 class="text-ptserif mb-2">Jasa terbaik</h2>
          <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </h5>
            <a href="" class="h5 font-regular color-primary text-bold link">lihat semua</a>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="{{ asset('themes/frontend/images/jasa-1.jpg') }}" class="card-img-top" alt="...">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>

                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>

             <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="{{ asset('themes/frontend/images/jasa-1.jpg') }}" class="card-img-top" alt="...">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>

                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>

             <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="{{ asset('themes/frontend/images/jasa-1.jpg') }}" class="card-img-top" alt="...">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  <div class="d-flex mb-2">

                  </div>
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>

             <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="{{ asset('themes/frontend/images/jasa-1.jpg') }}" class="card-img-top" alt="...">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  <div class="d-flex mb-2">





                  </div>
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>
          </div>


        </div>
        <div class="mb-5">
          <h2 class="text-ptserif mb-2">Jasa top bulan ini</h2>
          <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </h5>
            <a href="" class="h5 font-regular color-primary text-bold link">lihat semua</a>
          </div>
          <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="{{ asset('themes/frontend/images/jasa-1.jpg') }}" class="card-img-top" alt="...">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  <div class="d-flex mb-2">





                  </div>
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="{{ asset('themes/frontend/images/jasa-1.jpg') }}" class="card-img-top" alt="...">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  <div class="d-flex mb-2">





                  </div>
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="{{ asset('themes/frontend/images/jasa-1.jpg') }}" class="card-img-top" alt="...">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  <div class="d-flex mb-2">





                  </div>
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="{{ asset('themes/frontend/images/jasa-1.jpg') }}" class="card-img-top" alt="...">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">Wedding March Factory</h4>
                  <p class="mb-2 font-light">Tomang, Jakarta Selatan</p>
                  <div class="d-flex mb-2">





                  </div>
                  <h2 class="text-orange text-ptserif">Rp 1500.000</h2>
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="mb-5">
          <h2 class="text-ptserif text-center mb-4">Apa kata mereka tentang kami?</h2>
          <div class="row">
            <div class="col-md-6 col-12 mb-5">
              <div class="d-flex">
                <div class="profile big">
                  <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
                </div>
                <div class="d-flex flex-column ml-3">
                  <h4 class="testi-text mb-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Leo condimentum fermentum tortor ut hendrerit sodales massa. Quam sed vestibulum quam commodo vel urna. At vitae amet interdum semper eu nibh enim sit. </h4>
                  <h5 class="font-bold text-uppercase">Sofia brichet</h5>
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="mb-5">
          <h2 class="text-ptserif mb-2">Gallery</h2>
          <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </h5>
            <a href="" class="h5 font-regular color-primary text-bold link">lihat semua</a>
          </div>
          <div class="row">
            <div class="col-sm-7 mb-4">
              <img src="{{ asset('themes/frontend/images/gallery-1.png') }}" class="img-fluid w-100 h-100" alt="">
            </div>
            <div class="col-sm-5 mb-4">
              <img src="{{ asset('themes/frontend/images/gallery-2.png') }}" class="img-fluid w-100 h-100" alt="">
            </div>
          </div>

        </div>
      </div> --}}




    </div>
    @endsection
