<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSS -->
    <link rel="stylesheet" href="{{ asset('themes/frontend/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="{{ asset('themes/frontend/css/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('themes/frontend/scss/index.css') }}">

    <title>Hello, world!</title>
  </head>
  <body style="overflow-x: hidden;">
    

    <!-- INCLUDE HEADER -->
    @include('layouts.header.header-home')
    <!-- END INCLUDE HEADER -->


    <!-- START CONTENT -->
    @yield('content')
    <!-- END CONTENT -->

    <!-- INCLUDE HEADER -->
    @include('layouts.footer.index')
    <!-- END INCLUDE HEADER -->

    

    <div id="room-chat" class="row pl-3" style="height: 100vh;">
      <div class="col-3 pt-2">
        <div class="user-list">
          <div class="d-flex align-items-center mb-2 pointer" onclick="back()">
            <i class="fas fa-arrow-left mr-3" style="font-size: 20px;"></i>
            <h1 class="h4">Back</h1>
          </div>
          <form class="">
            <div class="form-group" style="position: relative;">
              <i class="fas fa-search" style="position: absolute; top: 35%;left: 5%;"></i>
              <input type="text" class="form-control w-100" style="padding-left: 16%;" placeholder="Cari atau mulai chat baru">
            </div>
          </form>
  
          <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <a class="nav-link-chat active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">
              <div class="list-chat">
                <img src="images/ex-profile-1.jpg" alt="">
                <div class="ml-3">
                  <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                  <p class="text-regular text-secondary">Hai Alapesta</p>
                </div>
              </div>
              <hr class="mt-2 mr-0" style="width: 80%;">
            </a>
            <a class="nav-link-chat" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">
              <div class="list-chat">
                <img src="images/ex-profile-1.jpg" alt="">
                <div class="ml-3">
                  <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                  <p class="text-regular text-secondary">Hai Alapesta</p>
                </div>
              </div>
              <hr class="mt-2 mr-0" style="width: 80%;">
            </a>
            <a class="nav-link-chat" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">
              <div class="list-chat">
                <img src="images/ex-profile-1.jpg" alt="">
                <div class="ml-3">
                  <h1 class="h5 text-semibold text-dark">Agung Saputra</h1>
                  <p class="text-regular text-secondary">Hai Alapesta</p>
                </div>
              </div>
              <hr class="mt-2 mr-0" style="width: 80%;">
            </a>
            <a class="nav-link-chat" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">
              <div class="list-chat">
                <img src="images/ex-profile-1.jpg" alt="">
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
                  <img width="40px" src="images/ex-profile-1.jpg" alt="">
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
          <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
            <section id="msger">
              <header class="msger-header">
                <div class="d-flex align-items-center">
                  <img width="40px" src="images/ex-profile-1.jpg" alt="">
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
                  <img width="40px" src="images/ex-profile-1.jpg" alt="">
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
                  <img width="40px" src="images/ex-profile-1.jpg" alt="">
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

    
   

    <script src="{{ asset('themes/frontend/js/jquery-3.5.1.slim.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/jquery-3.6.0.min.js') }}"></script>
<!--     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script> -->
    <script src="{{ asset('themes/frontend/js/popper.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/slick.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/app.js') }}" defer></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    
        <script type="text/javascript">
            $(function () {
                $("#toggle_pwd").click(function () {
                    $(this).toggleClass("fa-eye fa-eye-slash");
                   var type = $(this).hasClass("fa-eye-slash") ? "text" : "password";
                    $("#password").attr("type", type);
                });
            });
        </script>

    <script type="text/javascript">
            $(function () {
                $("#toggle_pwd1").click(function () {
                    $(this).toggleClass("fa-eye fa-eye-slash");
                   var type = $(this).hasClass("fa-eye-slash") ? "text" : "password";
                    $("#password-confirm").attr("type", type);
                });
            });
    </script>

    <script>
    function relocate_login()
    {
         location.href = "{{ route('login') }}";
    } 
    </script>

     <script>
    function relocate_register()
    {
         location.href = "{{ route('register') }}";
    } 
    </script>

   <script type="text/javascript">
       $(document).ready(function() {
            // Province change

            $('#province').change(function(){

                // Province id
                var id =  $(this).val();
                var province_id =  $(this).val();
                console.log(id);
                console.log(province_id);

                // Empty DropDown
                $('#city').find('option').not(':first').remove();

                // AJAX Request
                $.ajax({
                    url: 'getCitys/'+ province_id,
                    type: 'GET',
                    dataType: 'json',
                    success : function(response){

                        var len = 0;
                        if(response != null){
                            len = response.length;
                        }

                        if(len > 0) {

                            // Read Data Create Option
                            for(var i=0; i<len; i++) {
                                var province_id = response[i].province_id;
                                var name = response[i].name;
                                var option = "<option value='"+id+"'>"+name+"</option>";

                            $("#city").append(option);  
                            }
                        }
                    }
                })
            })
       })
   </script>
  </body>
</html>