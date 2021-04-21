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
                  <img src="{{asset('storage/'.$profilevendor->photo_vendor)}}" alt="">
                </div>
                <h4 class="text-ptserif text-center mb-2">{{$profilevendor->nama_vendor}}</h4>
                <h5 class="text-secondary mb-4">{{ $profilevendor->kecamatan->name}}-{{$profilevendor->wilayah->name}}</h5>
                <div class="d-flex align-items-center">
                  <img src="images/icon-verified.png" alt="">
                    @if($profilevendor)
                  <p class="text-success font-semibold ml-2">Terverifikasi</p>
                  @else
                  <p class="text-danger font-semibold ml-2">Belum Verifikasi</p>
                  @endif
                </div>
              </div>

              @include('layouts.bar-right.list-menu-vendor')


            </div>

            <div class="col-9">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="{{ route('vendors.prosestambahjasa') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="nama_kategori">Nama Jasa</label>
                                    <input type="text" name="nama_jasa"
                                        class="form-control  @error('nama_jasa') is-invalid @enderror"
                                        placeholder="Nama jasa" value="{{ old('nama_jasa') }}">
                                    @error('nama_jasa')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="nama_kategori">Photo jasa</label>
                                    <input type="file" name="photo_jasa" class="dropify"
                                        data-allowed-file-extensions="jpg png jpeg" data-max-file-size="2M" />
                                    @error('photo_jasa')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="">Kategori</label>
                                            <select name="kategori_id" class="form-control" id="">
                                                <option value="">Pilih kategori</option>
                                                @foreach($kategori as $row)
                                                    <option value="{{ $row->id }}" @if (old('kategori_id')==$row->id)
                                                        selected="selected" @endif>{{ $row->nama_kategori }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            <input type="hidden" name="vendor_id" value="{{$cekVendor->id}}" class="form-control">
                                            @error('kategori_id')
                                                <small class="text-danger">{{ $message }}</small>
                                            @enderror
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="">Harga Jasa</label>
                                        <input type="text" name="harga"
                                            class="form-control  @error('harga') is-invalid @enderror"
                                            placeholder="Harga" id="harga" value="{{ old('harga') }}">
                                        @error('harga')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="">Jumlah dp %</label>
                                        <input type="text" name="jumlah_dp" id="jumlah_dp"
                                            class="form-control  @error('jumlah_dp') is-invalid @enderror"
                                            placeholder="Jumlah DP" value="{{ old('jumlah_dp') }}">
                                        @error('jumlah_dp')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                    <div class="col-md-4">
                                        <label for="">Jumlah dp Rp</label>
                                        <input type="text"
                                            class="form-control  @error('jumlah_dp_uang') is-invalid @enderror"
                                            placeholder="Jumlah DP" name ="jumlah_dp_uang"id="jumlah_dp_uang"
                                            value="{{ old('jumlah_dp_uang') }}" readonly>
                                        @error('jumlah_dp_uang')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="">Deskripsi</label>
                                    <textarea id="editor" name="deskripsi"
                                        class="form-control @error('deskripsi') is-invalid @enderror" id="" cols="30"
                                        rows="10">{{ old('deskripsi') }}</textarea>
                                    @error('deskripsi')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                                <input type="hidden" name="status" value="1" class="form-control">

                                <button class="btn btn-me" type="submit">Simpan</button>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>

  </div>
