@extends('layout.nonavnofooter')

@section('title','Login')
@section('header')
<style>
  .error {
    color: orange;
  }
</style>
@endsection

@section('content')
<main>
  <div class="h-fullscreen py-0">
    <section class="container-fluid">
      <div class="row h-full">
        <div class="col-lg-6 col-sm-12 hidden-lg-down d-none d-md-block" style="background-image: url(https://s3-ap-southeast-1.amazonaws.com/ncommerce-assets/ncommapps_assets/ncommassts/login-image.png);
             height: 100%; max-width: 100%;">
          <div class="h-fullscreen"></div>
        </div>
        <div class="col-lg-6 col-sm-12 bg-white">
          <div class="h-fullscreen center-vh">
            <div class="container">
              <div class="row gap-y">
                <div class="col-lg-10 col-12 col-md-12   py-8 mx-auto">
                  <div class="row">
                    <div class="col-12 col-lg-12 ">
                      <div class="section-dialog">
                        <header class=" text-center">
                          <a href="/">
                            <img src="http://ncommerce.id/assets/src/assets/img/logo.png" data-aos="fade-up"
                              class="img-fluid mb-7 " width="200" alt />
                          </a>
                          <div class="alert alert-danger" id="alert-error" style="display:none">
                            <ul>
                              @foreach ($errors->all() as $error)
                              <li>{{ $error }}</li>
                              @endforeach
                            </ul>
                          </div>
                          <p class="text-center text-muted fs-13 pt-0">belum Memiliki Akun? <a
                              href="{{ route('register') }}">Register</a></p>
                          <p class="text-primary"><b id="messagerepson"> </b></p>
                        </header>
                        <form id="formlogin" class="pt-0 input-line" method="POST">
                          @csrf
                          <div class="form-group">
                            <input class="form-control" name="email" type="text" id="email" defaultValue
                              placeholder="Email" />
                          </div>
                          <div class="form-group">
                            <input class="form-control" type="password" id="password" defaultValue name="password"
                              placeholder="Password" />
                          </div>
                          <div class="form-group">
                            <a class="text-center text-muted fs-13 pt-0" href="{{ route('password.request') }}">Lupa
                              Password ?</a>
                          </div>
                          <div class="text-center">
                            <button type="button" onclick="loginprocess()" id="buttonsubmit"
                              class="btn btn-round btn-primary">Login</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-12 text-dark text-center">
                      <div class="spinner-border text-muted"></div>
                      <a href="/">Back to Home</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

</main>
@endsection

@section('footer')

<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

<Script>
  $(document).ready(function () {
    $('#email').keypress(function (e) {
      if (e.keyCode == 13)
        $('#buttonsubmit').click();
    });
    $('#password').keypress(function (e) {
      if (e.keyCode == 13)
        $('#buttonsubmit').click();
    });
  });
  jQuery.validator.setDefaults({
    debug: true,
    success: "valid"
  });

  function loginprocess() {
    $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
      }
    });
    $("#formlogin").validate({
      rules: {
        u_email: {
          required: true,
        },
        u_password: {
          required: true,
        }
      }
    });
    if ($("#formlogin").valid()) {


      var data = {
        email: $("#email").val(),
        password: $("#password").val(),
      };

      $.ajax({
        type: "POST",
        url: "/loginCheck",

        // contentType: "application/x-www-form-urlencoded",
        // dataType: "json",
        data: data,
        beforeSend: function (result) {
          $("#buttonsubmit").attr("disabled", true);
          $('#buttonsubmit').html(' Mohon menunggu')
          // console.log(result);
        },

        success: function (result) {
          console.log(result)
          if (result.status == false) {
            $("#messagerepson").html("" + result.data.message + "");
            $("#buttonsubmit").attr("disabled", false);
            $('#buttonsubmit').html('Login');
          } else {
            $('#buttonsubmit').html('Login Success');
            window.location.href = "/dashboard";
          }

        },
        error: function (data, data1, data2) {
          console.log(data);
          console.log(data1);
          console.log(data2);
          $("#buttonsubmit").attr("disabled", false);
          $('#buttonsubmit').html('Login')
        }
      });

    }

  }
</Script>

@endsection