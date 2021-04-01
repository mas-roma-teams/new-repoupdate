@extends('layouts.app')
@section('content')


<div class="container">
      <div class="text-right mb-4">
        <button type="button" class="btn btn-primary px-5">
          Gabung jadi mitra
        </button>
      </div>
      <!-- INCLUDE SIDE MENU PROFILE USER -->
      @include('layouts.bar-right.list-menu-user')
      
        </div>
        <div class="col-md-8 col-sm-7">
          <!-- INCLUDE HISTORY VENDOR  -->
          @include('layouts.profile-user.user-profile')
         

         <!-- INCLUDE STATUS TRANSAKSI  -->
         {{-- @include('layouts.profile-user.status-transaksi') --}}

         <!-- INCLUDE STATUS TRANSAKSI  -->

         <!-- INCLUDE MODAL USER CRUD  -->
         @include('layouts.user.modal-edit-user')

         <!-- END MODAL USER CRUD  -->
        </div>
      </div>
</div>
@endsection