<div class="border-sort">
              <h4 class="text-ptserif">Sortir Wilayah</h4>
              <hr>
              @foreach ($provinces as $id => $name)
              <div class="form-check mb-3">
                <input class="form-check-input" type="checkbox" value="" id="jaksel">
                <label class="h5 form-check-label font-regular" for="jaksel">
                  {{ $name }}
                </label>
              </div>
              @endforeach
            </div>