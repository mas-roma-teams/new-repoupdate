

            <div class="list-group">
            <li class="list-group-item list-group-item-action" style="background-color: #E78A6E; color: white;">
              Menu User
            </li>
            {{-- <li class="list-group-item d-flex justify-content-between align-items-center">
            <a href="{{ route('history') }}"> History Vendor</a>
              <!-- <span class="badge badge-primary badge-pill">14</span> -->
            </li> --}}
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <a class="{{ (request()->segment(1) == 'userdashboard') ? 'menu-active' : '' }}" href="{{ route('users.dashboard') }}"> Dashboard </a>
                 <!-- <span class="badge badge-primary badge-pill">2</span> -->
               </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <a href="{{ route('users.profile') }}"> Profile Saya </a>
                 <!-- <span class="badge badge-primary badge-pill">2</span> -->
               </li>

            {{-- <li class="list-group-item d-flex justify-content-between align-items-center">
                <a href="{{ route('users.kode-referal') }}"> Kode Referal </a>
                 <!-- <span class="badge badge-primary badge-pill">2</span> -->
               </li> --}}
            <li class="list-group-item d-flex justify-content-between align-items-center">
             <a href="{{ route('transaksi-user') }}"> Status Transaksi </a>
              <!-- <span class="badge badge-primary badge-pill">2</span> -->
            </li>

           
            <li class="list-group-item d-flex justify-content-between align-items-center">
             <a href="{{ route('history-tarik-tunai') }}"> History Penarikan Tunai</a>
              <!-- <span class="badge badge-primary badge-pill">2</span> -->
            </li>

            <li class="list-group-item d-flex justify-content-between align-items-center">
             <a href="{{ route('layout-negosiasi') }}"> Status Negosiasi</a>
              <!-- <span class="badge badge-primary badge-pill">2</span> -->
            </li>


            <li class="list-group-item d-flex justify-content-between align-items-center">
                <a href="{{ route('users.password') }}"> Ganti password</a>
                 <!-- <span class="badge badge-primary badge-pill">2</span> -->
               </li>
            </div>
