@extends('layout.master')
@section('title','')
@section('content')
<header class="header "
    style="background-image: url({{asset('images/pattern-bg1.jpg')}});background-size:cover;background-position:center;">
    <div class="container">
        <div class="row align-items-center h-100">

            <div class="col-md-7 mx-auto">
                <h2 class="ls-0 text-capitalize fw-700">Connect</h2>
                <p class="lead-3  ls-1">Discover your business potential and get in touch with us!
                </p>
            </div>

        </div>
    </div>
</header>
<!-- END Header -->
<main class="main-content ">
    <section class="section">
        <div class="container">

          <form class="row gap-y" action="/" method="POST" data-form="mailer">
            <div class="col-lg-7">
              {{-- <h3>Please fill form below</h3>
              <br>

              <div class="alert alert-success d-on-success">We received your message and will contact you back soon.</div>

              <div class="form-row">
                <div class="form-group col-md-6">
                  <input class="form-control form-control-lg" type="text" name="name" placeholder="Name">
                </div>

                <div class="form-group col-md-6">
                  <input class="form-control form-control-lg" type="email" name="email" placeholder="Email">
                </div>
              </div>

              <div class="form-group">
                <textarea class="form-control form-control-lg" rows="4" placeholder="Message" name="message"></textarea>
              </div>

              <button class="btn btn-lg btn-primary" type="submit">Send message</button> --}}
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.7977726305376!2d106.7805307151121!3d-6.290289763319876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f1daab245475%3A0x20d0a249d6806bd4!2sPalma%20Tower%2C%20Pd.%20Pinang%2C%20Kec.%20Kby.%20Lama%2C%20Kota%20Jakarta%20Selatan%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1578854126203!5m2!1sid!2sid" style="width:100%;height:400px;margin-bottom:-7px;" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
            </div>


            <div class="col-lg-4 ml-auto text-center text-lg-left">
              <hr class="d-lg-none">
              <h3>Office and Contact number</h3>
              <br>
              <p>Palma Tower 20th Floor, JL. R.A Kartini III-S Kav. 6, Jakarta 12310, Indonesia</p>
              <p>+62-21 508 588 08</p>
              <p>atika.hasna@ffinardiconsulting.com</p>
             
          </form>

        </div>

      </section>
      <section>
        {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.7977726305376!2d106.7805307151121!3d-6.290289763319876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f1daab245475%3A0x20d0a249d6806bd4!2sPalma%20Tower%2C%20Pd.%20Pinang%2C%20Kec.%20Kby.%20Lama%2C%20Kota%20Jakarta%20Selatan%2C%20Daerah%20Khusus%20Ibukota%20Jakarta!5e0!3m2!1sid!2sid!4v1578854126203!5m2!1sid!2sid" style="width:100%;height:400px;margin-bottom:-7px;" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
      </section> --}}
</main>
@endsection

@section('footer')
<script>
    $('.autoplay').slick({
        slidesToShow: 2,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        arrows: false
    });
</script>
@endsection