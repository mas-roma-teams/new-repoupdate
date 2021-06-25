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
      <h2>History Penarikan</h2>
    </div>
    <div class="card mb-5">
      <div class="card-body">
       
        <div class="tab-content" id="pills-tabContent">
          <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab">
           
            <table id="example" class="table table-striped table-bordered" style="width:100%">
              <thead>
                <tr>
                  <th>No</th>
                  <th>ID Penarikan</th>
                  <th>Jumlah Penarikan</th>
                  <th>Metode Penarikan</th>
                  <th>Waktu Penarikan</th>
                  
                </tr>
              </thead>
              <tbody>
                @if( $cekSaldo->count() > 0 )
                <?php $i=1; ?>
                @foreach($cekSaldo as $post)
                <tr>
                  <td>{{ $i }}</td>
                  <td>{{ $post->id_penarikan }}</td>
                  <td>

                    Rp. {{ number_format($post->jumlah_penarikan,0,',','.') }}</td>

                    @if($post->metode_penarikan == 'ovo')
                    <td><img src="{{ asset('themes/frontend/logo-payment/logo-ovo.png') }}" class="img-fluid gambar-payment-two"></td>
                    @elseif($post->metode_penarikan == 'gopay')
                    <td><img src="{{ asset('themes/frontend/logo-payment/gopay.png') }}" class="img-fluid gambar-payment-two"></td>
                    @elseif($post->metode_penarikan == 'indomaret')
                    <td><img src="{{ asset('themes/frontend/logo-payment/indomaret.jpg') }}" class="img-fluid gambar-payment-two"></td>
                    @elseif($post->metode_penarikan == 'alfa')
                    <td><img src="{{ asset('themes/frontend/logo-payment/alfa.png') }}" class="img-fluid gambar-payment-two"></td>
                    @elseif($post->metode_penarikan == 'linkaja')
                    <td><img src="{{ asset('themes/frontend/logo-payment/link-aja.png') }}" class="img-fluid gambar-payment-two"></td>
                    @elseif($post->metode_penarikan == "atmbersama")
                    <td><img src="{{ asset('themes/frontend/logo-payment/atm-bersama.png') }}" class="img-fluid gambar-payment-two"></td>
                    @endif


                    <td>{{ $post->created_at->format("l, Y-m-d H:i:s\n") }}</td>
                    
                  </tr>
                  <?php $i++; ?>
                  
                  @endforeach


                  @else 
                  <tr>
                    <td colspan="5">BELUM ADA TRANSAKSI PENARIKAN</td>
                  </tr>
                  @endif
                  
                </tbody>
                
              </table>

              <!-- START PAGINATION -->
              {{ $cekSaldo->links('layouts.pagination.pagination') }} 
              
              
            </div>
            
          </div>
        </div>
      </div>
    </div>

  </div>

</div>

@endsection



