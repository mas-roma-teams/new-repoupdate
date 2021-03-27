<form class="form" method="GET">
    <div class="border-sort">
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

                  <button type="submit" class="btn btn-primary">Submit</button>
              
      </div>
</form>