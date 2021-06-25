@extends('layouts.app')
@section('content')


<!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
<!-- END INCLUDE HEADER -->


  <div class="container">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Homepage</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Vendor</li>
      </ol>
    </nav>
    <div class="mb-4">
      <img src="https://via.placeholder.com/1100x250" alt="">
    </div>
    <h4 class="font-regular mb-5">Gabung Menjadi Vendor Dan Raih Keuntunganya</h4>

    <div class="row">
        <div class="col-lg-12">
            {{-- <div class="card">
                <div class="card-body"> --}}
                    <form action="{{route('vendors.prosestambahvendor')}}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="nama_kategori">Nama Vendor</label>
                            <input type="text" name="nama_vendor"
                                class="form-control  @error('nama_vendor') is-invalid @enderror"
                                placeholder="Nama vendor" value="{{ old('nama_vendor') }}">
                            @error('nama_vendor')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="nama_kategori">Photo jasa</label>
                            <input type="file" name="photo_vendor" class="dropify"
                                data-allowed-file-extensions="jpg png jpeg" data-max-file-size="2M" />
                            @error('photo_vendor')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                        <div class="row">
                           <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Whatsapp</label>
                                    <input type="text" name="kontak" id="kontak" placeholder="whatsapp" class="form-control">
                                    <small>No ini akan dijadikan sebagai alat tarnsaksi nego dengan pelanggan anda</small>
                                    @error('kontak')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">

                                  <div class="form-group">
                                    <label for="exampleFormControlSelect1">Pilih Provinsi</label>
                                    <select class="form-control" id="province" name="provinsi_id">
                                     <option>-- PILIH --</option>
                                     @foreach ($provincess as $id => $name)
                                     <option value="{{ $name->id }}">{{  $name->name }}</option>
                                     @endforeach
                                    </select>
                                    @error('provinsi_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                                  </div>

                            </div>
                            <div class="col-md-3">

                                <div class="form-group">
                                    <label for="exampleFormControlSelect1">Pilih Kota</label>
                                    <select name="kabupaten_id" class="form-control" id="city">
                                     <option value="0">-- PILIH --</option>

                                    </select>
                                    @error('kabupaten_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                                  </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="">Pilih Kecamatan</label>
                                    <select name="kecamatan_id" class="form-control" id="district">
                                        <option value="0">-- PILIH --</option>

                                       </select>
                                       @error('kecamatan_id')
                                       <small class="text-danger">{{ $message }}</small>
                                   @enderror

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="">Kelurahan</label>
                                    <select name="kelurahan_id" class="form-control" id="villages">
                                        <option value="0">-- PILIH --</option>

                                       </select>
                                    @error('kelurahan_id')
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


                    <input type="hidden" name="status" value="1" class="form-control">
                        <div class="form-group">
                            <label for="">Nomor KTP </label>
                            <input type="number" placeholder="ktp" name="ktp" id="ktp" class="form-control">
                           <small>KTP pemilik vendor</small>
                            @error('ktp')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                        </div>
                        <button class="btn btn-me" type="submit">Simpan</button>
                    </form>
                {{-- </div>
            </div> --}}
        </div>
    </div>

  </div>
  @endsection



