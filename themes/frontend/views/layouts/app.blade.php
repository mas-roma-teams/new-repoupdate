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
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <title>{{ config('app.name', 'Laravel') }}</title>
    <script src="https://cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
     <!-- Select2 -->

  <link rel="stylesheet" href="{{ asset('admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.css"
        integrity="sha256-pODNVtK3uOhL8FUNWWvFQK0QoQoV3YA9wGGng6mbZ0E=" crossorigin="anonymous" />


    {{-- dropify --}}
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css" integrity="sha512-In/+MILhf6UMDJU4ZhDL0R0fEpsp4D3Le23m6+ujDWXwl3whwpucJG1PEmI3B07nyJx+875ccs+yX2CqQJUxUw==" crossorigin="anonymous" />
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>



    <!-- Select2 CSS -->
    <link rel="stylesheet" type="text/css" href="{{ asset('themes/frontend/css/select2.min.css') }}">
    <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" /> -->


  </head>
  <body style="overflow-x: hidden;">




    <!-- Preloader -->
  {{-- <section id="preloader">
    <div>
      <div id="ctn-preloader" class="ctn-preloader">
        <div class="animation-preloader">
          <div class="spinner"></div>
          <div class="txt-loading">
            <span data-text-preloader="L" class="letters-loading">
              L
            </span>

            <span data-text-preloader="O" class="letters-loading">
              O
            </span>

            <span data-text-preloader="A" class="letters-loading">
              A
            </span>

            <span data-text-preloader="D" class="letters-loading">
              D
            </span>

            <span data-text-preloader="I" class="letters-loading">
              I
            </span>

            <span data-text-preloader="N" class="letters-loading">
              N
            </span>

            <span data-text-preloader="G" class="letters-loading">
              G
            </span>
          </div>
        </div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
      </div>
    </div>
  </section> --}}

    <!-- START CONTENT -->
    @yield('content')
    <!-- END CONTENT -->


    @include('layouts.user.tombol-chat')

    <!-- INCLUDEFOOTER -->
    @include('layouts.footer.index')
    <!-- END INCLUDE FOOTER-->


    <!-- @include('layouts.user.modal-chat-user') -->








    <script src="{{ asset('themes/frontend/js/hasil-nominal.js') }}"></script>

    <script src="{{ asset('themes/frontend/js/jquery-3.5.1.slim.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/jquery-3.6.0.min.js') }}"></script>
<!--     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script> -->
    <!-- Select2 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
    <script src="{{ asset('themes/frontend/js/popper.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    {{-- <script src="{{ asset('themes/frontend/js/main.js') }}"></script> --}}
    <script src="{{ asset('themes/frontend/js/slick.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('themes/frontend/js/app.js') }}" defer></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<!-- Select2 -->
    <!-- <script src="{{ asset('admin/plugins/select2/js/select2.full.min.js') }}"></script> -->


    <script>
      $(document).ready(function() {

      setTimeout(function() {
        $('#ctn-preloader').addClass('loaded');
        // Una vez haya terminado el preloader aparezca el scroll
        $('body').removeClass('no-scroll-y');

        if ($('#ctn-preloader').hasClass('loaded')) {
          // Es para que una vez que se haya ido el preloader se elimine toda la seccion preloader
          $('#preloader').delay(1000).queue(function() {
            $(this).remove();
          });
        }
      }, 1500);

    });
    </script>
    <script type="text/javascript">

      $(document).ready(function() {
          $('.select2').select2();
      });


    </script>

    <script type="text/javascript" src="{{ asset('themes/frontend/js/autoNumeric.js') }}"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#rupiah').autoNumeric('init');
        });
    </script>

    <script type="text/javascript">

     $(document).ready(function() {
      $("#city").select2();
      });



    $(document).ready(function() {
    $('.select2').select2();
    });
      </script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js" integrity="sha512-8QFTrG0oeOiyWo/VM9Y8kgxdlCryqhIxVeRpWSezdRRAvarxVtwLnGroJgnVW9/XBRduxO/z1GblzPrMQoeuew==" crossorigin="anonymous"></script>


    <script type="text/javascript">
      function myFunction() {
      /* Get the text field */
      var copyText = document.getElementById("myInput");
      console.log(copyText);
      /* Select the text field */
      copyText.select();
      copyText.setSelectionRange(0, 99999); /* For mobile devices */

      /* Copy the text inside the text field */
      document.execCommand("copy");

      /* Alert the copied text */
      alert("Copied the text: " + copyText.value);
    }
    </script>

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
          $(document).ready(function () {
              // var harga = $('#harga').val();
              // // console.log(harga);
              // var jumlah_dp = document.getElementById('jumlah_dp').value;
              // var total = harga * (komisi / 100);
              $('#jumlah_dp').on('keyup', function () {
                  var jumlah_dp = this.value;
                  var harga = $('#harga').val();
                  var total = harga * (jumlah_dp / 100);
                  $('#jumlah_dp_uang').val(Math.ceil(total));
              });

          });

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
       <script>
        CKEDITOR.replace( 'editor' );
    </script>

    <script>
      $("#position").select2({
        allowClear:true,
        placeholder: 'Position',
      });
    </script>

    <script type="text/javascript">

      anchors.options.placement = 'left';
      anchors.add('.container h1, .container h2, .container h3, .container h4, .container h5');

      // Set the "bootstrap" theme as the default theme for all Select2
      // widgets.
      //
      // @see https://github.com/select2/select2/issues/2927
      $.fn.select2.defaults.set( "theme", "bootstrap" );

      var placeholder = "Select a State";

      $( ".select2-single, .select2-multiple" ).select2( {
        placeholder: placeholder,
        width: null,
        containerCssClass: ':all:'
      } );

      $( ".select2-allow-clear" ).select2( {
        allowClear: true,
        placeholder: placeholder,
        width: null,
        containerCssClass: ':all:'
      } );

      // @see https://select2.github.io/examples.html#data-ajax
      function formatRepo( repo ) {
        if (repo.loading) return repo.text;

        var markup = "<div class='select2-result-repository clearfix'>" +
          "<div class='select2-result-repository__avatar'><img src='" + repo.owner.avatar_url + "' /></div>" +
          "<div class='select2-result-repository__meta'>" +
            "<div class='select2-result-repository__title'>" + repo.full_name + "</div>";

        if ( repo.description ) {
          markup += "<div class='select2-result-repository__description'>" + repo.description + "</div>";
        }

        markup += "<div class='select2-result-repository__statistics'>" +
              "<div class='select2-result-repository__forks'><span class='glyphicon glyphicon-flash'></span> " + repo.forks_count + " Forks</div>" +
              "<div class='select2-result-repository__stargazers'><span class='glyphicon glyphicon-star'></span> " + repo.stargazers_count + " Stars</div>" +
              "<div class='select2-result-repository__watchers'><span class='glyphicon glyphicon-eye-open'></span> " + repo.watchers_count + " Watchers</div>" +
            "</div>" +
          "</div></div>";

        return markup;
      }

      function formatRepoSelection( repo ) {
        return repo.full_name || repo.text;
      }

      $( ".js-data-example-ajax" ).select2({
        width : null,
        containerCssClass: ':all:',
        ajax: {
          url: "https://api.github.com/search/repositories",
          dataType: 'json',
          delay: 250,
          data: function (params) {
            return {
              q: params.term, // search term
              page: params.page
            };
          },
          processResults: function (data, params) {
            // parse the results into the format expected by Select2
            // since we are using custom formatting functions we do not need to
            // alter the remote JSON data, except to indicate that infinite
            // scrolling can be used
            params.page = params.page || 1;

            return {
              results: data.items,
              pagination: {
                more: (params.page * 30) < data.total_count
              }
            };
          },
          cache: true
        },
        escapeMarkup: function (markup) { return markup; }, // let our custom formatter work
        minimumInputLength: 1,
        templateResult: formatRepo,
        templateSelection: formatRepoSelection
      });

      $( "button[data-select2-open]" ).click( function() {
        $( "#" + $( this ).data( "select2-open" ) ).select2( "open" );
      });

      $( ":checkbox" ).on( "click", function() {
        $( this ).parent().nextAll( "select" ).prop( "disabled", !this.checked );
      });

      // copy Bootstrap validation states to Select2 dropdown
      //
      // add .has-waring, .has-error, .has-succes to the Select2 dropdown
      // (was #select2-drop in Select2 v3.x, in Select2 v4 can be selected via
      // body > .select2-container) if _any_ of the opened Select2's parents
      // has one of these forementioned classes (YUCK! ;-))
      $( ".select2-single, .select2-multiple, .select2-allow-clear, .js-data-example-ajax" ).on( "select2:open", function() {
        if ( $( this ).parents( "[class*='has-']" ).length ) {
          var classNames = $( this ).parents( "[class*='has-']" )[ 0 ].className.split( /\s+/ );

          for ( var i = 0; i < classNames.length; ++i ) {
            if ( classNames[ i ].match( "has-" ) ) {
              $( "body > .select2-container" ).addClass( classNames[ i ] );
            }
          }
        }
      });
    </script>

 @yield('script')
  </body>
</html>
