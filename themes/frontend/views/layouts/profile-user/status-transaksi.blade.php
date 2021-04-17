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
                  <a class="nav-link" id="pills-dibayar-tab" data-toggle="pill" href="#pills-dibayar" role="tab" aria-controls="pills-dibayar" aria-selected="false">
                    Sudah Di Bayar
                  </a>
                </li>
                
              </ul>
              <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab">
                  <div class="row px-3">
                    <div class="list-transaksi w-100 p-3 mb-4">
                      <div class="d-flex align-items-center">
                        <div class="profile small mr-3">
                          <img src="{{ asset('images/ex-profile-1.jpg') }}" alt="">
                        </div>
                        <div class="d-flex flex-column">
                          <h5 class="font-medium">Gilang Ramadhan Utama</h5>
                          <p>12 November 2020, 20:40</p>
                        </div>
                      </div>
                      <div class="btn-negosiasi">Negosiasi</div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="pills-negosiasi" role="tabpanel" aria-labelledby="pills-negosiasi-tab">Gedung</div>
                <div class="tab-pane fade" id="pills-dealing" role="tabpanel" aria-labelledby="pills-dealing-tab">Tara Rias</div>
                <div class="tab-pane fade" id="pills-dibayar" role="tabpanel" aria-labelledby="pills-dibayar-tab">Sudah dibayar</div>
              </div>
            </div>
          </div>