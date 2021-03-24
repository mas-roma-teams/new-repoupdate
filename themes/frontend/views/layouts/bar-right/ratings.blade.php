<div class="border-sort">
              <h4 class="text-ptserif">Sortir Rate Vendor</h4>
              <hr>
                @foreach( $rating_place as $ratings )
              <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                @if ($ratings->ratings == '5')

                
                   <div class="d-flex align-items-center flex-wrap">
                
                  <input class="form-check-input mr-3 mt-0" type="checkbox" value="" id="jaksel">

                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-4" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                 
                    </div>

                
               
               
                <h5 class="form-check-label font-regular" for="jaksel">
                {{ $ratings->ratings }}
                </h5>

                @elseif ($ratings->ratings == '4')

                
                   <div class="d-flex align-items-center flex-wrap">
                
                  <input class="form-check-input mr-3 mt-0" type="checkbox" value="" id="jaksel">

                 
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-4" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                 
               
                 
                    </div>

                
               
               
                <h5 class="form-check-label font-regular" for="jaksel">
                {{ $ratings->ratings }}
                </h5>


                 @elseif ($ratings->ratings == '3')

                
                   <div class="d-flex align-items-center flex-wrap">
                
                  <input class="form-check-input mr-3 mt-0" type="checkbox" value="" id="jaksel">

                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                 
               
                 
                    </div>

                
               
               
                <h5 class="form-check-label font-regular" for="jaksel">
                {{ $ratings->ratings }}
                </h5>

                 @elseif ($ratings->ratings == '2')

                
                   <div class="d-flex align-items-center flex-wrap">
                
                  <input class="form-check-input mr-3 mt-0" type="checkbox" value="" id="jaksel">

                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                  
                 
                    </div>

                
               
               
                <h5 class="form-check-label font-regular" for="jaksel">
                {{ $ratings->ratings }}
                </h5>


                 @elseif ($ratings->ratings == '1')

                
                   <div class="d-flex align-items-center flex-wrap">
                
                  <input class="form-check-input mr-3 mt-0" type="checkbox" value="" id="jaksel">

                  <img class="mr-2" src="{{ asset('themes/frontend/images/star-full.png') }}" alt="">
                 
                 
               
                 
                    </div>

                
               
               
                <h5 class="form-check-label font-regular" for="jaksel">
                {{ $ratings->ratings }}
                </h5>



                @endif
              </div>
               @endforeach
            </div>