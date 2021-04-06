 
<style>
  .img-profile {
    float: left;
    width: 230px;
    margin-right: 20px;
    margin-bottom: 12px;

  }
</style>
 <div class="d-flex justify-content-between mb-3">
            <h2>Profile User</h2>
          </div>
          <div class="card mb-5">
            <div class="card-body">

            <div class="col-md-12"> 
                  
              <img src="https://via.placeholder.com/100x100" class="img-profile">
              
              
                  <ul class="list-group list-group-flush">
                  <li class="list-group-item">{{ $users->name }}</li>
                  <li class="list-group-item">{{ $users->email }}</li>
                  <li class="list-group-item">{{ $users->no_tlp }}</li>
                </ul>

                <br>
               <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal">
                EDIT PROFILE
              </button>

                
            </div>

              <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">EDIT USER</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                     <form action="{{ url('/user/'. $users->id) }}" method="POST">
                      @csrf
                      @method('PUT')

                       <div class="form-group">
                          <label for="name">Nama Pengguna</label>
                         <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $users->name }}" required autocomplete="name" autofocus>

                          @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                          @enderror

                        </div>

                        <div class="form-group">
                          <label for="email">Alamat Email</label>
                          <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $users->email }}" required autocomplete="email">

                          @error('email')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                          @enderror
                        </div>

                        <div class="form-group">
                          <label for="notel">Nomor Whatsapp</label>
                          <input type="text" class="form-control" value="{{ $users->no_tlp }}" name="no_tlp" id="notel" aria-describedby="emailHelp">
                          @error('no_tlp')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                          @enderror
                        </div>

                        <div class="form-group">

                          <label for="password">{{ __('Password') }}</label>
                         <!--  <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                          <span id="toggle_pwd" class="fa fa-fw fa-eye field_icon"></span> --> 
                            <div class="input-group">
                                <input class="form-control py-2 border-right-0 border @error('password') is-invalid @enderror" type="password" id="password" name="password" required autocomplete="current-password">
                                <span class="input-group-append">
                                    <div class="input-group-text bg-transparent"><i id="toggle_pwd" class="fa fa-eye" style="cursor: pointer;"></i></div>
                                </span>
                            </div>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>

                        <div class="form-group">

                          <label for="password">{{ __('Confirm Password') }}</label>
                         <!--  <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                          <span id="toggle_pwd" class="fa fa-fw fa-eye field_icon"></span> --> 
                            <div class="input-group">

                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                <span class="input-group-append">
                                    <div class="input-group-text bg-transparent"><i id="toggle_pwd1" class="fa fa-eye" style="cursor: pointer;"></i></div>
                                </span>
                            </div>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                      
                     
                   
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary">Save changes</button>
                     </form>
                    </div>
                  </div>
                </div>
              </div>

              </div>
            </div>
          </div>