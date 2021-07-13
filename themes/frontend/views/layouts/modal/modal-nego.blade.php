
<div class="modal fade" id="modalNego" tabindex="-1" aria-labelledby="modalNegoLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header noborder">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-12 mb-4">
                <h4 class="mb-2">Provinsi</h4>
                <select class="form-control">
                    <option value="0">-- PILIH PROVINSI --</option>
                    @foreach ($provincess as $id => $name)
                    <option value="{{ $name->id }}">{{  $name->name }}</option>
                    @endforeach
                </select>
              </div>
              <div class="col-md-12 mb-4">
                <h4 class="mb-2">Kota/Kabupaten</h4>
                <input type="text" class="form-control w-100" id="kota" placeholder="Kota/Kabupaten">
              </div>
              <div class="col-md-12 mb-4">
                <h4 class="mb-2">Kecamatan</h4>
                <input type="text" class="form-control w-100" id="kecamatan" placeholder="Kecamatan">
              </div>
              <div class="col-md-12 mb-4">
                <h4 class="mb-2">Kelurahan</h4>
                <input type="text" class="form-control w-100" id="kelurahan" placeholder="Kelurahan">
              </div>
              <div class="col-md-12 mb-4">
                <h4 class="mb-2">Harga Nego</h4>
                <input type="text" class="form-control w-100" id="harga" placeholder="Rp 750.000">
              </div>
              

              <div class="col-12 mb-4">
                <h4 class="mb-2">Keterangan Alamat </h4>
                <textarea class="form-control" id="alamat" rows="6" placeholder="Jl. Swadaya Timur RT.009/020 No.120 Jakarta barat "></textarea>
              </div>

              <div class="col-12 mb-4">
                <h4 class="mb-2">Keterangan (opsional)</h4>
                <textarea class="form-control" id="alamat" rows="6" placeholder="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec urna ornare id amet ut neque duis sit. Netus a, purus euismod congue sagittis eget justo est integer. Magna porttitor quisque suspendisse magna."></textarea>
              </div>
              <div class="px-3 w-100">
                <a class="btn btn-booking mb-2" data-toggle="modal" data-target="#modalNegoSuccess" data-dismiss="modal" aria-label="Close">Lakukan Nego</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal Nego Success -->
<div class="modal fade" id="modalNegoSuccess" tabindex="-1" aria-labelledby="modalNegoSuccessLabel" aria-hidden="true">
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

    <script>
       $(function () {
         //Initialize Select2 Elements
         $('.select2').select2()

         //Initialize Select2 Elements
         $('.select2bs4').select2({
           theme: 'bootstrap4'
         })
       });

     </script>