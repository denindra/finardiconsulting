@extends('layout.master')
@section('title','')
@section('content')
<header class="header "
    style="background-image: url({{asset('images/pattern-bg1.jpg')}});background-size:cover;background-position:center;">
    <div class="container">
        <div class="row align-items-center h-100">

            <div class="col-md-7 mx-auto">
                <h2 class="ls-0 text-capitalize fw-700">Type Of Services</h2>
                <p class="lead-3  ls-1">Partener to us means what we care about your business's success just
                    as much as you do. since we are talking business strategy, ours is to be your long-term collaborative team.
                    our holistic approach looks at the big picture and will guide you through the smallest details.
                </p>
            </div>

        </div>
    </div>
</header>
<!-- END Header -->
<main class="main-content ">
    <section class="section" id="services">
        <div class="container">
         
          <div class="row align-items-center">
    
            <div class="col-md-6">
              <div class="video-btn-wrapper">
                <img class="shadow-4 rounded-lg" src="{{asset('images/team2.jpg')}}" alt="watch a video">
              </div>
            </div>
    
            <div class="col-md-6">
              <ol class="step">
                <li class="step-item">
                  <div class="step-icon">
                    <span class="iconbox text-primary bg-dark fw-500">1</span>
                  </div>
    
                  <div class="step-content">
                    <h4>Advisory</h4>
                    <p class="fs-18">Think the or organization same proposal to affected heard reclined in be it reassuring.
                    </p>
                  </div>
                </li>
    
                <li class="step-item">
                  <div class="step-icon">
                    <span class="iconbox text-primary bg-dark fw-500">2</span>
                  </div>
    
                  <div class="step-content">
                    <h4>Consulting</h4>
                    <p class="fs-18">Think the or organization same proposal to affected heard reclined in be it reassuring.
                    </p>
                  </div>
                </li>
    
                <li class="step-item">
                  <div class="step-icon">
                    <span class="iconbox text-primary bg-dark fw-500">3</span>
                  </div>
    
                  <div class="step-content">
                    <h4>Business Set-Up Services</h4>
                    <p class="fs-18">Think the or organization same proposal to affected heard reclined in be it reassuring.
                    </p>
                  </div>
                </li>
              </ol>
            </div>
    
          </div>
          <div class="row mt-8">
            <div class="col-lg-12 text-center">
              <a class="btn btn-primary btn-xl btn-round  mr-15 mt-2 " href="/contact">Connect Now</a>
            </div>
          </div>
        </div>
      </section>
      <section class="section pt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 ">

                    <div class="col-lg-12 pb-6" style="border-bottom:1px solid #000;">
                        <a href="/expertise">
                        <div class="row">
                            <div class="col-lg-8 col-8 mt-6  pl-0 ">
                                <h3>    About & Expertise</h3>
                            </div>
                            <div class="col-lg-4 col-4 text-right "><i
                                    class="fa fa-arrow-right display-4 fs-20 text-right text-dark mt-7"></i></div>
                        </div>
                    </a>
                    </div>
                </div>
                <div class="col-lg-2"></div>
                <div class="col-lg-5 ">

                    <div class="col-lg-12 pb-6" style="border-bottom:1px solid #000;">
                        <a href="/clients">
                        <div class="row">
                            <div class="col-lg-8 col-8 mt-6 pl-0 ">
                                <h3>View Our Clients</h3>
                            </div>
                            <div class="col-lg-4 col-4 text-right "><i
                                    class="fa fa-arrow-right display-4 fs-20 text-right text-dark mt-7"></i></div>
                        </div>
                    </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
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