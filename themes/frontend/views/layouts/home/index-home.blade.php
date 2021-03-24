@extends('layouts.app')
    @section('content')
    <div id="content">

      <!-- INCLUDE HEADER -->
        @include('layouts.header.header-home')
      <!-- END INCLUDE HEADER -->
  
    
      
      <div class="container">
        <h1 class="text-center color-primary text-ptserif mb-2">Gunakan jasa kami sekarang</h1>
        <h4 class="text-center font-light w-75 mx-auto mb-4">Rencanakan hari pernikahanmu dengan matang, serta gunakan jasa kami untuk membuat hari penting mu menjadi sangat spesial</h4>
        <form class="seacrh" action="">
          <input type="text" placeholder="Search.." name="search">
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>
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
            <a href="" class="h5 font-regular color-primary text-bold link">lihat semua</a>
          </div>
          <div class="row">
            @foreach( $kategoris as $kategori )
            <div class="col-xl-2 col-md-3 col-sm-4 col-6 mb-2">
              <img src="{{ $kategori->icon }}" alt="{{ $kategori->nama_kategori }}" />
            </div>
            @endforeach
          </div>
        </div>
        <div class="mb-5">
          <h2 class="text-ptserif mb-2">Vendor disekitarmu</h2>
          <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </h5>
            <a href="" class="h5 font-regular color-primary text-bold link">lihat semua</a>
          </div>
          <div class="row">
            @foreach( $vendors as $vendor )
            <div class="col-md-4 col-sm-6 mb-4">
              <div class="card">
                <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $vendor->nama_vendor }}">
                <div class="card-body">
                  <h4 class="mb-2">{{ $vendor->nama_vendor }}</h4>
                  <p class="mb-2 font-light">{{ $vendor->alamat_lengkap  }}</p>
                  <div class="d-flex">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                </div>
              </div>
            </div>
            @endforeach
          </div>
        </div>
        <div class="mb-5">
          <h2 class="text-ptserif mb-2">Jasa disekitarmu</h2>
          <div class="d-flex justify-content-between mb-3">
            <h5 class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </h5>
            <a href="" class="h5 font-regular color-primary text-bold link">lihat semua</a>
          </div>
          <div class="row">
            @foreach( $jasas as $jasa )
            <div class="col-lg-3 col-md-4 col-sm-6 mb-3">
              <div class="card noborder">
                <img src="https://via.placeholder.com/100x100" class="card-img-top" alt="{{ $jasa->nama_jasa }}">
                <div class="card-body no-paddingleft">
                  <h4 class="mb-2">{{ $jasa->nama_jasa }}</h4>
                  <p class="mb-2 font-light">{{ $jasa->nama_daerah }}</p>
                  <div class="d-flex mb-2">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp. {{ number_format($jasa->harga,2) }}</h2>
                </div>
              </div>
            </div>
            @endforeach
          </div>
        </div>
      </div>
  
    
      <div class="container">
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
                  <div class="d-flex mb-2">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp 1500.000</h2>
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
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp 1500.000</h2>
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
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp 1500.000</h2>
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
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp 1500.000</h2>
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
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp 1500.000</h2>
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
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp 1500.000</h2>
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
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp 1500.000</h2>
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
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                    <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  </div>
                  <h2 class="text-primary text-ptserif">Rp 1500.000</h2>
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
      </div>

      <a id="chat" onclick="openChat()">
        <i class="far fa-comments"></i>
      </a>
  
      <footer>
        <div class="container">
          <div class="row mb-3">
            <div class="col-12">
              <img src="{{ asset('theme/frontend/images/logo-footer.png') }}" alt="">
            </div>
          </div>
          <div class="row">
            <div class="col-md-4">
              <div class="row">
                <div class="col-md-12 col-6">
                  <h1 class="h5 text-white font-light mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla vitae, blandit malesuada congue vulputate. Fringilla nam elit et et.</h1>
                </div>
                <div class="col-md-12 col-6">
                  <h4 class="text-white mb-3">Follow us on</h4>
                  <i class="fab fa-instagram mr-3" style="color: #fff; font-size: 20px;"></i>
                  <i class="fab fa-facebook-f mr-3" style="color: #fff; font-size: 20px;"></i>
                  <i class="fab fa-tiktok mr-3" style="color: #fff; font-size: 20px;"></i>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-6">
              <div class="d-flex flex-column">
                <a href="#" class="h5 text-white font-light mb-3">Vendor disekitarmu</a>
                <a href="#" class="h5 text-white font-light mb-3">Jasa disekitarmu</a>
                <a href="#" class="h5 text-white font-light mb-3">Jasa yang paling dicari</a>
                <a href="#" class="h5 text-white font-light mb-3">Jasa terbaik</a>
                <a href="#" class="h5 text-white font-light mb-3">Jasa top bulan ini</a>
              </div>
            </div>
            <div class="col-md-4 col-6 d-flex flex-column">
              <a href="#" class="h5 text-white font-light mb-3">Tentang Alapesta</a>
              <a href="#" class="h5 text-white font-light mb-3">Kebijakan Privasi</a>
              <a href="#" class="h5 text-white font-light mb-4">Jadi Mitra Kami</a>
              <a href="#" class="mb-4">
                <img src="{{ asset('theme/frontend/images/icon-gplay.png') }}" alt="">
              </a>
              <a href="#" class="mb-3">
                <img src="{{ asset('theme/frontend/assets/images/icon-appstore.png') }}" alt="">
              </a>
            </div>
          </div>
        </div>
      </footer>
      <section class="text-center text-white py-3" style="background-color: #3A3A3A;">
        <h5>All Right Reserved . Alapesta Since 2020</h5>
      </section>
      
    </div>
    @endsection