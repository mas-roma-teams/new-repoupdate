@extends('layouts.app')
@section('content')


<!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
<!-- END INCLUDE HEADER -->


  <div class="container">
    <div class="row">

            <div class="col-3">
              <!-- FOTO USER LEFT -->
              @include('layouts.user.foto-user')

              <!-- LIST MENU USER -->
              @include('layouts.bar-right.list-menu-user')


            </div>

            <div class="col-9">
                <div class="row">
                    <div class="col-12">
                        <div id="ticket">
                          <h1 class="mb-3">TERIMA KASIH.. !!!</h1>
                          <p><b>*Sebarkan kode ini dan dapatkan benefit nya</b></p>
                          <table>
                            
                            <tbody id="entries">
                              
                              
                              
                            </tbody>
                            <tfoot>
                              <tr>
                                <th class="total-font">Kode Referal :</th>
                                <th id="total" class="total-font kode-font">KHSAIH-1091090</th>
                              </tr>
                            </tfoot>
                          </table>
                        </div>
                    </div>
                   
                </div>
                <br>
                 <div class="row">
                    <div class="col-6 mb-2">
                        <div class="card">
                            <div class="card-body">
                                <h4>Jumlah Transaksi</h4>
                                <h3 class="text-orange">54</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="card">
                            <div class="card-body">
                                <h4>Total Transaksi</h4>
                                <h3 class="text-orange">Rp.98.000.000</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">

                    </div>
                </div>
            </div>

    </div>

  </div>



