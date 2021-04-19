
    <div class="border-sort">

              <h4 class="text-ptserif">Kategori Vendor</h4>

              <hr>
               <?php $counter=0; ?>
              @if(!empty($kategoris))
              @foreach ($kategoris as $category)
              <div class="form-check mb-3">


                <div class="custom-control custom-checkbox">
                <input type="checkbox" {{($counter == 0 ? 'checked' : '')}}
                attr-name="{{$category->nama_kategori}}"
                class="custom-control-input category_checkbox" id="{{$category->id}}">
                <label class="custom-control-label"
                for="{{$category->id}}">{{ucfirst($category->nama_kategori)}}</label>
                </div>

              </div>
              <?php $counter++; ?>
              @endforeach
              @endif



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
