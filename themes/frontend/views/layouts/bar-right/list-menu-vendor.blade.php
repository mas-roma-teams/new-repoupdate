

      <div class="list-group">
      <li class="list-group-item list-group-item-action" style="background-color: #E78A6E; color: white;">
        Menu Vendor
      </li>
      {{-- <li class="list-group-item d-flex justify-content-between align-items-center">
      <a href="{{ route('history') }}"> History Vendor</a>
        <!-- <span class="badge badge-primary badge-pill">14</span> -->
      </li> --}}
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <a class="{{ (request()->segment(1) == 'vendorjasa') ? 'menu-active' : '' }}" href="{{ route('vendors.jasa') }}"> Jasa </a>
         <!-- <span class="badge badge-primary badge-pill">2</span> -->
       </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
       <a class="{{ (request()->segment(1) == 'vendortransaksi') ? 'menu-active' : '' }}" href="{{ route('vendors.transaksi') }}"> Transaksi </a>
        <!-- <span class="badge badge-primary badge-pill">2</span> -->
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <a class="{{ (request()->segment(1) == 'vendorportfolio') ? 'menu-active' : '' }}" href="{{ route('vendors.portfolio') }}"> Portfolio </a>
         <!-- <span class="badge badge-primary badge-pill">2</span> -->
       </li>

       <li class="list-group-item d-flex justify-content-between align-items-center ">
        <a class="{{ (request()->segment(1) == 'vendortestimoni') ? 'menu-active' : '' }}" href="{{ route('vendors.testimoni') }}"> Testimoni Pelanggan </a>
         <!-- <span class="badge badge-primary badge-pill">2</span> -->
       </li>
      {{-- <li class="list-group-item d-flex justify-content-between align-items-center">
        <a href="{{ route('profile') }}"> Profile User </a>
        <!-- <span class="badge badge-primary badge-pill">1</span> -->
      </li>--}}
      </div>


