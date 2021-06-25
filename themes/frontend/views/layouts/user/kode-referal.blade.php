@extends('layouts.app')
@section('content')


<!-- INCLUDE HEADER -->
  @include('layouts.header.header-home')
<!-- END INCLUDE HEADER -->


  <div class="container">
    <div class="row">

            <div class="col-3">
              <!-- FOTO USER LEFT -->
              @include('layouts.user.foto-user')

              <!-- LIST MENU USER -->
              @include('layouts.bar-right.list-menu-user')


            </div>

            <div class="col-9">
                <div id="ticket">
                  <h1 class="mb-3">TERIMA KASIH.. !!!</h1>
                  <p><b>*Sebarkan kode ini dan dapatkan benefit nya</b></p>
                  <table>
                    
                    <tbody id="entries">
                      
                      
                      
                    </tbody>
                    <tfoot>
                      <tr>
                        <th class="total-font">Kode Referal :</th>
                        <th id="total" id="myInput" class="total-font kode-font">
                        <input type="text" class="total-font kode-font" value="{{ Auth::user()->kode_referal }}" id="myInput" disabled></th>
                        <th><button class="btn btn-me" onclick="myFunction()">Copy</button>
                        </th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
            </div>

    </div>

  </div>

  @endsection



