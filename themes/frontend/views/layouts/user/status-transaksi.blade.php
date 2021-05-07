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
                            <a class="nav-link" id="pills-dp-tab" data-toggle="pill" href="#pills-dp" role="tab" aria-controls="pills-dp" aria-selected="false">DP Lunas</a>
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
                            @foreach($dataTransaksi as $row)

                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                  <div class="profile small mr-3">
                                    @if($row->jasa == null)
                                    <p>image not found</p>
                                    @else
                                     <img src="{{ asset('storage/'.$row->jasa->photo_jasa)}}" alt="">
                                    @endif
                                   
                                  </div>
                                  <div class="d-flex flex-column">
                                     @if($row->jasa == null)
                                       <p>nama jasa not found</p>
                                     @else
                                       <h5 class="font-medium">{{$row->jasa->nama_jasa}}</h5>
                                     @endif
                                  
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

                           @endforeach
                        </div>

                        <div class="tab-pane fade" id="pills-negosiasi" role="tabpanel" aria-labelledby="pills-negosiasi-tab">
                            @foreach($dataTransaksiNego as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                 <div class="profile small mr-3">
                                    @if($row->jasa == null)
                                    <p>image not found</p>
                                    @else
                                     <img src="{{ asset('storage/'.$row->jasa->photo_jasa)}}" alt="">
                                    @endif
                                   
                                  </div>

                                  <div class="d-flex flex-column">
                                     @if($row->jasa == null)
                                       <p>nama jasa not found</p>
                                     @else
                                       <h5 class="font-medium">{{$row->jasa->nama_jasa}}</h5>
                                     @endif
                                  
                                    <p>{{$row->created_at}}</p>
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
                            
                            @endforeach
                        </div>

                        <div class="tab-pane fade" id="pills-dealing" role="tabpanel" aria-labelledby="pills-dealing-tab">
                            @foreach($dataTransaksiDeal as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                  <div class="profile small mr-3">
                                    @if($row->jasa == null)
                                    <p>image not found</p>
                                    @else
                                     <img src="{{ asset('storage/'.$row->jasa->photo_jasa)}}" alt="">
                                    @endif
                                   
                                  </div>
                                  <div class="d-flex flex-column">
                                     @if($row->jasa == null)
                                       <p>nama jasa not found</p>
                                     @else
                                       <h5 class="font-medium">{{$row->jasa->nama_jasa}}</h5>
                                     @endif
                                  
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
                          
                            @endforeach
                        </div>

                        <div class="tab-pane fade" id="pills-dp" role="tabpanel" aria-labelledby="pills-dp-tab">
                            @foreach($dataTransaksiDp as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                  <div class="profile small mr-3">
                                    @if($row->jasa == null)
                                    <p>image not found</p>
                                    @else
                                     <img src="{{ asset('storage/'.$row->jasa->photo_jasa)}}" alt="">
                                    @endif
                                   
                                  </div>
                                  <div class="d-flex flex-column">
                                     @if($row->jasa == null)
                                       <p>nama jasa not found</p>
                                     @else
                                       <h5 class="font-medium">{{$row->jasa->nama_jasa}}</h5>
                                     @endif
                                  
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
                          
                            @endforeach
                        </div>

                        <div class="tab-pane fade" id="pills-dibayar" role="tabpanel" aria-labelledby="pills-dibayar-tab">
                            @foreach($dataTransaksiLunas as $row)
                            <div class="list-transaksi w-100 px-3 mb-3">
                                <div class="d-flex align-items-center">
                                  <div class="profile small mr-3">
                                    @if($row->jasa == null)
                                    <p>image not found</p>
                                    @else
                                     <img src="{{ asset('storage/'.$row->jasa->photo_jasa)}}" alt="">
                                    @endif
                                   
                                  </div>
                                  <div class="d-flex flex-column">
                                     @if($row->jasa == null)
                                       <p>nama jasa not found</p>
                                     @else
                                       <h5 class="font-medium">{{$row->jasa->nama_jasa}}</h5>
                                     @endif
                                  
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
                          
                            @endforeach
                        </div>

                       <div class="tab-pane fade" id="pills-selesai" role="tabpanel" aria-labelledby="pills-selesai-tab">
                            @if($dataTransaksiSelesai->count() < 0 )
                              @foreach($dataTransaksiSelesai as $row)
                              <div class="list-transaksi w-100 px-3 mb-3">
                                  <div class="d-flex align-items-center">
                                    <div class="profile small mr-3">
                                      @if($row->jasa == null)
                                      <p>image not found</p>
                                      @else
                                       <img src="{{ asset('storage/'.$row->jasa->photo_jasa)}}" alt="">
                                      @endif
                                     
                                    </div>
                                    <div class="d-flex flex-column">
                                       @if($row->jasa == null)
                                         <p>nama jasa not found</p>
                                       @else
                                         <h5 class="font-medium">{{$row->jasa->nama_jasa}}</h5>
                                       @endif
                                    
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

                                  
                                  <h5 class="font-medium">Tidak Ada Transaksi Selesai</h5>
                              </div>
                            
                              @endforeach
                            @else
                              <h1>Tidak Ada Transaksi</h1>
                            @endif
                       </div>

                       <div class="tab-pane fade" id="pills-selesai" role="tabpanel" aria-labelledby="pills-selesai-tab">
                            @if($dataTransaksiSelesai->count() < 0 )
                              @foreach($dataTransaksiSelesai as $row)
                              <div class="list-transaksi w-100 px-3 mb-3">
                                  <div class="d-flex align-items-center">
                                    <div class="profile small mr-3">
                                      @if($row->jasa == null)
                                      <p>image not found</p>
                                      @else
                                       <img src="{{ asset('storage/'.$row->jasa->photo_jasa)}}" alt="">
                                      @endif
                                     
                                    </div>
                                    <div class="d-flex flex-column">
                                       @if($row->jasa == null)
                                         <p>nama jasa not found</p>
                                       @else
                                         <h5 class="font-medium">{{$row->jasa->nama_jasa}}</h5>
                                       @endif
                                    
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

                                  
                                  <h5 class="font-medium">Tidak Ada Transaksi Selesai</h5>
                              </div>
                            
                              @endforeach
                            @else
                              <h1>Tidak Ada Transaksi</h1>
                            @endif
                       </div>

                       <div class="tab-pane fade" id="pills-selesai" role="tabpanel" aria-labelledby="pills-selesai-tab">
                            @if($dataTransaksiBatal->count() < 0 )
                              @foreach($dataTransaksiBatal as $row)
                              <div class="list-transaksi w-100 px-3 mb-3">
                                  <div class="d-flex align-items-center">
                                    <div class="profile small mr-3">
                                      @if($row->jasa == null)
                                      <p>image not found</p>
                                      @else
                                       <img src="{{ asset('storage/'.$row->jasa->photo_jasa)}}" alt="">
                                      @endif
                                     
                                    </div>
                                    <div class="d-flex flex-column">
                                       @if($row->jasa == null)
                                         <p>nama jasa not found</p>
                                       @else
                                         <h5 class="font-medium">{{$row->jasa->nama_jasa}}</h5>
                                       @endif
                                    
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

                                  
                                  <h5 class="font-medium">Tidak Ada Transaksi Selesai</h5>
                              </div>
                            
                              @endforeach
                            @else
                              <h1>Tidak Ada Transaksi</h1>
                            @endif
                       </div>

                        
                    </div>
                  </div>
                </div>
            </div>

    </div>

  </div>



