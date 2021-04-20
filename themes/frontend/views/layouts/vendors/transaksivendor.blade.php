@extends('layouts.app')
@section('content')


<!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
<!-- END INCLUDE HEADER -->


  <div class="container">
    <div class="row">

            <div class="col-3">
              <div class="card-profile mb-5 p-4">
                <div class="profile square mb-3">
                  <img src="{{asset('storage/'.$profilevendor->photo_vendor)}}" alt="">
                </div>
                <h4 class="text-ptserif text-center mb-2">{{$profilevendor->nama_vendor}}</h4>
                <h5 class="text-secondary mb-4">{{ $profilevendor->kecamatan->name}}-{{$profilevendor->wilayah->name}}</h5>
                <div class="d-flex align-items-center">
                  <img src="images/icon-verified.png" alt="">
                    @if($profilevendor)
                  <p class="text-success font-semibold ml-2">Terverifikasi</p>
                  @else
                  <p class="text-danger font-semibold ml-2">Belum Verifikasi</p>
                  @endif
                </div>
              </div>

              @include('layouts.bar-right.list-menu-vendor')


            </div>



            <div class="col-9">
                <div class="d-flex justify-content-between mb-3">
                    <h2>Status transaksi</h2>
                  </div>
                  <div class="card mb-5">
                    <div class="card-body">
                      <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                          <a class="nav-link active" id="pills-all-tab" data-toggle="pill" href="#pills-all" role="tab" aria-controls="pills-all" aria-selected="true">Semua</a>
                        </li>
                        <li class="nav-item" role="presentation">
                          <a class="nav-link" id="pills-negosiasi-tab" data-toggle="pill" href="#pills-negosiasi" role="tab" aria-controls="pills-negosiasi" aria-selected="false">Negosiasi</a>
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
                          </li>
                      </ul>
                      <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab">
                            @forelse ($transaksiall as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                  <div class="profile small mr-3">
                                    <img src="{{asset('storage/'.$row->user->photo_profile)}}" alt="">
                                  </div>
                                  <div class="d-flex flex-column">
                                    <h5 class="font-medium">{{$row->user->name}}</h5>
                                    <p>{{$row->created_at}}</p>
                                  </div>
                                </div>
                                @if($row->status == 0)
                                <div class="btn btn-warning">Negosiasi</div>
                                @elseif($row->status == 1)
                                <div class="btn-dealing">Dealing</div>
                                @elseif($row->status == 2)
                                <div class="btn btn-info">DP Lunas</div>
                                @elseif($row->status == 3)
                                <div class="btn btn-paid">Pembayaran Lunas</div>
                                @elseif($row->status == 4)
                                <div class="btn btn-success">Transaksi Selesai</div>
                                @elseif($row->status == 5)
                                <div class="btn btn-danger">Transaksi Batal</div>
                                @endif

                              </div>
                            @empty
                            <p>Anda belum memiliki jasa</p>
                            @endforelse
                        </div>
                        <div class="tab-pane fade" id="pills-negosiasi" role="tabpanel" aria-labelledby="pills-negosiasi-tab">
                            @forelse ($transaksinego as $row)
<div class="list-transaksi w-100 px-3 mb-3">
    <div class="d-flex align-items-center">
      <div class="profile small mr-3">
        <img src="{{asset('storage/'.$row->user->photo_profile)}}" alt="">
      </div>
      <div class="d-flex flex-column">
        <h5 class="font-medium">{{$row->user->name}}</h5>
        <p>{{$row->created_at}}</p>
      </div>
    </div>
    @if($row->status == 0)
    <div class="btn btn-warning">Negosiasi</div>
    @elseif($row->status == 1)
    <div class="btn-dealing">Dealing</div>
    @elseif($row->status == 2)
    <div class="btn btn-info">DP Lunas</div>
    @elseif($row->status == 3)
    <div class="btn btn-paid">Pembayaran Lunas</div>
    @elseif($row->status == 4)
    <div class="btn btn-success">Transaksi Selesai</div>
    @elseif($row->status == 5)
    <div class="btn btn-danger">Transaksi Batal</div>
    @endif

  </div>
@empty
<p>Anda belum memiliki jasa</p>
@endforelse
                        </div>

                        <div class="tab-pane fade" id="pills-dealing" role="tabpanel" aria-labelledby="pills-dealing-tab">
                            @forelse ($transaksideal as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                  <div class="profile small mr-3">
                                    <img src="{{asset('storage/'.$row->user->photo_profile)}}" alt="">
                                  </div>
                                  <div class="d-flex flex-column">
                                    <h5 class="font-medium">{{$row->user->name}}</h5>
                                    <p>{{$row->created_at}}</p>
                                  </div>
                                </div>
                                @if($row->status == 0)
                                <div class="btn btn-warning">Negosiasi</div>
                                @elseif($row->status == 1)
                                <div class="btn-dealing">Dealing</div>
                                @elseif($row->status == 2)
                                <div class="btn btn-info">DP Lunas</div>
                                @elseif($row->status == 3)
                                <div class="btn btn-paid">Pembayaran Lunas</div>
                                @elseif($row->status == 4)
                                <div class="btn btn-success">Transaksi Selesai</div>
                                @elseif($row->status == 5)
                                <div class="btn btn-danger">Transaksi Batal</div>
                                @endif

                              </div>
                            @empty
                            <p>Anda belum memiliki jasa</p>
                            @endforelse
                        </div>

                        <div class="tab-pane fade" id="pills-dp" role="tabpanel" aria-labelledby="pills-dp-tab">
                            @forelse ($transaksidp as $row)
<div class="list-transaksi w-100 px-3 mb-3">
    <div class="d-flex align-items-center">
      <div class="profile small mr-3">
        <img src="{{asset('storage/'.$row->user->photo_profile)}}" alt="">
      </div>
      <div class="d-flex flex-column">
        <h5 class="font-medium">{{$row->user->name}}</h5>
        <p>{{$row->created_at}}</p>
      </div>
    </div>
    @if($row->status == 0)
    <div class="btn btn-warning">Negosiasi</div>
    @elseif($row->status == 1)
    <div class="btn-dealing">Dealing</div>
    @elseif($row->status == 2)
    <div class="btn btn-info">DP Lunas</div>
    @elseif($row->status == 3)
    <div class="btn btn-paid">Pembayaran Lunas</div>
    @elseif($row->status == 4)
    <div class="btn btn-success">Transaksi Selesai</div>
    @elseif($row->status == 5)
    <div class="btn btn-danger">Transaksi Batal</div>
    @endif

  </div>
@empty
<p>Anda belum memiliki jasa</p>
@endforelse
                        </div>

                        <div class="tab-pane fade" id="pills-dibayar" role="tabpanel" aria-labelledby="pills-dibayar-tab">
                            @forelse ($transaksilunas as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                <div class="profile small mr-3">
                                    <img src="{{asset('storage/'.$row->user->photo_profile)}}" alt="">
                                </div>
                                <div class="d-flex flex-column">
                                    <h5 class="font-medium">{{$row->user->name}}</h5>
                                    <p>{{$row->created_at}}</p>
                                </div>
                                </div>
                                @if($row->status == 0)
                                <div class="btn btn-warning">Negosiasi</div>
                                @elseif($row->status == 1)
                                <div class="btn-dealing">Dealing</div>
                                @elseif($row->status == 2)
                                <div class="btn btn-info">DP Lunas</div>
                                @elseif($row->status == 3)
                                <div class="btn btn-paid">Pembayaran Lunas</div>
                                @elseif($row->status == 4)
                                <div class="btn btn-success">Transaksi Selesai</div>
                                @elseif($row->status == 5)
                                <div class="btn btn-danger">Transaksi Batal</div>
                                @endif

                            </div>
                            @empty
                            <p>Anda belum memiliki jasa</p>
                            @endforelse
                        </div>

                        <div class="tab-pane fade" id="pills-selesai" role="tabpanel" aria-labelledby="pills-selesai-tab">
                            @forelse ($transaksiselesai as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                  <div class="profile small mr-3">
                                    <img src="{{asset('storage/'.$row->user->photo_profile)}}" alt="">
                                  </div>
                                  <div class="d-flex flex-column">
                                    <h5 class="font-medium">{{$row->user->name}}</h5>
                                    <p>{{$row->created_at}}</p>
                                  </div>
                                </div>
                                @if($row->status == 0)
                                <div class="btn btn-warning">Negosiasi</div>
                                @elseif($row->status == 1)
                                <div class="btn-dealing">Dealing</div>
                                @elseif($row->status == 2)
                                <div class="btn btn-info">DP Lunas</div>
                                @elseif($row->status == 3)
                                <div class="btn btn-paid">Pembayaran Lunas</div>
                                @elseif($row->status == 4)
                                <div class="btn btn-success">Transaksi Selesai</div>
                                @elseif($row->status == 5)
                                <div class="btn btn-danger">Transaksi Batal</div>
                                @endif

                              </div>
                            @empty
                            <p>Anda belum memiliki jasa</p>
                            @endforelse
                        </div>

                        <div class="tab-pane fade" id="pills-batal" role="tabpanel" aria-labelledby="pills-batal-tab">
                            @forelse ($transaksibatal as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                  <div class="profile small mr-3">
                                    <img src="{{asset('storage/'.$row->user->photo_profile)}}" alt="">
                                  </div>
                                  <div class="d-flex flex-column">
                                    <h5 class="font-medium">{{$row->user->name}}</h5>
                                    <p>{{$row->created_at}}</p>
                                  </div>
                                </div>
                                @if($row->status == 0)
                                <div class="btn btn-warning">Negosiasi</div>
                                @elseif($row->status == 1)
                                <div class="btn-dealing">Dealing</div>
                                @elseif($row->status == 2)
                                <div class="btn btn-info">DP Lunas</div>
                                @elseif($row->status == 3)
                                <div class="btn btn-paid">Pembayaran Lunas</div>
                                @elseif($row->status == 4)
                                <div class="btn btn-success">Transaksi Selesai</div>
                                @elseif($row->status == 5)
                                <div class="btn btn-danger">Transaksi Batal</div>
                                @endif

                              </div>
                            @empty
                            <p>Anda belum memiliki jasa</p>
                            @endforelse
                        </div>
                      </div>
                    </div>
                  </div>
            </div>

    </div>

  </div>



