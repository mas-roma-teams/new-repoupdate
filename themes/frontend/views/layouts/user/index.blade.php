@extends('layouts.app')
@section('content')

 <!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
 <!-- END INCLUDE HEADER -->
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
          @include('layouts.profile-user.history-vendor')
          <!-- INCLUDE HISTORY VENDOR  -->
         

         
        </div>
      </div>
</div>
@endsection