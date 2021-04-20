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
    <link rel="stylesheet" href="{{ asset('themes/frontend/css/style.css')}}">

    <title>{{ config('app.name', 'Laravel') }}</title>

     <!-- Select2 -->
  <link rel="stylesheet" href="{{asset('admin/plugins/select2/css/select2.min.css')}}">
  <link rel="stylesheet" href="{{asset('admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.css"
        integrity="sha256-pODNVtK3uOhL8FUNWWvFQK0QoQoV3YA9wGGng6mbZ0E=" crossorigin="anonymous" />
    {{-- dropify --}}
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css" integrity="sha512-In/+MILhf6UMDJU4ZhDL0R0fEpsp4D3Le23m6+ujDWXwl3whwpucJG1PEmI3B07nyJx+875ccs+yX2CqQJUxUw==" crossorigin="anonymous" />
    

  </head>
  <body style="overflow-x: hidden;">





    <!-- START CONTENT -->
    @yield('content')
    <!-- END CONTENT -->


    @include('layouts.user.tombol-chat')

    <!-- INCLUDE HEADER -->
    @include('layouts.footer.index')
    <!-- END INCLUDE HEADER -->
    <!-- @include('layouts.user.modal-chat-user') -->








    <script src="{{ asset('themes/frontend/js/jquery-3.5.1.slim.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/jquery-3.6.0.min.js') }}"></script>
<!--     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script> -->
    <script src="{{ asset('themes/frontend/js/popper.min.js') }}"></script>

    {{-- <script src="{{ asset('themes/frontend/js/main.js') }}"></script> --}}
    <script src="{{ asset('themes/frontend/js/slick.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/app.js') }}" defer></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<!-- Select2 -->
<script src="{{asset('admin/plugins/select2/js/select2.full.min.js')}}"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js" integrity="sha512-8QFTrG0oeOiyWo/VM9Y8kgxdlCryqhIxVeRpWSezdRRAvarxVtwLnGroJgnVW9/XBRduxO/z1GblzPrMQoeuew==" crossorigin="anonymous"></script>

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
                // console.log(id);
                // console.log(province_id);

                // Empty DropDown
                $('#city').find('option').not(':first').remove();

                // AJAX Request
                $.ajax({
                    url: 'getCitys/'+ province_id,
                    type: 'GET',
                    dataType: 'json',
                    success : function(response){
                        // console.log(response);

                        var len = 0;
                        if(response != null){
                            len = response.length;
                        }

                        if(len > 0) {

                            // Read Data Create Option
                            for(var i=0; i<len; i++) {
                                var province_id = response[i].province_id;
                                var name = response[i].name;
                                var city_id = response[i].id;
                                var option = "<option value='"+city_id+"'>"+name+"</option>";

                            $("#city").append(option);
                            }
                        }
                    }
                })


            })

            $('#city').change(function(){
                var city_id =  $(this).val();

                $('#district').find('option').not(':first').remove();

                // AJAX Request
                $.ajax({
                    url: 'getDistrict/'+ city_id,
                    type: 'GET',
                    dataType: 'json',
                    success : function(res){


                        var len = 0;
                        if(res != null){
                            len = res.data.length;
                        }

                        if(len > 0) {
                            // Read Data Create Option
                            for(var i=0; i<len; i++) {
                                var city_id = res.data[i].city_id;
                                var name = res.data[i].name;
                                var district_id = res.data[i].id;
                                var option = "<option value='"+district_id+"'>"+name+"</option>";

                            $("#district").append(option);
                            }
                        }
                    }
                })

            })

            $('#district').change(function(){
                var district_id =  $(this).val();


                $('#villages').find('option').not(':first').remove();

                // AJAX Request
                $.ajax({
                    url: 'getVillages/'+ district_id,
                    type: 'GET',
                    dataType: 'json',
                    success : function(res){


                        var len = 0;
                        if(res != null){
                            len = res.data.length;
                        }

                        if(len > 0) {
                            // Read Data Create Option
                            for(var i=0; i<len; i++) {
                                var district_id = res.data[i].city_id;
                                var name = res.data[i].name;
                                var villages_id = res.data[i].id;
                                var option = "<option value='"+villages_id+"'>"+name+"</option>";

                            $("#villages").append(option);
                            }
                        }
                    }
                })

            })
       })
   </script>




   <script>
   $(function () {
     //Initialize Select2 Elements
     $('.select2').select2()

     //Initialize Select2 Elements
     $('.select2bs4').select2({
       theme: 'bootstrap4'
     })
   });
 </script>

<script>
    $('.dropify').dropify({
       error: {
           'fileSize': 'File gambar terlalu besar maksimal 2 MB ).',
           'imageFormat': 'Format gambar hanya JPG, JPEG dan PNG ).'
       }
   });

   var drEvent =  $('.dropify.photo_vendor').dropify();
  drEvent.on('dropify.afterClear', function(event, element){
  $("#photo_vendor_").val("1");
  });
   </script>
  </body>
</html>
