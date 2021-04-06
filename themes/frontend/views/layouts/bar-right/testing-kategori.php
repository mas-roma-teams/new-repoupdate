<form class="form" method="GET">
    <div class="border-sort">

              <h4 class="text-ptserif">Kategori Vendor</h4>
              <hr>
              <form action="" method="GET">
                <div class="form-check mb-3">
                  <input class="form-check-input" type="checkbox" value="" id="all">
                  <label class="h5 form-check-label font-regular" for="all">
                    Semua
                  </label>
                </div>
               @foreach ( $kategoris as $kategori)
               
                <div class="form-check mb-3">
                  <input class="form-check-input" type="checkbox" name="kategori[]" value="{{ $kategori->id }} "id="{{ $kategori->nama_kategori }}" 
                 
                  />
                  <label class="h5 form-check-label font-regular" for="{{ $kategori->nama_kategori }}">
                    {{ $kategori->nama_kategori }}
                  </label>

                  
                </div>


                @endforeach

              <h4 class="text-ptserif">Sortir Wilayah</h4>
              <hr>
              
                  <div class="form-group">
                    <label for="exampleFormControlSelect1">Pilih Provinsi</label>
                    <select class="form-control" id="province" name="province">
                      <!-- <input type="text" name="city" name="city"> -->
                     <option>-- PILIH --</option>
                     @foreach ($provincess as $id => $name)
                     <option value="{{ $name->id }}">{{  $name->name }}</option>
                     @endforeach
                    </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleFormControlSelect1">Pilih Kota</label>
                    <!-- <input type="text" name="province_id" id="city"> -->
                    <select name="city" class="form-control" id="city">
                     <option value="0">-- PILIH --</option>
                    
                    </select>
                  </div>

                  <button type="submit" class="btn btn-primary btn-block">Submit</button>
              
      </div>
</form>