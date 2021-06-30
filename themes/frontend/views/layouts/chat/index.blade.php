
@extends('layouts.app')
@section('content')

<!-- INCLUDE HEADER -->
    @include('layouts.header.header-home')
<div class="container">

        <div class="row px-3" style="height: 100vh;">
          <div class="col-3 pt-2">
            <div class="user-list">
              {{-- <div class="d-flex align-items-center mb-2 pointer" onclick="back()">
                <i class="fas fa-arrow-left mr-3" style="font-size: 20px;"></i>
                <h1 class="h4">Back</h1>
              </div> --}}
              <form class="">
                <div class="form-group" style="position: relative;">
                  <i class="fas fa-search" style="position: absolute; top: 35%;left: 5%;"></i>
                  <input type="text" class="form-control w-100" style="padding-left: 16%;" placeholder="Cari atau mulai chat baru">
                </div>
              </form>

              <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical" style="height: 85vh;">
                <a class="nav-link-chat active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">
                  <div class="list-chat">
                    <img src="{{asset('themes/frontend/images/ex-profile-1.jpg')}}" alt="">
                    <div class="ml-3">
                      <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                      <p class="text-regular text-secondary">Hai Alapesta</p>
                    </div>
                  </div>
                  <hr class="mt-2 mr-0" style="width: 80%;">
                </a>
                <a class="nav-link-chat" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                  <div class="list-chat">
                    <img src="{{asset('themes/frontend/images/ex-profile-1.jpg')}}" alt="">
                    <div class="ml-3">
                      <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                      <p class="text-regular text-secondary">Hai Alapesta</p>
                    </div>
                  </div>
                  <hr class="mt-2 mr-0" style="width: 80%;">
                </a>
                <a class="nav-link-chat" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                  <div class="list-chat">
                    <img src="{{asset('themes/frontend/images/ex-profile-1.jpg')}}" alt="">
                    <div class="ml-3">
                      <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                      <p class="text-regular text-secondary">Hai Alapesta</p>
                    </div>
                  </div>
                  <hr class="mt-2 mr-0" style="width: 80%;">
                </a>
                <a class="nav-link-chat" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                  <div class="list-chat">
                    <img src="{{asset('themes/frontend/images/ex-profile-1.jpg')}}" alt="">
                    <div class="ml-3">
                      <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                      <p class="text-regular text-secondary">Hai Alapesta</p>
                    </div>
                  </div>
                  <hr class="mt-2 mr-0" style="width: 80%;">
                </a>
              </div>
            </div>
          </div>
          <div class="col-9">
            <div class="tab-content" id="v-pills-tabContent">
              <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <section id="msger">
                  <header class="msger-header">
                    <div class="d-flex align-items-center">
                      <img width="40px" src="{{asset('themes/frontend/images/ex-profile-1.jpg')}}" alt="">
                      <div class="ml-3">
                        <h1 class="h5 text-semibold text-dark">{{$vendor->nama_vendor}}</h1>
                        <p class="text-regular text-secondary"></p>
                      </div>
                    </div>
                  </header>

                  <main class="msger-chat">
                    <div id="content-message"></div>

                    </main>
                  {{-- <form class="msger-inputarea" action="{{route('sendchat')}}" method="post">
                    @csrf --}}

                    <div  id="showproduct" ></div>

                    <div class="msger-inputarea">

                    <input type="text" class="msger-input pesan" name="pesan" id="pesan" placeholder="Masukan pesan..." required>
                    <input type="hidden" class="msger-input" name="user" value="{{Auth::user()->id}}">
                    <input type="hidden" class="msger-input" name="vendor" value="{{Request::segment(2)}}">
                    <input type="hidden" class="msger-input" name="jasa_id" value="{{$jasaid}}">
                    <input type="hidden" class="msger-input" name="kode_chat" value="{{$cekChat->kode_chat ?? ""}}">
                    <input type="hidden" name="status_send_replay" value="{{$sendreplay}}">

                    <button class="msger-send-btn savemessage">Send</button>
                    </div>
                {{-- </form> --}}
                </section>
              </div>
              <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                <section id="msger">
                  <header class="msger-header">
                    <div class="d-flex align-items-center">
                      <img width="40px" src="{{asset('themes/frontend/images/ex-profile-1.jpg')}}" alt="">
                      <div class="ml-3">
                        <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                        <p class="text-regular text-secondary">Hai Alapesta</p>
                      </div>
                    </div>
                  </header>

                  <main class="msger-chat">
                    <div class="msg left-msg">
                      <div
                       class="msg-img"
                       style="background-image: url(images/ex-profile-1.jpg)"
                      ></div>

                      <div class="msg-bubble">
                        <div class="msg-info">
                          <div class="msg-info-name">Agung Saputra</div>
                          <div class="msg-info-time">12:45</div>
                        </div>

                        <div class="msg-text">
                          Hi, welcome to Alapesta 😄
                        </div>
                      </div>
                    </div>

                    <div class="msg right-msg">
                      <div
                       class="msg-img"
                       style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"
                      ></div>

                      <div class="msg-bubble">
                        <div class="msg-info">
                          <div class="msg-info-name">Sajad</div>
                          <div class="msg-info-time">12:46</div>
                        </div>

                        <div class="msg-text text-dark">
                          You can change your name in JS section!
                        </div>
                      </div>
                    </div>
                  </main>

                  <form class="msger-inputarea">
                    <input type="text" class="msger-input" placeholder="Enter your message...">
                    <button type="submit" class="msger-send-btn">Send</button>
                  </form>
                </section>
              </div>
              <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                <section id="msger">
                  <header class="msger-header">
                    <div class="d-flex align-items-center">
                      <img width="40px" src="{{asset('themes/frontend/images/ex-profile-1.jpg')}}" alt="">
                      <div class="ml-3">
                        <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                        <p class="text-regular text-secondary">Hai Alapesta</p>
                      </div>
                    </div>
                  </header>

                  <main class="msger-chat">
                    <div class="msg left-msg">
                      <div
                       class="msg-img"
                       style="background-image: url(images/ex-profile-1.jpg)"
                      ></div>

                      <div class="msg-bubble">
                        <div class="msg-info">
                          <div class="msg-info-name">Agung Saputra</div>
                          <div class="msg-info-time">12:45</div>
                        </div>

                        <div class="msg-text">
                          Hi, welcome to Alapesta 😄
                        </div>
                      </div>
                    </div>

                    <div class="msg right-msg">
                      <div
                       class="msg-img"
                       style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"
                      ></div>

                      <div class="msg-bubble">
                        <div class="msg-info">
                          <div class="msg-info-name">Sajad</div>
                          <div class="msg-info-time">12:46</div>
                        </div>

                        <div class="msg-text text-dark">
                          You can change your name in JS section!
                        </div>
                      </div>
                    </div>
                  </main>

                  <form class="msger-inputarea">
                    <input type="text" class="msger-input" placeholder="Enter your message...">
                    <button type="submit" class="msger-send-btn">Send</button>
                  </form>
                </section>
              </div>
              <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                <section id="msger">
                  <header class="msger-header">
                    <div class="d-flex align-items-center">
                      <img width="40px" src="{{asset('themes/frontend/images/ex-profile-1.jpg')}}" alt="">
                      <div class="ml-3">
                        <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                        <p class="text-regular text-secondary">Hai Alapesta</p>
                      </div>
                    </div>
                  </header>

                  <main class="msger-chat">
                    <div class="msg left-msg">
                      <div
                       class="msg-img"
                       style="background-image: url(images/ex-profile-1.jpg)"
                      ></div>

                      <div class="msg-bubble">
                        <div class="msg-info">
                          <div class="msg-info-name">Agung Saputra</div>
                          <div class="msg-info-time">12:45</div>
                        </div>

                        <div class="msg-text">
                          Hi, welcome to Alapesta 😄
                        </div>
                      </div>
                    </div>

                    <div class="msg right-msg">
                      <div
                       class="msg-img"
                       style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"
                      ></div>

                      <div class="msg-bubble">
                        <div class="msg-info">
                          <div class="msg-info-name">Sajad</div>
                          <div class="msg-info-time">12:46</div>
                        </div>

                        <div class="msg-text text-dark">
                          You can change your name in JS section!
                        </div>
                      </div>
                    </div>
                  </main>

                  <form class="msger-inputarea">
                    <input type="text" class="msger-input" placeholder="Enter your message...">
                    <button type="submit" class="msger-send-btn">Send</button>
                  </form>
                </section>
              </div>
            </div>
          </div>
        </div>

</div>

@stop
@section('script')
<script>

    $(document).ready(function () {
        //


            let jasaId = "{{$jasaid}}";
            let photo = "{{$jasa->photo_jasa}}";
            let nama_jasa = "{{$jasa->nama_jasa}}";
            let slug = "{{$jasa->slug}}";
            let harga = "{{$jasa->harga}}";

            if(jasaId > 0){
                template = '<div class="card-product" style="border-radius:5px; width:250px; height:80px; background:white; transition: 0.3s; margin-bottom:10px; margin-left:10px;"><div class="image-product" style="border-radius:5px; width:30%; height:80px; float:left;  margin-right:5px;"><img src="/themes/frontend/images/'+photo+'" width="100%" height="100%" alt="'+slug+'"> </div><div class="msg-info-name">'+nama_jasa+'</div><div class="msg-info-name" style="color:#ff5000">Rp.'+harga+'</div></div></div>';
                $('#showproduct').append(template);
            }


        let id = {{Request::segment(2)}};
        $.ajax({
                    url: '/chat/history/'+id,
                    type: "GET",
                    typeData: 'json',
                    cache: false,

                    success: function (response) {
                        // $('#content-message').empty();
                        var result = response.data;
                        for (var i = 0; i < result.length; i++) {
                            if(result[i].status_send_replay == 'send'){
                                if(result[i].jasa_id != 0){
                                    template = '<div class="msg right-msg"><div class="msg-img" style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"></div><div class="msg-bubble"><div class="card-product" style="border-radius:5px; width:250px; height:80px; background:white; box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); transition: 0.3s; margin-bottom:10px;"> <div class="image-product" style="border-radius:5px; width:30%; height:80px; float:left;  margin-right:5px;"><img src="/themes/frontend/images/'+result[i].jasa.photo_jasa +'" width="100%" height="100%" alt="'+result[i].jasa.slug+'"> </div><div class="msg-info-name">'+result[i].jasa.nama_jasa+'</div><div class="msg-info-name" style="color:#ff5000">Rp.'+result[i].jasa.harga+'</div></div> <div class="msg-info"> <div class="msg-info-name">'+result[i].users.name+'</div><div class="msg-info-time">'+result[i].jam+'</div> </div><div class="msg-text text-dark">'+result[i].pesan+'</div> ';

                                }else{
                                    if(result[i].nominal > 0 && result[i].status_send_replay == 'send'){
                                        template='<div class="msg right-msg"><div class="msg-img" style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"></div><div class="msg-bubble"><div class="card-product" style="border-radius:5px; width:250px; height:auto; background:white; box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); transition: 0.3s; margin-bottom:10px; padding:5px;"><div class="msg-info-name">Anda melakukan penawaran</div><div class="msg-info-name" style="color:#ff5000">Rp.'+result[i].nominal+'</div></div><div class="msg-info"> <div class="msg-info-name">'+result[i].users.name+'</div><div class="msg-info-time">'+result[i].jam+'</div> </div>';
                                    }else{
                                        template = '<div class="msg right-msg"><div class="msg-img" style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"></div> <div class="msg-bubble"> <div class="msg-info"> <div class="msg-info-name">'+result[i].users.name+'</div> <div class="msg-info-time">'+result[i].jam+'</div> </div><div class="msg-text text-dark">'+result[i].pesan+'</div>  </div> </div> ';
                                    }

                                }
                            }else{
                                template = ' <div class="msg left-msg"> <div  class="msg-img" style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"></div><div class="msg-bubble"><div class="msg-info"><div class="msg-info-name">'+result[i].vendors.nama_vendor+'</div> <div class="msg-info-time">'+result[i].jam+'</div>  </div>  <div class="msg-text">  '+result[i].pesan+' </div>   </div> </div>';
                            }

                            $('#content-message').append(template);
                        }

                    }
            });
    });


    $(".pesan").on("keyup", function (event) {
                // Number 13 is the "Enter" key on the keyboard
                if (event.keyCode === 13) {
                    // Cancel the default action, if needed
                    event.preventDefault();
                    // Trigger the button element with a click
                    sendMessage()
                }
            });

    $(".savemessage").click(function(event){
        sendMessage();
    });



    function sendMessage()
    {
        let pesan = $("input[name=pesan]").val();
        let user = $("input[name=user]").val();
        let vendor = $("input[name=vendor]").val();
        let jasa_id = $("input[name=jasa_id]").val();
        let kode_chat = $("input[name=kode_chat]").val();
        let status_send_replay = $("input[name=status_send_replay]").val();
        let _token = "{{ csrf_token() }}";

        $.ajax({
            url:"{{route('sendchat')}}",
            type:"POST",
            data:{
                pesan:pesan,
                user:user,
                vendor:vendor,
                jasa_id:jasa_id,
                kode_chat:kode_chat,
                status_send_replay:status_send_replay,
                _token:_token
            },
            success:function(response){
                console.log("sukses");
            }
        });

        $("#pesan").val("");
        $('#showproduct').hide();
    }
</script>

@endsection

