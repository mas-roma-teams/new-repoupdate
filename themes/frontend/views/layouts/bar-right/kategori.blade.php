<div class="border-sort">
              <h4 class="text-ptserif">Kategori Vendor</h4>
              <hr>
              <div class="form-check mb-3">
                <input class="form-check-input" type="checkbox" value="" id="all">
                <label class="h5 form-check-label font-regular" for="all">
                  Semua
                </label>
              </div>
              @foreach ( $kategoris as $kategori)
              <div class="form-check mb-3">
                <input class="form-check-input" type="checkbox" value="" id="{{ $kategori->nama_kategori }}">
                <label class="h5 form-check-label font-regular" for="{{ $kategori->nama_kategori }}">
                  {{ $kategori->nama_kategori }}
                </label>
              </div>
              @endforeach
            </div>