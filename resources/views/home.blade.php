@extends('layout.master')
@section('title','')
@section('content')
<header class="header header-inverse py-12 pb-0 overflow-hidden"
  style="background-image: url({{asset('images/slide.jpg')}});background-size:cover;background-position:center;"
  data-overlay="7">
  <div class="container">
    <div class="row h-half">
      <div class="col-12 col-lg-8 align-self-center">
       
        <h1 class="display-5  fw-700 ls-0 text-white text-capitalize">We Are Guided by your <span
            class="text-primary">Goals</span>, Inspired by your <span class="text-primary">Vision</span>. Together, We
          Extend Your Plan and <br/><span class="text-primary">Make it happen</span>
        </h1>
        <a class="btn btn-xl btn-round btn-outline-primary  mt-2" href="#aboutus">Learn More</a>

        <a class="btn btn-xl btn-round btn-primary ml-2 mt-2" href="http://ncommerce.id/signup">Connect Now</a>



      </div>

      <div class="col-12 align-self-end text-center "></div>
    </div>


  </div>
</header>
<!-- END Header -->
<main class="main-content">
  <section class="section " id="aboutus"
    style="background-image: url({{asset('images/pattern-bg1.jpg')}});background-size:cover;background-position:center;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <header class="section-header mb-5">
            <h2 class="ls-0 text-capitalize fw-700">About & Expertise</h2>
            <hr class="text-primary fw-700 mt-2">
          </header>
        </div>

      </div>
      <div class="row">
        <div class="col-lg-12">
          <p class="fs-20 display-5 text-center ls-1">We believe in sustainable business growth rooted by well-operated business governance. Growth strategy and business expansion are at the heart of what we have done at Finardi&Co. Through our partnership, we will help you start, grow, and achieve what you have never thought possible. 
          </p>
        </div>
      </div>
      <div class="row my-6">
        <div class="col-md-6 col-xl-4 mt-5">
          <div class="card card-body shadow-3 text-center  ">
            <p class="my-5"><i class="icon-browser lead-6"></i></p>
            <h5 class="mb-5 fw-500"><a href="#">Governence</a></h5>
            <p>We help our clients to align all the measures together to create a long-term sustainable financial performance</p>
            <a href="/expertise/#expert" class="text-primary mb-4">Learn more</a>
          </div>
        </div>

        <div class="col-md-6 col-xl-4 mt-5">
          <div class="card card-body shadow-3 text-center">
            <p class="my-5"><i class="icon-mobile lead-6"></i></p>
            <h5 class="mb-5 fw-500"><a href="#">Strategy</a></h5>
            <p>Develop a corporate strategy that produces sustainable value, one that empowers you to reach full potential in your core business</p>
              <a href="/expertise/#expert" class="text-primary mb-4">Learn more</a>
          </div>
        </div>

        <div class="col-md-6 col-xl-4 mt-5">
          <div class="card card-body shadow-3 text-center  ">
            <p class="my-5"><i class="icon-linegraph lead-6"></i></p>
            <h5 class="mb-5 fw-500"><a href="#">Implementation</a></h5>
            <p>enables you to take each capacity within your company to new levels of performance<br>&nbsp;</p>

            <a href="/expertise/#expert" class="text-primary mb-4">Learn more</a>
          </div>
        </div>


      </div>
      <div class="row">
        <div class="col-lg-12 text-center">
          <a class="btn btn-info btn-xl btn-round  mr-15 mt-2 " href="/expertise">Explore</a>

        </div>
      </div>
    </div>
  </section>

  <section class="section" id="services">
    <div class="container">
      <header class="section-header">
        <h2 class="text-dark fw-700">Services</h2>
        <hr class="text-primary fw-700 mt-2">
        <p class="fs-20 display-5 text-center ls-1">Partnership to us means that we care about your business’s success just as much as you do. Since we are talking business strategy, ours is to be your long-term collaborative team. 

          Our holistic approach looks at the big picture and will guide you through the smallest details. 
        </p>
      </header>


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
                <p class="fs-18">Retainer based project that will help you through a long-term of execution. 
                </p>
              </div>
            </li>

            <li class="step-item">
              <div class="step-icon">
                <span class="iconbox text-primary bg-dark fw-500">2</span>
              </div>

              <div class="step-content">
                <h4>Consulting</h4>
                <p class="fs-18">Consultancy service to your specific project that will enhance your accuracy on making business. 

                </p>
              </div>
            </li>

            <li class="step-item">
              <div class="step-icon">
                <span class="iconbox text-primary bg-dark fw-500">3</span>
              </div>

              <div class="step-content">
                <h4>Business Set-Up Services</h4>
                <p class="fs-18">Preparing and enabling your business plan, from scratch to the launching phase.
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



  <!-- desktop  -->


{{-- 
  <section class="section"
    style="background-image: url({{asset('images/pattern-bg1.jpg')}});background-size:cover;background-position:center;">
    <div class="container">

      <header class="section-header">
        <h2 class="text-dark fw-700">Firnandi & CO Alumni</h2>
        <hr class="text-primary fw-700 mt-2">
        <p class="fs-20 display-5 text-center ls-1">We hold strong network for our alumnus filled with brunch of bright minds and talents from various industry. Hear more from them:
      </header>


      <div class="row gap-y text-center mt-8">

        <div class="col-lg-4">
          <blockquote class="blockquote">
            <div><img class="avatar avatar-xl" src="{{asset('images/user2.jpg')}}" alt="..."></div>
            <div class="fs-15 mt-6">When you innovate, you make mistakes. It is best to admit them quickly, and get on
              with improving your other innovations.</div>
            <footer class="fw-700 text-primary"><em>CEO, Steve Jobs</em></footer>
          </blockquote>
        </div>

        <div class="col-lg-4">
          <blockquote class="blockquote">
            <div><img class="avatar avatar-xl" src="{{asset('images/user1.jpg')}}" alt="..."></div>
            <div class="fs-15 mt-6">Design everything on the assumption that people are not heartless or stupid but
              marvelously capable, given the chance.</div>
            <footer class="fw-700 text-primary"><em>CEO, John Jones</em></footer>
          </blockquote>
        </div>

        <div class="col-lg-4">
          <blockquote class="blockquote">
            <div><img class="avatar avatar-xl" src="{{asset('images/user2.jpg')}}" alt="..."></div>
            <div class="fs-15 mt-6">Technology is just a tool. In terms of getting the kids working together and
              motivating them, the teacher is the most important.</div>
            <footer class="fw-700 text-primary"><em>CEO, Bill Gates</em></footer>
          </blockquote>
        </div>

        <div class="col-lg-4">
          <blockquote class="blockquote">
            <div><img class="avatar avatar-xl" src="{{asset('images/user1.jpg')}}" alt="..."></div>
            <div class="fs-15 mt-6">When you innovate, you make mistakes. It is best to admit them quickly, and get on
              with improving your other innovations.</div>
            <footer class="fw-700 text-primary"><em>CEO, Steve Jobs</em></footer>
          </blockquote>
        </div>

        <div class="col-lg-4">
          <blockquote class="blockquote">
            <div><img class="avatar avatar-xl" src="{{asset('images/user2.jpg')}}" alt="..."></div>
            <div class="fs-15 mt-6">Design everything on the assumption that people are not heartless or stupid but
              marvelously capable, given the chance.</div>
            <footer class="fw-700 text-primary"><em>CEO, John Jones</em></footer>
          </blockquote>
        </div>

        <div class="col-lg-4">
          <blockquote class="blockquote">
            <div><img class="avatar avatar-xl" src="{{asset('images/user1.jpg')}}" alt="..."></div>
            <div class="fs-15 mt-6">Technology is just a tool. In terms of getting the kids working together and
              motivating them, the teacher is the most important.</div>
            <footer class="fw-700 text-primary"><em>CEO, Bill Gates</em></footer>
          </blockquote>
        </div>

      </div>
      <div class="row mt-4">
        <div class="col-lg-8 mx-auto text-center">
          <a class="btn btn-info btn-xl btn-round  mr-15 mt-5 " href="/clients">View All Clients</a>
        </div>
      </div>

    </div>
  </section> --}}

  <section class="section py-10"
    style="background-image: url({{asset('images/team3.jpg')}});background-position:  top center  ">
    <div class="overlay opacity-80" style="background-image: linear-gradient(90deg, #fff 0%, transparent 100%);"></div>
    <div class="container">

      <div class="row">
        <div class="col-10 col-md-7 col-xl-5">
          <div class="section-dialog shadow-4">
            <h5 class="fw-500">ber susah susah kehulu bersenang - senang ketepian</h5>
            <blockquote class="blockquote text-left lead-1 mb-0 mt-5">
              <p>All it harmonics; Such based to pity of and rank people brief three their time and the this the should
                service employed.</p>
              <footer class="fw-700 text-primary">William, <cite title="Source Title">CEO Finardi & Co<cite></footer>

            </blockquote>
          </div>
          <a class="btn btn-xl btn-round btn-primary ml-2 mt-5" href="/contact">Connect Now</a>

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