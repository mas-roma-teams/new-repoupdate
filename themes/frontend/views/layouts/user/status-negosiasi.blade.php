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
           
            <table id="example" class="table table-striped table-bordered" style="width:100%">
              <thead>
                <tr>
                  <th>No</th>
                  <th>ID Negosiasi</th>
                  <th>Nama Lengkap</th>
                  <th>Jumlah Negosiasi</th>
                  <th>Keterangan</th>
                  <th>Alamat</th>
                  <th>Status</th>
                  <th>#</th>
                  <!-- <th>Alamat</th>
                  <th>Keterangan</th>
                  <th>Waktu Penarikan</th> -->
                  
                </tr>
              </thead>
              <tbody>
                @if( $cekNegosiasi->count() > 0 )
                <?php $i=1; ?>
                @foreach($cekNegosiasi as $post)
                <tr>
                  <td>{{ $i }}</td>
                  <td>{{ $post->id_negosiasi }}</td>
                  <td>{{ $post->nama_user }}</td>
                  <td>

                    Rp. {{ number_format($post->jumlah_negosiasi,0,',','.') }}</td>

                    <td>{{ $post->alamat_lengkap }}</td>
                    <td>{{ $post->keterangan }}</td>

                    @if($post->status == '1')
                    <td> <div class="alert alert-primary" role="alert">
                        Negosiasi Diajukan
                    </div></td>
                    @elseif($post->status == '2')
                    <td> <div class="alert alert-success" role="alert">
                    Negosiasi Diterima
                    </div></td>
                    @else($post->status == '0')
                    <td> <div class="alert alert-danger" role="alert">
                    Negosiasi Ditolak
                    </div></td>
                    @endif

                    

                   
                    <td>
                
                    <button type="button" class="btn btn-danger">Batalkan Negosiasi</button>
                    <button type="button" class="btn btn-info">Detail Negosiasi</button>
                    </td>
                    
                    
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



