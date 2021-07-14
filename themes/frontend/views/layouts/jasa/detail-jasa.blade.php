@extends('layouts.app')
@section('content')

<!-- INCLUDE HEADER -->
@include('layouts.header.header-home')
    <!-- END INCLUDE HEADER -->
<div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Homepage</a></li>
          <li class="breadcrumb-item"><a href="#">List Jasa</a></li>
          <li class="breadcrumb-item active" aria-current="page">Detail Jasa</li>
        </ol>
      </nav>
      <div class="banner mb-4">
        <img src="{{ asset('themes/frontend/images/banner-detail.jpg') }}" alt="">
      </div>
      <h4 class="font-regular mb-4">“{{ $detail->deskripsi }} </h4>
      <div class="row">
        <div class="col-sm-7">
          <div class="card-detail mb-5">
            <div class="d-flex justify-content-between mb-4">
              <div class="d-flex flex-column align-items-md-baseline align-items-center">
                <img src="{{ asset('themes/frontend/images/icon-diskon.png') }}" alt="">
                <h2 class="text-primary font-bold mt-2">{{ $detail->jumlah_dp }}%</h2>
                <h5 class="text-ptserif text-secondary mt-2">DP</h5>
              </div>
              <div class="d-flex flex-column align-items-md-baseline align-items-center">
                <img src="{{ asset('themes/frontend/images/icon-lihat.png') }}" alt="">
                <h2 class="text-primary font-bold mt-2">{{ $detail->dilihat }}</h2>
                <h5 class="text-ptserif text-secondary mt-2">Dilihat pengguna</h5>
              </div>
              <div class="d-flex flex-column align-items-md-baseline align-items-center">
                <img src="{{ asset('themes/frontend/images/icon-transaksi.png') }}" alt="">
                <h2 class="text-primary font-bold mt-2">{{ $detail->transaksis->count() }}</h2>
                <h5 class="text-ptserif text-secondary mt-2">Transaksi</h5>
              </div>
            </div>
            <h4 class="font-light mb-3">Harga Jasa</h4>
            <div class="d-flex align-items-center mb-2">
              <h1 class="color-primary">Rp {{ number_format($detail->harga,0,',','.') }} </h1>
              <h3 class="text-regular text-secondary">/ hari</h3>
            </div>
            <p class="mb-4">*Harga bisa berubah sesuai dengan jarak acara, tanya vendor untuk memastikan harga jasa yang harus dibayar</p>
            @if ($cekVendor)
                @if($detail->vendors->user_id == Auth::user()->id && Auth::user()->id == TRUE)


  <!-- KOSONG -->

                  @elseif(Auth::user()->id !== $detail->vendors->user_id)

                  <a class="btn btn-nego mb-2" data-toggle="modal" data-target="#modalNego">Nego harga</a>
                  <a class="btn btn-booking mb-2">Booking</a>

                  @endif

                  @else 
                  <a class="btn btn-nego mb-2" data-toggle="modal" data-target="#modalNego">Nego harga</a>
                  <a class="btn btn-booking mb-2">Booking</a>
            @endif
            
          </div>
        </div>
        <div class="col-sm-5">
          <div class="card-profile mb-5">
            <div class="profile square mb-3 mt-3">
            @if($detail->vendors('photo_vendors') == true)

            <img src="{{ asset('themes/frontend/images/' . $detail->vendors->photo_vendor)  }}" alt="" class="foto-profile">
            @else
            <img src="{{ asset('themes/frontend/images/user.png') }}" alt="" class="foto-profile">
            @endif
            </div>

            <h4 class="text-ptserif text-center mb-2">{{ $detail->vendors->nama_vendor }}</h4>
            <h5 class="text-secondary mb-4">{{ ucfirst($detail->vendors->kecamatan->name) }}, {{ $detail->vendors->wilayah->name }}</h5>
            <div class="d-flex align-items-center mb-5">
              <img src="images/icon-verified.png" alt="">
              <p class="text-success font-semibold ml-2">Verified Account</p>
            </div>
            @if ($cekVendor)
                @if($detail->vendors->user_id == Auth::user()->id && Auth::user()->id == TRUE)


  <!-- KOSONG -->

                  @elseif(Auth::user()->id !== $detail->vendors->user_id)

                  <a href="{{ url('chat/' . $detail->vendors->id . '?jasa=' . $detail->slug) }}" class="btn-nego">Kirim Pesan</a>

                  @endif

                  @else 
                  <a href="{{ url('chat/' . $detail->vendors->id . '?jasa=' . $detail->slug) }}" class="btn-nego">Kirim Pesan</a>
            @endif

          </div>
        </div>
      </div>
      <div class="detail-projek mb-5">
        <h2 class="text-center text-ptserif">Jasa Lainnya</h2>
        <h5 class="font-light text-center mb-3">Beberapa Jasa kami</h5>
        <div class="card p-3">
          <div class="card-body">
            <div class="row">

              @foreach($jasa_lainnya as $jasa_lain)
              <div class="col-md-4 col-sm-6 mb-4">
                <div class="card">
                  <img src="{{ asset('themes/frontend/images/'. $jasa_lain->photo_jasa) }}" alt="">

                  <div class="card-body">
                    <h4><a href="{{ url('/jasa-detail/'. $jasa_lain->slug ) }}">{{ $jasa_lain->nama_jasa }}</a></h4>
                    <p class="font-light mt-2">{{ $jasa_lain->created_at }}</p>
                  </div>
                </div>
              </div>
              @endforeach

            </div>
          </div>
        </div>
      </div>



      {{-- <div class="detail-testi mb-5">
        <h2 class="text-center text-ptserif">Testimoni pengguna kami</h2>
        <h5 class="font-light text-center mb-4">Komentar mereka yang telah pernah menggunakan jasa kami</h5>
        <div class="row pt-5">
          <div class="col-md-4 col-sm-6 mb-5">
            <div class="card p-3">
              <div class="profile medium">
                <img src="images/ex-profile-1.jpg" alt="">
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
                <img src="images/ex-profile-1.jpg" alt="">
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
                <img src="images/ex-profile-1.jpg" alt="">
              </div>
              <div class="card-body">
                <h4 class="color-primary mb-2 mt-4">Norman Deus</h4>
                <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. Eget ultrices consectetur id id vitae enim diam id. Sed aliquam pellentesque elementum </h5>
              </div>
            </div>
          </div>
        </div>
      </div> --}}
      {{-- <div class="detail-forum mb-5">
        <h2 class="text-ptserif mb-2">Forum Diskusi</h2>
        <div class="card mb-3">
          <div class="card-body">
            <div class="d-flex flex-sm-row flex-column justify-content-between">
              <div class="d-flex d-flex w-100 justify-content-sm-start align-items-center">
                <img class="mr-sm-2 mr-4" src="images/icon-qna.png" alt="">
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
                <img src="images/ex-profile-1.jpg" alt="">
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
              <img src="images/ex-profile-1.jpg" alt="">
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
              <img src="images/ex-profile-1.jpg" alt="">
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
                <img src="images/ex-profile-1.jpg" alt="">
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
              <img src="images/ex-profile-1.jpg" alt="">
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
              <img src="images/ex-profile-1.jpg" alt="">
            </div>
            <div class="form-group w-100 mb-0">
              <input type="text" class="form-control w-100" id="answer" placeholder="Tulis komentar disini . . . .">
            </div>
          </div>
        </div>
      </div> --}}
    </div>
    
    @if (Auth::user())
      
<div class="modal fade" id="modalNego" tabindex="-1" aria-labelledby="modalNegoLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header noborder">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
          
          
          <form action="{{ url('/tambah/negosiasi') }}" method="POST">
            @csrf
                       
                      

                        <div class="row">
                           
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Nama Lengkap</label>
                                    <input type="text" name="nama_user" id="nama_user" placeholder="whatsapp" class="form-control" value="{{ Auth::user()->name }}" disabled>
                                   
                                    @error('nama_user')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">

                                  <div class="form-group">
                                    <label for="exampleFormControlSelect1">Pilih Provinsi</label>
                                    <select class="form-control" id="province" name="id_province">
                                     <option>-- PILIH --</option>
                                     @foreach ($provincess as $id => $name)
                                     <option value="{{ $name->id }}">{{  $name->name }}</option>
                                     @endforeach
                                    </select>
                                    @error('id_province')
                                    <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                  </div>

                            </div>
                            <div class="col-md-12">

                                <div class="form-group">
                                    <label for="exampleFormControlSelect1">Pilih Kota</label>
                                    <select name="id_city" class="form-control" id="city">
                                     <option value="0">-- PILIH --</option>

                                    </select>
                                    @error('id_city')
                                    <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Pilih Kecamatan</label>
                                    <select name="id_district" class="form-control" id="district">
                                        <option value="0">-- PILIH --</option>

                                       </select>
                                       @error('id_district')
                                       <small class="text-danger">{{ $message }}</small>
                                   @enderror

                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Kelurahan</label>
                                    <select name="id_villages" class="form-control" id="villages">
                                        <option value="0">-- PILIH --</option>

                                       </select>
                                    @error('id_villages')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                           
                           <div class="col-md-12">
                               <div class="form-group">
                                   <label for="">Jumlah Negosiasi</label>
                                   <input type="text"  class="form-control" id="rupiah" name="jumlah_negosiasi"  data-a-sign="Rp. " data-a-dec="," data-a-sep="." placeholder="Klik Untuk masukan Jumlah Negosiasi">
                                  
                                   @error('jumlah_negosiasi')
                                       <small class="text-danger">{{ $message }}</small>
                                   @enderror
                               </div>
                           </div>
                       </div>

                        <div class="form-group">
                            <label for="">Alamat lengkap</label>
                            <textarea name="alamat_lengkap" id="alamat_lengkap" class="form-control" placeholder="alamat"></textarea>
                            @error('alamat_lengkap')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                        </div>

                        <div class="form-group">
                            <label for="">Alamat lengkap</label>
                            <textarea name="keterangan" id="keterangan" class="form-control" placeholder="alamat"></textarea>
                            @error('keterangan')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                        </div>


                    <input type="hidden" name="status" value="1" class="form-control">
                        
                        <button class="btn btn-me" type="submit">Simpan</button>
                    </form>
             
        </div>
      </div>
    </div>

    <!-- Modal Nego Success -->

  

    @else 
      @include('layouts.modal.modal-login')
    
    @endif
    
@endsection
