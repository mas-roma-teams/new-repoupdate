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
    <!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script> -->
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

   <script>
    window.addEventListener('DOMContentLoaded', function() {
       $(function () {
            $.ajaxSetup({
                headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') }
            });

            $('#province').change(function () {
                $.ajax({
                    url: '{{ route('vendorsprovice.store') }}',
                    method: 'POST',
                    data: {id: $(this).val()},
                    success: function (response) {
                        $('#city').empty();

                        $.each(response, function (id, name) {
                            $('#city').append(new Option(name, id))
                        })
                    }
                })
            });
        });
    });

   </script>
  </body>
</html>