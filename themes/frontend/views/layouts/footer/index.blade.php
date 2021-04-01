<a id="chat" onclick="openChat()">
        <i class="far fa-comments"></i>
      </a>
  
      <footer>
        <div class="container">
          <div class="row mb-3">
            <div class="col-12">
              <img src="{{ asset('themes/frontend/images/logo-footer.png') }}" alt="">
            </div>
          </div>
          <div class="row">
            <div class="col-md-4">
              <div class="row">
                <div class="col-md-12 col-6">
                  <h1 class="h5 text-white font-light mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla vitae, blandit malesuada congue vulputate. Fringilla nam elit et et.</h1>
                </div>
                <div class="col-md-12 col-6">
                  <h4 class="text-white mb-3">Follow us on</h4>
                  <i class="fab fa-instagram mr-3" style="color: #fff; font-size: 20px;"></i>
                  <i class="fab fa-facebook-f mr-3" style="color: #fff; font-size: 20px;"></i>
                  <i class="fab fa-tiktok mr-3" style="color: #fff; font-size: 20px;"></i>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-6">
              <div class="d-flex flex-column">
                <a href="{{ url('/vendors') }}" class="h5 text-white font-light mb-3">Vendor disekitarmu</a>
                <a href="{{ url('/jasa-list') }}" class="h5 text-white font-light mb-3">Jasa disekitarmu</a>
                <a href="#" class="h5 text-white font-light mb-3">Jasa yang paling dicari</a>
                <a href="#" class="h5 text-white font-light mb-3">Jasa terbaik</a>
                <a href="#" class="h5 text-white font-light mb-3">Jasa top bulan ini</a>
              </div>
            </div>
            <div class="col-md-4 col-6 d-flex flex-column">
              <a href="#" class="h5 text-white font-light mb-3">Tentang Alapesta</a>
              <a href="#" class="h5 text-white font-light mb-3">Kebijakan Privasi</a>
              <a href="#" class="h5 text-white font-light mb-4">Jadi Mitra Kami</a>
              <a href="#" class="mb-4">
                <img src="{{ asset('themes/frontend/images/icon-gplay.png') }}" alt="">
              </a>
              <a href="#" class="mb-3">
                <img src="{{ asset('themes/frontend/assets/images/icon-appstore.png') }}" alt="">
              </a>
            </div>
          </div>
        </div>
      </footer>
      <section class="text-center text-white py-3" style="background-color: #3A3A3A;">
        <h5>All Right Reserved . Alapesta Since 2020</h5>
      </section>

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