@extends('layouts.app')
@section('content')


<!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
<!-- END INCLUDE HEADER -->


  <div class="container">
    <div class="row">
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
                  <p class="text-success font-semibold ml-2">Verified Account</p>
                </div>
              </div>

              @include('layouts.bar-right.list-menu-vendor')


            </div>

            <div class="col-9">
              <div class="d-flex justify-content-between mb-3">
                <h2>Jasa Kami</h2>
                <div class="d-flex align-items-center">
                  <img src="images/icon-plus.png" alt="">
                  <h5 class="text-primary ml-3">Jasa Kami</h5>
                </div>
              </div>
              <div class="card mb-5">
                <div class="card-body">
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="pills-semua1-tab" data-toggle="pill" href="#pills-semua1" role="tab" aria-controls="pills-semua1" aria-selected="true">Semua</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-gedung1-tab" data-toggle="pill" href="#pills-gedung1" role="tab" aria-controls="pills-gedung1" aria-selected="false">Gedung</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-rias1-tab" data-toggle="pill" href="#pills-rias1" role="tab" aria-controls="pills-rias1" aria-selected="false">Tara Rias</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-photographer1-tab" data-toggle="pill" href="#pills-photographer1" role="tab" aria-controls="pills-photographer1" aria-selected="false">Photographer</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-dekorasi1-tab" data-toggle="pill" href="#pills-dekorasi1" role="tab" aria-controls="pills-dekorasi1" aria-selected="false">Dekorasi</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-entertainment1-tab" data-toggle="pill" href="#pills-entertainment1" role="tab" aria-controls="pills-entertainment1" aria-selected="false">Entertainment</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-semua1" role="tabpanel" aria-labelledby="pills-semua1-tab">
                      <div class="row">
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="pills-gedung1" role="tabpanel" aria-labelledby="pills-gedung1-tab">Gedung</div>
                    <div class="tab-pane fade" id="pills-rias1" role="tabpanel" aria-labelledby="pills-rias1-tab">Tara Rias</div>
                    <div class="tab-pane fade" id="pills-photographer1" role="tabpanel" aria-labelledby="pills-photographer1-tab">Photographer</div>
                    <div class="tab-pane fade" id="pills-dekorasi1" role="tabpanel" aria-labelledby="pills-dekorasi1-tab">Dekorasi</div>
                    <div class="tab-pane fade" id="pills-entertainment1" role="tabpanel" aria-labelledby="pills-entertainment1-tab">Entertainment</div>
                  </div>
                </div>
              </div>
              <!--  -->
              <div class="d-flex justify-content-between mb-3">
                <h2>Portfolio Kami</h2>
                <div class="d-flex align-items-center">
                  <img src="images/icon-plus.png" alt="">
                  <h5 class="text-primary ml-3">Portfolio</h5>
                </div>
              </div>
              <div class="card mb-5">
                <div class="card-body">
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="pills-semua2-tab" data-toggle="pill" href="#pills-semua2" role="tab" aria-controls="pills-semua2" aria-selected="true">Semua</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-gedung2-tab" data-toggle="pill" href="#pills-gedung2" role="tab" aria-controls="pills-gedung2" aria-selected="false">Gedung</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-rias2-tab" data-toggle="pill" href="#pills-rias2" role="tab" aria-controls="pills-rias2" aria-selected="false">Tara Rias</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-photographer2-tab" data-toggle="pill" href="#pills-photographer2" role="tab" aria-controls="pills-photographer2" aria-selected="false">Photographer</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-dekorasi2-tab" data-toggle="pill" href="#pills-dekorasi2" role="tab" aria-controls="pills-dekorasi2" aria-selected="false">Dekorasi</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-entertainment22-tab" data-toggle="pill" href="#pills-entertainment22" role="tab" aria-controls="pills-entertainment22" aria-selected="false">Entertainment</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-semua2" role="tabpanel" aria-labelledby="pills-semua2-tab">
                      <div class="row">
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card">
                            <img src="images/projek-1.jpg" alt="">
                            <div class="d-flex justify-content-between mt-2">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                              <img class="w-48" src="images/projek-1.jpg" alt="">
                            </div>
                            <div class="card-body">
                              <h4>Adim & Hasna Wedding</h4>
                              <p class="font-light mt-2">Tata Rias</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="pills-gedung2" role="tabpanel" aria-labelledby="pills-gedung2-tab">Gedung</div>
                    <div class="tab-pane fade" id="pills-rias" role="tabpanel" aria-labelledby="pills-rias-tab">Tara Rias</div>
                    <div class="tab-pane fade" id="pills-photographer2" role="tabpanel" aria-labelledby="pills-photographer2-tab">Photographer</div>
                    <div class="tab-pane fade" id="pills-dekorasi2" role="tabpanel" aria-labelledby="pills-dekorasi2-tab">Dekorasi</div>
                    <div class="tab-pane fade" id="pills-entertainment2" role="tabpanel" aria-labelledby="pills-entertainment2-tab">Entertainment</div>
                  </div>
                </div>
              </div>
              <!--  -->
              <div class="d-flex justify-content-between mb-3">
                <h2>Jasa terlaris</h2>
                <div class="d-flex align-items-center">
                  <img src="images/icon-plus.png" alt="">
                  <h5 class="text-primary ml-3">Jasa terlaris</h5>
                </div>
              </div>
              <div class="card mb-5">
                <div class="card-body">
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="pills-semua3-tab" data-toggle="pill" href="#pills-semua3" role="tab" aria-controls="pills-semua3" aria-selected="true">Semua</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-gedung3-tab" data-toggle="pill" href="#pills-gedung3" role="tab" aria-controls="pills-gedung3" aria-selected="false">Gedung</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-rias3-tab" data-toggle="pill" href="#pills-rias3" role="tab" aria-controls="pills-rias3" aria-selected="false">Tara Rias</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-photographer3-tab" data-toggle="pill" href="#pills-photographer3" role="tab" aria-controls="pills-photographer3" aria-selected="false">Photographer</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-dekorasi3-tab" data-toggle="pill" href="#pills-dekorasi3" role="tab" aria-controls="pills-dekorasi3" aria-selected="false">Dekorasi</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-entertainment3-tab" data-toggle="pill" href="#pills-entertainment3" role="tab" aria-controls="pills-entertainment3" aria-selected="false">Entertainment</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-semua3" role="tabpanel" aria-labelledby="pills-semua3-tab">
                      <div class="row">
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-4 mb-4">
                          <div class="card noborder">
                            <img src="images/jasa-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body no-paddingleft">
                              <h5 class="mb-2">Wedding March Factory</h5>
                              <h4 class="text-primary text-ptserif">Rp 1500.000</h4>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="pills-gedung3" role="tabpanel" aria-labelledby="pills-gedung3-tab">Gedung</div>
                    <div class="tab-pane fade" id="pills-rias3" role="tabpanel" aria-labelledby="pills-rias3-tab">Tara Rias</div>
                    <div class="tab-pane fade" id="pills-photographer3" role="tabpanel" aria-labelledby="pills-photographer3-tab">Photographer</div>
                    <div class="tab-pane fade" id="pills-dekorasi3" role="tabpanel" aria-labelledby="pills-dekorasi3-tab">Dekorasi</div>
                    <div class="tab-pane fade" id="pills-entertainment3" role="tabpanel" aria-labelledby="pills-entertainment3-tab">Entertainment</div>
                  </div>
                </div>
              </div>
              <!--  -->
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
                      <a class="nav-link" id="pills-dibayar-tab" data-toggle="pill" href="#pills-dibayar" role="tab" aria-controls="pills-dibayar" aria-selected="false">Sudah dibayar</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab">
                      <div class="row px-3">
                        <div class="list-transaksi w-100 px-3 mb-3">
                          <div class="d-flex align-items-center">
                            <div class="profile small mr-3">
                              <img src="images/ex-profile-1.jpg" alt="">
                            </div>
                            <div class="d-flex flex-column">
                              <h5 class="font-medium">Gilang Ramadhan Utama</h5>
                              <p>12 November 2020, 20:40</p>
                            </div>
                          </div>
                          <div class="btn-negosiasi">Negosiasi</div>
                        </div>
                        <div class="list-transaksi w-100 px-3 mb-3">
                          <div class="d-flex align-items-center">
                            <div class="profile small mr-3">
                              <img src="images/ex-profile-1.jpg" alt="">
                            </div>
                            <div class="d-flex flex-column">
                              <h5 class="font-medium">Ahmad Nudin</h5>
                              <p>12 November 2020, 20:40</p>
                            </div>
                          </div>
                          <div class="btn-negosiasi">Negosiasi</div>
                        </div>
                        <div class="list-transaksi w-100 px-3 mb-3">
                          <div class="d-flex align-items-center">
                            <div class="profile small mr-3">
                              <img src="images/ex-profile-1.jpg" alt="">
                            </div>
                            <div class="d-flex flex-column">
                              <h5 class="font-medium">Putra Siregar</h5>
                              <p>12 November 2020, 20:40</p>
                            </div>
                          </div>
                          <div class="btn-dealing">Dealing</div>
                        </div>
                        <div class="list-transaksi w-100 px-3 mb-3">
                          <div class="d-flex align-items-center">
                            <div class="profile small mr-3">
                              <img src="images/ex-profile-1.jpg" alt="">
                            </div>
                            <div class="d-flex flex-column">
                              <h5 class="font-medium">Nasuha Ahmad</h5>
                              <p>12 November 2020, 20:40</p>
                            </div>
                          </div>
                          <div class="btn-paid">Sudah dibayar</div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="pills-negosiasi" role="tabpanel" aria-labelledby="pills-negosiasi-tab">Gedung</div>
                    <div class="tab-pane fade" id="pills-dealing" role="tabpanel" aria-labelledby="pills-dealing-tab">Tara Rias</div>
                    <div class="tab-pane fade" id="pills-dibayar" role="tabpanel" aria-labelledby="pills-dibayar-tab">Sudah dibayar</div>
                  </div>
                </div>
              </div>
              <!--  -->
              <div class="d-flex justify-content-between mb-3">
                <h2>Testimoni</h2>
              </div>
              <div class="card mb-5">
                <div class="card-body">
                  <div class="row pt-5">
                    <div class="col-4">
                      <div class="card">
                        <div class="profile medium-border">
                          <img src="images/ex-profile-1.jpg" alt="">
                        </div>
                        <div class="card-body">
                          <h4 class="color-primary mb-2 mt-4">Ayu Puspita Sarih</h4>
                          <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. </h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="card">
                        <div class="profile medium-border">
                          <img src="images/ex-profile-1.jpg" alt="">
                        </div>
                        <div class="card-body">
                          <h4 class="color-primary mb-2 mt-4">Faruq Abdullah</h4>
                          <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. </h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="card">
                        <div class="profile medium-border">
                          <img src="images/ex-profile-1.jpg" alt="">
                        </div>
                        <div class="card-body">
                          <h4 class="color-primary mb-2 mt-4">Norman Deus</h4>
                          <h5 class="font-light">“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac odio quis diam, etiam lectus lacus. Praesent amet id magna in. </h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
    </div>

  </div>



