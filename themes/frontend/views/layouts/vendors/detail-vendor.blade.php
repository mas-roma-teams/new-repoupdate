  @extends('layouts.app')
  @section('content')


  <!-- INCLUDE HEADER -->
    @include('layouts.header.header-home')
  <!-- END INCLUDE HEADER -->


    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Homepage</a></li>
          <li class="breadcrumb-item"><a href="#">List vendor</a></li>
          <li class="breadcrumb-item active" aria-current="page">Detail {{ $vendors->nama_vendor }}</li>
        </ol>
      </nav>
      <div class="banner mb-4">
        <img src="https://via.placeholder.com/1101x450" alt="">
      </div>
      <h4 class="font-regular mb-4">“ {{ $vendors->deskripsi }} </h4>
      <div class="row">
        <div class="col-sm-7">
          <div class="card-detail mb-5">
            <div class="d-flex justify-content-between mb-4">
              <div class="d-flex flex-column align-items-md-baseline align-items-center">
                <img src="{{ asset('themes/frontend/images/icon-diskon.png') }}" alt="">
                <h2 class="text-primary font-bold mt-2">{{ $vendors->jumlah_dp }}%</h2>
                <h5 class="text-ptserif text-secondary mt-2">DP</h5>
              </div>
              <div class="d-flex flex-column align-items-md-baseline align-items-center">
                <img src="{{ asset('themes/frontend/images/icon-lihat.png') }}" alt="">
                <h2 class="text-primary font-bold mt-2">{{ $vendors->dilihat }}</h2>
                <h5 class="text-ptserif text-secondary mt-2">Dilihat pengguna</h5>
              </div>
              <div class="d-flex flex-column align-items-md-baseline align-items-center">
                <img src="{{ asset('themes/frontend/images/icon-transaksi.png') }}" alt="">
                <h2 class="text-primary font-bold mt-2">29</h2>
                <h5 class="text-ptserif text-secondary mt-2">Transaksi</h5>
              </div>
            </div>
            <h4 class="font-light mb-3">Harga Jasa</h4>
            <div class="d-flex align-items-center mb-2">
              <h1 class="color-primary">Rp. {{ number_format($vendors->harga,2) }}</h1>
              <h3 class="text-regular text-secondary">/ hari</h3>
            </div>
            <p class="mb-4">*Harga bisa berubah sesuai dengan jarak acara, tanya vendor untuk memastikan harga jasa yang harus dibayar</p>
            <a class="btn btn-nego mb-2" data-toggle="modal" data-target="#modalNego">Nego harga</a>
            <a class="btn btn-booking mb-2">Booking</a>
          </div>
        </div>
        <div class="col-sm-5">
          <div class="card-profile mb-5">
            <div class="profile square mb-3 mt-3">
              <img src="{{ asset('themes/frontend/images/ex-profile-3.jpg') }}" alt="">
            </div>
            <h4 class="text-ptserif text-center mb-2">{{ $vendors->nama_vendor }}</h4>
            <h5 class="text-secondary mb-4">{{ $vendors->alamat_lengkap }}</h5>
            <div class="d-flex align-items-center mb-5">
              <img src="{{ asset('images/icon-verified.png') }}" alt="">
              <p class="text-success font-semibold ml-2">Verified Account</p>
            </div>
            <div class="btn-nego">Kirim Pesan</div>
          </div>
        </div>
      </div>
      <div class="detail-projek mb-5">
        <h2 class="text-center text-ptserif">Proyek kami</h2>
        <h5 class="font-light text-center mb-3">Beberapa contoh proyek yang telah kami kerjakan sebelumnya</h5>
        <div class="card p-3">
          <div class="card-body">
            <div class="row">
              <div class="col-md-4 col-sm-6 mb-4">
                <div class="card">
                  <img src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  <div class="d-flex justify-content-between mt-2">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  </div>
                  <div class="card-body">
                    <h4>Adim & Hasna Wedding</h4>
                    <p class="font-light mt-2">12 Januari 2019</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 mb-4">
                <div class="card">
                  <img src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  <div class="d-flex justify-content-between mt-2">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  </div>
                  <div class="card-body">
                    <h4>Adim & Hasna Wedding</h4>
                    <p class="font-light mt-2">12 Januari 2019</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 mb-4">
                <div class="card">
                  <img src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  <div class="d-flex justify-content-between mt-2">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  </div>
                  <div class="card-body">
                    <h4>Adim & Hasna Wedding</h4>
                    <p class="font-light mt-2">12 Januari 2019</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 mb-4">
                <div class="card">
                  <img src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  <div class="d-flex justify-content-between mt-2">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  </div>
                  <div class="card-body">
                    <h4>Adim & Hasna Wedding</h4>
                    <p class="font-light mt-2">12 Januari 2019</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 mb-4">
                <div class="card">
                  <img src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  <div class="d-flex justify-content-between mt-2">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  </div>
                  <div class="card-body">
                    <h4>Adim & Hasna Wedding</h4>
                    <p class="font-light mt-2">12 Januari 2019</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 mb-4">
                <div class="card">
                  <img src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  <div class="d-flex justify-content-between mt-2">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                    <img class="w-48" src="{{ asset('themes/frontend/images/projek-1.jpg') }}" alt="">
                  </div>
                  <div class="card-body">
                    <h4>Adim & Hasna Wedding</h4>
                    <p class="font-light mt-2">12 Januari 2019</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="detail-testi mb-5">
        <h2 class="text-center text-ptserif">Testimoni pengguna kami</h2>
        <h5 class="font-light text-center mb-4">Komentar mereka yang telah pernah menggunakan jasa kami</h5>
        <div class="row pt-5">
          <div class="col-md-4 col-sm-6 mb-5">
            <div class="card p-3">
              <div class="profile medium">
                <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
              </div>
              <div class="card-body">
                <h4 class="color-primary mb-2 mt-4">Ayu Puspita Sarih</h4>
                <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. Eget ultrices consectetur id id vitae enim diam id. Sed aliquam pellentesque elementum </h5>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 mb-5">
            <div class="card p-3">
              <div class="profile medium">
                <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
              </div>
              <div class="card-body">
                <h4 class="color-primary mb-2 mt-4">Faruq Abdullah</h4>
                <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. Eget ultrices consectetur id id vitae enim diam id. Sed aliquam pellentesque elementum </h5>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 mb-5">
            <div class="card p-3">
              <div class="profile medium">
                <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
              </div>
              <div class="card-body">
                <h4 class="color-primary mb-2 mt-4">Norman Deus</h4>
                <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. Eget ultrices consectetur id id vitae enim diam id. Sed aliquam pellentesque elementum </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="detail-forum mb-5">
        <h2 class="text-ptserif mb-2">Forum Diskusi</h2>
        <div class="card mb-3">
          <div class="card-body">
            <div class="d-flex flex-sm-row flex-column justify-content-between">
              <div class="d-flex d-flex w-100 justify-content-sm-start align-items-center">
                <img class="mr-sm-2 mr-4" src="{{ asset('themes/frontend/images/icon-qna.png') }}" alt="">
                <h4>Ada pertanyaan? Diskusikan penjual jasa</h4>
              </div>
              <button class="btn-ask mt-sm-0 mt-3 mx-auto">Tulis pertanyaan</button>
            </div>
          </div>
        </div>
        <div class="card border-toprightleft">
          <div class="card-body">
            <div class="d-flex">
              <div class="profile-ask mr-3">
                <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
              </div>
              <div class="d-flex flex-column">
                <div class="d-flex align-items-baseline mb-2">
                  <h4 class="text-ptserif color-primary mr-4">Ayu Puspita Sarih</h4>
                  <p>18 menit yang lalu</p>
                </div>
                <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. Eget ultrices consectetur id id vitae enim diam id. Sed aliquam pellentesque elementum </h5>
              </div>
            </div>
          </div>
        </div>
        <div class="card-ask mb-5">
          <div class="d-flex mb-4">
            <div class="profile-ask mr-3">
              <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
            </div>
            <div class="d-flex flex-column">
              <div class="d-flex align-items-baseline mb-2">
                <h4 class="text-ptserif color-primary mr-4">Ayu Puspita Sarih</h4>
                <p>18 menit yang lalu</p>
              </div>
              <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. </h5>
            </div>
          </div>
          <div class="d-flex align-items-center">
            <div class="profile-ask mr-3">
              <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
            </div>
            <div class="form-group w-100 mb-0">
              <input type="text" class="form-control w-100" id="answer" placeholder="Tulis komentar disini . . . .">
            </div>
          </div>
        </div>

        <div class="card border-toprightleft">
          <div class="card-body">
            <div class="d-flex">
              <div class="profile-ask mr-3">
                <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
              </div>
              <div class="d-flex flex-column">
                <div class="d-flex align-items-baseline mb-2">
                  <h4 class="text-ptserif color-primary mr-4">Ayu Puspita Sarih</h4>
                  <p>18 menit yang lalu</p>
                </div>
                <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. Eget ultrices consectetur id id vitae enim diam id. Sed aliquam pellentesque elementum </h5>
              </div>
            </div>
          </div>
        </div>
        <div class="card-ask">
          <div class="d-flex mb-4">
            <div class="profile-ask mr-3">
              <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
            </div>
            <div class="d-flex flex-column">
              <div class="d-flex align-items-baseline mb-2">
                <h4 class="text-ptserif color-primary mr-4">Ayu Puspita Sarih</h4>
                <p>18 menit yang lalu</p>
              </div>
              <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. </h5>
            </div>
          </div>
          <div class="d-flex align-items-center">
            <div class="profile-ask mr-3">
              <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
            </div>
            <div class="form-group w-100 mb-0">
              <input type="text" class="form-control w-100" id="answer" placeholder="Tulis komentar disini . . . .">
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal Nego -->
    <div class="modal fade" id="modalNego" tabindex="-1" aria-labelledby="modalNegoLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header noborder">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-6 mb-4">
                <h4 class="mb-2">Provinsi</h4>
                <input type="text" class="form-control w-100" id="provinsi" placeholder="Provinsi">
              </div>
              <div class="col-md-6 mb-4">
                <h4 class="mb-2">Kota/Kabupaten</h4>
                <input type="text" class="form-control w-100" id="kota" placeholder="Kota/Kabupaten">
              </div>
              <div class="col-md-6 mb-4">
                <h4 class="mb-2">Kecamatan</h4>
                <input type="text" class="form-control w-100" id="kecamatan" placeholder="Kecamatan">
              </div>
              <div class="col-md-6 mb-4">
                <h4 class="mb-2">Kelurahan</h4>
                <input type="text" class="form-control w-100" id="kelurahan" placeholder="Kelurahan">
              </div>
              <div class="col-md-12 mb-4">
                <h4 class="mb-2">Harga Nego</h4>
                <input type="text" class="form-control w-100" id="harga" placeholder="Rp 750.000">
              </div>
              <div class="col-12 mb-4">
                <h4 class="mb-2">Keterangan (opsional)</h4>
                <textarea class="form-control" id="alamat" rows="6" placeholder="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec urna ornare id amet ut neque duis sit. Netus a, purus euismod congue sagittis eget justo est integer. Magna porttitor quisque suspendisse magna."></textarea>
              </div>
              <div class="px-3 w-100">
                <a class="btn btn-booking mb-2" data-toggle="modal" data-target="#modalNegoSuccess" data-dismiss="modal" aria-label="Close">Lakukan Nego</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal Nego Success -->
    <div class="modal fade" id="modalNegoSuccess" tabindex="-1" aria-labelledby="modalNegoSuccessLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header noborder">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <svg viewBox="0 0 100 100" class="animate mb-5">
              <filter id="dropshadow" height="100%">
                <feGaussianBlur in="SourceAlpha" stdDeviation="3" result="blur"/>
                <feFlood flood-color="rgba(76, 175, 80, 1)" flood-opacity="0.5" result="color"/>
                <feComposite in="color" in2="blur" operator="in" result="blur"/>
                <feMerge> 
                  <feMergeNode/>
                  <feMergeNode in="SourceGraphic"/>
                </feMerge>
              </filter>
              
              <circle cx="50" cy="50" r="46.5" fill="none" stroke="rgba(76, 175, 80, 0.5)" stroke-width="5"/>
              
              <path d="M67,93 A46.5,46.5 0,1,0 7,32 L43,67 L88,19" fill="none" stroke="rgba(76, 175, 80, 1)" stroke-width="5" stroke-linecap="round" stroke-dasharray="80 1000" stroke-dashoffset="-220"  style="filter:url(#dropshadow)"/>
            </svg>
            <h1 class="h2 text-center mb-2">Selamat!</h1>
            <h2 class="font-regular text-center mb-4">Negosiasi harga telah terkirim, tunggu jawaban dari Vendor</h2>
            <a class="btn btn-nego mb-2">Detail transaksi</a>
            <a class="btn btn-booking mb-2">Kembali ke Home</a>
          </div>
        </div>
      </div>
    </div>

