@extends('layouts.vuex')

@section('content')
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h2 class="content-header-title float-left mb-0">Admin</h2>
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">Dashboard</a>
                                </li>
                                 <li class="breadcrumb-item"><a href="{{route('admin.admin.index')}}">Admin</a>
                                </li>
                                <li class="breadcrumb-item active">Edit Data Admin
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="content-body">
            <section id="basic-horizontal-layouts">
                <div class="row match-height">
            <div class="col-md-12 col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Tambah Data</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <form action="{{ route('admin.admin.update',[$admin->id]) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="_method" value="PUT">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group row">
                                                <div class="col-md-4">

                                                    <span>Photo Profile</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="position-relative has-icon-left">
                                                        <input type="file" name="photo_profile" class="dropify photo_profile" data-allowed-file-extensions="jpg png jpeg" data-max-file-size="2M" @if($admin->photo_profile) data-default-file="{{asset('storage/'.$admin->photo_profile)}}" @endif value="{{ $admin->photo_profile }}" />
                                                        <input type="hidden" name="photo_profile_" id="photo_profile_" value="0">
                                                        @error('photo_profile')
                                                            <small class="text-danger">{{ $message }}</small>
                                                        @enderror

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group row">
                                                <div class="col-md-4">
                                                    <span>Nama Lengkap</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="position-relative has-icon-left">
                                                        <input  type="text" id="fname-icon" class="form-control" name="name" placeholder="First Name" value="{{old('nama_jasa', $admin->name)}}">
                                                        <div class="form-control-position">
                                                            <i class="feather icon-user"></i>
                                                        </div>
                                                        @error('name')
                                                        <small class="text-danger">{{ $message }}</small>
                                                    @enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group row">
                                                <div class="col-md-4">
                                                    <span>Email</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="position-relative has-icon-left">
                                                        <input type="email" id="email-icon" class="form-control" name="email" placeholder="Email" value="{{ $admin->email }}" >
                                                        <div class="form-control-position">
                                                            <i class="feather icon-mail"></i>
                                                        </div>
                                                        @error('email')
                                                        <small class="text-danger">{{ $message }}</small>
                                                    @enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>



                                        <div class="col-md-8 offset-md-4">
                                            <button type="submit" class="btn btn-primary mr-1 mb-1">Submit</button>
                                            <button type="reset" class="btn btn-outline-warning mr-1 mb-1">Reset</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
                </div>
            </section>
        </div>
    </div>
</div>
@endsection
