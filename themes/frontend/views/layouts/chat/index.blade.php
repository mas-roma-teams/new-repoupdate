
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
                    @forelse ($historyChat as $h)
                        @if($h->status_send_replay == "send")

                        @if($h->jasa_id != 0)
                        <div class="msg right-msg">
                            <div
                             class="msg-img"
                             style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"
                            ></div>
                            <div class="msg-bubble">
                              <div class="card-product" style="border-radius:5px; width:250px; height:80px; background:white; box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                              transition: 0.3s; margin-bottom:10px;">
                                  <div class="image-product" style="border-radius:5px; width:30%; height:80px; float:left;  margin-right:5px;">
                                      <img src="{{ asset('themes/frontend/images/' . $h->jasa->photo_jasa) }}" width="100%" height="100%" alt="{{$h->jasa->slug}}">
                                  </div>
                                  <div class="msg-info-name">{{substr($h->jasa->nama_jasa,0,23)}}</div>
                                  <div class="msg-info-name" style="color:#ff5000">Rp.{{number_format($h->jasa->harga, 0, ',', '.')}}</div>
                              </div>
                              <div class="msg-info">
                                  <div class="msg-info-name">{{$h->users->name}}</div>
                                <div class="msg-info-time">{{\Carbon\Carbon::parse($h->created_at)->Format('d M Y H:i:s')}}</div>
                              </div>
                              <div class="msg-text text-dark">
                                {{$h->pesan}}
                              </div>
                            </div>
                        </div>
                        @else
                          <div class="msg right-msg">
                              <div
                               class="msg-img"
                               style="background-image: url(https://image.flaticon.com/icons/svg/145/145867.svg)"
                              ></div>

                              <div class="msg-bubble">
                                <div class="msg-info">
                                  <div class="msg-info-name">{{$h->users->name}}</div>
                                  <div class="msg-info-time">{{\Carbon\Carbon::parse($h->created_at)->Format('d M Y H:i:s')}}</div>
                                </div>
                                <div class="msg-text text-dark">
                                 {{$h->pesan}}
                                </div>
                              </div>
                          </div>
                          @endif
                        @else
                        <div class="msg left-msg">
                            <div
                             class="msg-img"
                             style="background-image: url(images/ex-profile-1.jpg)"
                            ></div>

                            <div class="msg-bubble">
                              <div class="msg-info">
                                <div class="msg-info-name">{{$h->vendors->nama_vendor}}</div>
                                <div class="msg-info-time">{{\Carbon\Carbon::parse($h->created_at)->Format('d M Y H:i:s')}}</div>
                              </div>

                              <div class="msg-text">
                                {{$h->pesan}}
                              </div>
                            </div>
                          </div>
                        @endif
                    @empty

                    @endforelse





                    </main>
                  <form class="msger-inputarea" action="{{route('sendchat')}}" method="post">
                    @csrf
                    <input type="text" class="msger-input" name="pesan" placeholder="Masukan pesan..." required>
                    <input type="hidden" class="msger-input" name="user" value="{{Auth::user()->id}}">
                    <input type="hidden" class="msger-input" name="vendor" value="{{Request::segment(2)}}">
                    <input type="hidden" class="msger-input" name="jasa_id" value="{{$jasaid}}">
                    <input type="hidden" class="msger-input" name="kode_chat" value="{{$cekChat->kode_chat ?? ""}}">
                    <input type="hidden" name="status_send_replay" value="{{$sendreplay}}">


                    <button type="submit" class="msger-send-btn">Send</button>
                  </form>
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

@endsection

