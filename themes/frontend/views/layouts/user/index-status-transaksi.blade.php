@extends('layouts.app')
@section('content')

<!-- INCLUDE HEADER -->
    @include('layouts.header.header-home')
    <!-- END INCLUDE HEADER -->

<div class="container">
      <div class="text-right mb-4">
        <button type="button" class="btn px-5" style="background-color: #E78A6E; color: white;">
          Gabung jadi vendor
        </button>
      </div>
      <!-- INCLUDE SIDE MENU PROFILE USER -->
      @include('layouts.bar-right.list-menu-user')
      
        </div>
        <div class="col-md-8 col-sm-7">
          <!-- INCLUDE HISTORY VENDOR  -->
         {{--  @include('layouts.profile-user.history-vendor')  --}}
          <!-- INCLUDE HISTORY VENDOR  -->
         

         <!-- INCLUDE STATUS TRANSAKSI  -->
         @include('layouts.profile-user.status-transaksi')

         <!-- INCLUDE STATUS TRANSAKSI  -->
        </div>
      </div>
</div>
@endsection