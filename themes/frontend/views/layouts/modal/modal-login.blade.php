<div class="modal fade" id="modalNego" tabindex="-1" aria-labelledby="modalNegoLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header noborder">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <h1 class="h2 text-center mb-2">Silahkan Login!</h1>
            <h2 class="font-regular text-center mb-4">Login Untuk Melakukan Negosiasi</h2>
            <a class="btn btn-nego mb-2" onclick=" relocate_login()">Login</a>
            <a class="btn btn-booking mb-2" onclick=" relocate_register()">Register</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal Nego Success -->
<div class="modal fade" id="modalNegoLogin" tabindex="-1" aria-labelledby="modalNegoSuccessLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header noborder">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <svg viewBox="0 0 100 100" class="animate mb-5">
              <filter id="dropshadow" height="100%">
                <feGaussianBlur in="SourceAlpha" stdDeviation="3" result="blur"/>
                <feFlood flood-color="rgba(76, 175, 80, 1)" flood-opacity="0.5" result="color"/>
                <feComposite in="color" in2="blur" operator="in" result="blur"/>
                <feMerge> 
                  <feMergeNode/>
                  <feMergeNode in="SourceGraphic"/>
                </feMerge>
              </filter>
              
              <circle cx="50" cy="50" r="46.5" fill="none" stroke="rgba(76, 175, 80, 0.5)" stroke-width="5"/>
              
              <path d="M67,93 A46.5,46.5 0,1,0 7,32 L43,67 L88,19" fill="none" stroke="rgba(76, 175, 80, 1)" stroke-width="5" stroke-linecap="round" stroke-dasharray="80 1000" stroke-dashoffset="-220"  style="filter:url(#dropshadow)"/>
            </svg>
            <h1 class="h2 text-center mb-2">Selamat!</h1>
            <h2 class="font-regular text-center mb-4">Negosiasi harga telah terkirim, tunggu jawaban dari Vendor</h2>
            <a class="btn btn-nego mb-2">Detail transaksi</a>
            <a class="btn btn-booking mb-2">Kembali ke Home</a>
          </div>
        </div>
      </div>
    </div>