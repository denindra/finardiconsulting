@extends('layout.nonavnofooter')

@section('title','Signup')
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
        <!-- desktop and largescreen start-->
        <section class="container-fluid">
            <div class="row h-full">
                <div class="col-lg-6 col-sm-12 hidden-lg-down d-none d-md-block"
                    style="background-image: url(https://s3-ap-southeast-1.amazonaws.com/ncommerce-assets/ncommapps_assets/ncommassts/login-image.png); height:100%; max-width:100%">
                    <div class="h-fullscreen"></div>
                </div>
                <div class="col-lg-6 col-sm-12 bg-white">
                    <div class="h-fullscreen center-vh">
                        <div class="container">
                            <div class="row gap-y">
                                <div class="col-lg-10 col-12 col-md-12  py-6 mx-auto">
                                    <div class="row">
                                        <div class="col-12 col-lg-12 ">
                                            <div class="section-dialog">
                                                <header class=" text-center">
                                                    <a href="/">
                                                        <img src="http://ncommerce.id/assets/src/assets/img/logo.png"
                                                            data-aos="fade-up" class="img-fluid mb-7 " width="200"
                                                            alt />
                                                    </a>
                                                    <div class="alert alert-danger" id="alert-error"
                                                        style="display:none">

                                                        <ul id="error-message">
                                                            @foreach ($errors->all() as $error)
                                                            <li>{{ $error }}</li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                    <p class="text-center text-muted fs-13 pt-0">Sudah Memiliki Akun?
                                                        <a href="/login">Login</a>
                                                    </p>
                                                    <p class="text-primary fw-700" id="messageformserver"></p>
                                                </header>

                                                <form id="formSignup" action="/postSignup" class=" pt-0 input-line"
                                                    method="post">
                                                    @csrf
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" name="u_name" id="name"
                                                            value="" placeholder="Full Name*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input class="form-control" type="email" id="email" name="email"
                                                            value="" data-validation="email" placeholder="Email*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input class="form-control" type="number" name="u_phone"
                                                            id="phone" value="" placeholder="Phone Number*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input class="form-control" type="password" id="password"
                                                            name="password" value="" placeholder="Password*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input class="form-control" type="password"
                                                            id="password_confirmation" name="password_confirmation"
                                                            value="" placeholder="Re-Password*">
                                                    </div>
                                                    {{-- <input type="submit" value="ok"> --}}
                                                    <div class="text-center">
                                                        <button type="button" onclick="registerprocess()"
                                                            id="buttonsubmit" class="btn btn-round btn-primary">Sign
                                                            Up</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12 text-dark text-center">
                                            <a href="/">Back to Home</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </section>
    <!-- desktop and largescreen ends-->
    </div>
</main>
@endsection

@section('footer')
<div class="modal fade " id="modalSignup" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog"
    aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content bg-white  shadow-9">
            <div class="modal-body">
                <div class="container-fluid py-4">
                    <div class="row">
                        <div class="col-lg-3 col-5 mx-auto">
                            <img src="http://ncommerce.id/assets/src/assets/img/logo.png" data-aos="fade-top"><br />
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-lg-12 col-12 mx-auto text-center">
                            <h5 class="text-dark"><span id="username_signup3">Account Created!</h5>
                            <p>You will be redirected to Login Page</p>
                            <p>Click <a href="/login">Here</a> if you did not redirect to Login Page</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(document).ready(function () {
        $('#name').keypress(function (e) {
            if (e.keyCode == 13)
                $('#buttonsubmit').click();
        });
        $('#email').keypress(function (e) {
            if (e.keyCode == 13)
                $('#buttonsubmit').click();
        });
        $('#phone').keypress(function (e) {
            if (e.keyCode == 13)
                $('#buttonsubmit').click();
        });
        $('#password').keypress(function (e) {
            if (e.keyCode == 13)
                $('#buttonsubmit').click();
        });
        $('#password_confirmation').keypress(function (e) {
            if (e.keyCode == 13)
                $('#buttonsubmit').click();
        });
    });

    function registerprocess() {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            }
        });
        $('#formSignup').validate({
            rules: {
                u_name: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                u_phone: {
                    required: true,
                    number: true,
                },
                password: {
                    required: true,
                    minlength: 8
                },
                password_confirmation: {
                    equalTo: "#password"
                }

            }
        });

        if ($('#formSignup').valid()) {
            var data = {
                u_name: $('#name').val(),
                email: $('#email').val(),
                u_phone: $('#phone').val(),
                password: $('#password').val(),
                password_confirmation: $('#password_confirmation').val()
            }
            $.ajax({
                type: 'POST',
                url: '/postSignup',
                // dataType: "json",
                data: data,
                beforeSend: function (data) {
                    console.log(data)
                    $("#buttonsubmit").attr("disabled", true);
                    $('#buttonsubmit').html('Please Wait');

                },
                success: function (data) {
                    $("#buttonsubmit").attr("disabled", false);
                    $('#buttonsubmit').html('Success Signup!');
                    $('#modalSignup').modal('show');
                    setTimeout(function () {
                        window.location.href = "/login";
                    }, 2000)
                },
                error: function (request, status, error) {
                    $('#buttonsubmit').effect('shake').addClass('btn-danger');
                    $('#buttonsubmit').html('Wrong!');
                    $("#buttonsubmit").attr("disabled", false);
                    setTimeout(function () {
                        $('#buttonsubmit').html('Login').removeClass('btn-danger');
                    }, 1500);
                    json = $.parseJSON(request.responseText);
                    $.each(json.errors, function (key, value) {
                        $('.alert-danger').show();
                        $('#error-message').html('<li>' + value + '</li>');
                    });
                }
            });
        }

    }
</script>
@endsection