@extends('layout.nonavnofooter')

@section('title','Forget Password')
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
                <div class="col-lg-6 col-12 col-md-12   py-8 mx-auto">
                  <div class="row">
                    <div class="col-12 col-lg-12 ">
                      <div class="section-dialog">
                        <header class=" text-center">
                          <a href="/">
                            <img src="http://ncommerce.id/assets/src/assets/img/logo.png" data-aos="fade-up"
                              class="img-fluid mb-7 " width="200" alt />
                          </a>
                          <p class="text-center text-muted fs-13 pt-0">Reset Password</p>
                          @if (session('status'))
                          <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                          </div>
                          @endif
                        </header>
                        <form id="formlogin" action="{{ route('password.update') }}" class="pt-0 input-line"
                          method="POST">
                          @csrf
                          <input type="hidden" name="token" value="{{ $token }}">
                          <div class="form-group">
                            <input id="email" type="email"
                              class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email"
                              value="{{ $email ?? old('email') }}" required placeholder="E-mail" autofocus>

                            @if ($errors->has('email'))
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                          </div>
                          <div class="form-group">
                            <input id="password" placeholder="Password" type="password"
                              class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password"
                              required>

                            @if ($errors->has('password'))
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $errors->first('password') }}</strong>
                            </span>
                            @endif
                          </div>
                          <div class="form-group">
                            <input id="password-confirm" placeholder="Re-Password" type="password" class="form-control"
                              name="password_confirmation" required>
                          </div>

                          <button type="submit" id="buttonsubmit" class="btn btn-block btn-round btn-primary">Reset
                            Password</button>
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
@endsection