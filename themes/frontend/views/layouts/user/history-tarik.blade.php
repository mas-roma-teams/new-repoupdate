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
                      <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                          <a class="nav-link active" id="pills-all-tab" data-toggle="pill" href="#pills-all" role="tab" aria-controls="pills-all" aria-selected="true">Semua</a>
                        </li>
                        <!-- <li class="nav-item" role="presentation">
                          <a class="nav-link" id="pills-negosiasi-tab" data-toggle="pill" href="#pills-negosiasi" role="tab" aria-controls="pills-negosiasi" aria-selected="false">OVO</a>
                        </li>
                        <li class="nav-item" role="presentation">
                          <a class="nav-link" id="pills-dealing-tab" data-toggle="pill" href="#pills-dealing" role="tab" aria-controls="pills-dealing" aria-selected="false">Dealing</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pills-dp-tab" data-toggle="pill" href="#pills-dp" role="tab" aria-controls="pills-dp" aria-selected="false">DP Luns</a>
                          </li>
                        <li class="nav-item" role="presentation">
                          <a class="nav-link" id="pills-dibayar-tab" data-toggle="pill" href="#pills-dibayar" role="tab" aria-controls="pills-dibayar" aria-selected="false">Sudah dibayar</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pills-selesai-tab" data-toggle="pill" href="#pills-selesai" role="tab" aria-controls="pills-selesai" aria-selected="false">Selesai</a>
                          </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pills-batal-tab" data-toggle="pill" href="#pills-batal" role="tab" aria-controls="pills-batal" aria-selected="false">Batal</a>
                          </li> -->
                      </ul>
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


                                          <td>{{ $createdAt }}</td>
                                          
                                      </tr>
                                      <?php $i++; ?>
                                      
                                      @endforeach
                                     
                                  </tbody>
                                 
                              </table>
                           
                            
                        </div>
                        
                      </div>
                    </div>
                  </div>
            </div>

    </div>

  </div>



