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
    

    <!-- START CONTENT -->
    @yield('content')
    <!-- END CONTENT -->

    

   
    
   

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