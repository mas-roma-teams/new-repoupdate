
<header class="py-5">
        <div class="container">
          <div class="desktop">
            <div class="d-flex align-items-center justify-content-between mb-5">

              <div class="d-flex align-items-center">
                <img class="mr-5" src="{{ asset('themes/frontend/images/logo.png') }}" alt="">
                <img src="{{ asset('themes/frontend/images/category-point.png') }}" alt="">
              </div>


              <div class="d-flex">

                @guest
                  @if (Route::has('login'))
                      <input type="button" class="btn-login mr-3" value="{{ __('Login') }}" onclick=" relocate_login()">

                  @endif

                  @if (Route::has('register'))
                      <input type="button" class="btn-regis" value="{{ __('Register') }}" onclick=" relocate_register()">
                  @endif
                @else
                <div class="d-flex align-items-center">
                  <img class="mr-4" src="{{ asset('themes/frontend/images/icon-chat.png') }}" alt="">
                  <img class="mr-4" src="{{ asset('themes/frontend/images/icon-calendar.png') }}" alt="">
                  <img class="mr-4" src="{{ asset('themes/frontend/images/icon-notif.png') }}" alt="">
                  <div class="d-flex align-items-center ml-3">
                    <h5 class="text-bold mr-3 btn btn-me">Jadi Vendor</h5>
                    <div class="profile small mr-2">
                      <img src="{{ asset('themes/frontend/images/ex-profile-1.jpg') }}" alt="">
                    </div>
                    <h5 class="text-bold">{{ Auth::user()->name }}</h5>
                    <i class="fa fa-angle-down ml-3" aria-hidden="true" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></i>


                   <!--  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Dropdown button
                    </button> -->
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="{{ url('/user/dashboard/'. Auth::user()->id) }}">Dashboard Saya</a>

                      <a class="dropdown-item" href="#">Edit Profile</a>
                      <a class="dropdown-item" href="{{ route('logout') }}"
                          onclick="event.preventDefault();
                                        document.getElementById('logout-form').submit();">
                           {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </div>

                  </div>

                </div>


                @endguest
              </div>
            </div>
            {{-- <div class="d-flex justify-content-center">
              <a href="{{ url('/vendors') }}" class="text-regular text-secondary mx-3">Vendor disekitarmu</a>
              <a href="{{ url('/jasa-list') }}" class="text-regular text-secondary mx-3">Jasa disekitarmu</a>
              <a href="{{ url('/jasa-banyak-dicari') }}" class="text-regular text-secondary mx-3">Jasa yang paling dicari</a>
              <a href="" class="text-regular text-secondary mx-3">Jasa terbaik</a>
              <a href="" class="text-regular text-secondary mx-3">Jasa top bulan ini</a>
            </div> --}}
          </div>
          <div class="mobile">
            <div class="d-flex align-items-center justify-content-between mb-5">
              <div class="d-flex align-items-center">
                <img class="mr-5 logo-header" src="{{ asset('themes/frontend/images/logo.png') }}" alt="">
              </div>
              <div class="d-flex align-items-center">
                <img src="{{ asset('assets/images/category-point.png') }}" alt="">
                <i class="fas fa-bars ml-4 pointer" onclick="openSidemenu()" style="font-size: 20px;"></i>
              </div>
            </div>
          </div>


          <!-- <div id="menuside-nonlogin" class="d-flex flex-column align-items-center">
            <i class="fas fa-times" onclick="closeSidemenu()" style="position: absolute; right: 5%; top: 10%; font-size: 20px; cursor: pointer;"></i>
            <img src="{{ asset('assets/images/logo.png') }}" alt="">
            <div class="d-flex mt-3 mb-5">
              <button class="btn-login mr-3">Masuk</button>
              <button class="btn-regis">Daftar</button>
            </div>
            <div class="d-flex flex-wrap justify-content-start justify-content-sm-center">
              <a href="" class="text-regular text-secondary mx-1 my-2">Vendor disekitarmu</a>
              <a href="" class="text-regular text-secondary mx-1 my-2">Jasa disekitarmu</a>
              <a href="" class="text-regular text-secondary mx-1 my-2">Jasa yang paling dicari</a>
              <a href="" class="text-regular text-secondary mx-1 my-2">Jasa terbaik</a>
              <a href="" class="text-regular text-secondary mx-1 my-2">Jasa top bulan ini</a>
            </div>
          </div> -->
        </div>
    </header>
