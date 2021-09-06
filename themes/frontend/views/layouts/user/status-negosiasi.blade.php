@extends('layouts.app')
@section('content')


<!-- INCLUDE HEADER -->
@include('layouts.header.header-home')
<!-- END INCLUDE HEADER -->


<div class="container">
  <div class="row">

    <div class="col-3">
     @include('layouts.user.foto-user')

     <!-- LIST MENU USER -->
     @include('layouts.bar-right.list-menu-user')

     


   </div>



   <div class="col-9">
    
    <div class="d-flex justify-content-between mb-3">
      <h2>Status Negosiasi</h2>
    </div>
    <div class="card mb-5">
      <div class="card-body">
       
        <div class="tab-content" id="pills-tabContent">
          <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab">
            <!-- LOOPING UNTUK BAGIAN VENDOR -->
            @foreach ( $cekNegosiasisUser as $negoasiasiUser => $value)
            <div class="layout-nego">
                <hr class="pembatas" /> 
                <div class="header-nego">
                  <img class="logo-vendor" src="https://image.flaticon.com/icons/png/512/174/174848.png" alt="">
                  <h3> Nama Vendor </h3>
                  <h5> DAERAH ASAL VENDOR </h5>
                </div>

                <!-- LOOPING UNTUK BAGIAN JASA YANG DIPUNYAI VENDOR -->
               
              


                  @if (!$value->id_vendor >= 1)
                  @foreach ($value as $data)
                    <p>DATA JASA 1 VENDOR </p>
                  @endforeach

                  @elseif(!$value->id_vendor == 1)
                  <p>DATA VENDOR MASIH LEBIH DARI 1</p>
                  @endif
              
                
            
              
               
               
              
               

                
                
               
                
                <!-- LOOPING UNTUK BAGIAN JASA YANG DIPUNYAI VENDOR -->
                

                
                

                <hr class="pembatas" /> 

            </div>
            @endforeach

           

           
            <!-- LOOPING UNTUK BAGIAN VENDOR -->
           
            
          </div>
        </div>
      </div>
    </div>

  </div>

</div>
</div>

@endsection



