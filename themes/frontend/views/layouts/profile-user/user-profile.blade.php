 
<style>
  .img-profile {
    float: left;
    width: 230px;
    margin-right: 20px;
}
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
                  <li class="list-group-item">Cherry Citra</li>
                  <li class="list-group-item">Chrryctr1509@gmail.com</li>
                  <li class="list-group-item">Jl. pedongkelan belakang</li>
                  <li class="list-group-item">08962162716271</li>
                  <li class="list-group-item">11728</li>
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
                     <form>
                        <div class="form-group">
                          <label for="exampleFormControlInput1">Email address</label>
                          <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                        </div>
                        <div class="form-group">
                          <label for="exampleFormControlSelect1">Example select</label>
                          <select class="form-control" id="exampleFormControlSelect1">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="exampleFormControlSelect2">Example multiple select</label>
                          <select multiple class="form-control" id="exampleFormControlSelect2">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="exampleFormControlTextarea1">Example textarea</label>
                          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                  </div>
                </div>
              </div>

              </div>
            </div>
          </div>