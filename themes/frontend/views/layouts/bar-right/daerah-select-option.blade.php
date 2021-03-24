<div class="border-sort">
              <h4 class="text-ptserif">Sortir Wilayah</h4>
              <hr>
              
                  <div class="form-group">
                    <label for="exampleFormControlSelect1">Pilih Provinsi</label>
                    <select class="form-control" id="province">
                     <option>-- PILIH --</option>
                     @foreach ($provinces as $id => $name)
                     <option value="{{ $id }}">{{ $name }}</option>
                     @endforeach
                    </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleFormControlSelect1">Pilih Kota</label>
                    <select name="city" class="form-control" id="city">
                     <option>-- PILIH --</option>
                    
                    </select>
                  </div>
              
            </div>