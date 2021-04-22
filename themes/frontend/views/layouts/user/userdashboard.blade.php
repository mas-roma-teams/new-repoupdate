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

                <div class="row mb-3">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4>Kode referal</h4>
                                <h3 class="text-orange">ALAPESTA0123</h3>
                                <p>Dapatkan penghasilan 2% dari setiap transaksi dengan cara memasukan kode referal di setiap transaksi kamu, atau kamu juga bisa bantu orang sekitarmu yang membutuhkan jasa untuk acara mereka dan kamu bisa dapat penghasilan dari transaksi mereka dengan cara memasukan kode referal ini , jadi tunggu apalagi, kamu bisa dapat penghasilan dengan modal ngomong, selamat mencoba</p>
                            </div>
                        </div>
                    </div>
                </div>
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



