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
                    <form action="#" method="POST"
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
                                    <input type="text" name="kontak" id="kontak" class="form-control">
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
                                    <label>Provinsi</label>
                                    <select class="form-control" name="provinsi_id"  data-placeholder="Pilih provinsi" style="width:100%;">
                                     @foreach ($provinsi as $p)
                                        <option value="{{$p->id}}">{{$p->name}}</option>
                                     @endforeach
                                    </select>
                                    @error('provinsi_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                                  </div>

                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="">Kabupaten/Kota</label>
                                    <select class="form-control" name="kabupaten_id"  data-placeholder="Pilih kota" style="width:100%;">
                                        <option>Pilih Kota/Kabupaten</option>
                                    </select>
                                    @error('kabupaten_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="">Kecamatan</label>
                                    <input type="number" name="kecamatan_id" id="kecamatan_id" class="form-control">
                                    @error('kecamatan_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="">Kelurahan</label>
                                    <input type="number" name="kelurahan_id" id="kelurahan_id" class="form-control">
                                    @error('kelurahan_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="">Alamat lengkap</label>
                            <textarea name="alamat_lengkap" id="alamat_lengkap" class="form-control"></textarea>
                            @error('alamat_lengkap')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                        </div>


                        <div class="form-group">
                            <label for="">Status</label>
                            <select name="status" class="form-control" id="">
                                <option value="">Pilih status</option>

                                <option value="1" @if (old('status')=='1' ) selected="selected" @endif>Aktif
                                </option>
                                <option value="0" @if (old('status')=='0' ) selected="selected" @endif>Tidak
                                    aktif</option>

                            </select>
                            @error('status')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                        </div>
                        <div class="form-group">
                            <label for="">Nomor KTP</label>
                            <input type="number" name="ktp" id="ktp" class="form-control">
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



