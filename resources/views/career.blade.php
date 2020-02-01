@extends('layout.master')
@section('title','')


@section('content')
<header class="header "    style="background-image: url({{asset('images/pattern-bg1.jpg')}});background-size:cover;background-position:center;">
    <div class="container">
        <div class="row align-items-center h-100">

            <div class="col-md-7 mx-auto">
                <h2 class="ls-0 text-capitalize fw-700">Careers</h2>
                <p class="lead-3  ls-1">

                    Here at <span class="text-primary">Finardi&Co</span> we value passion and
                    knowledge. If business challenges inspire you, have valuable experiences and knowledge that are worth sharing, or passionate to pursue your path in business consultancy, you are most welcome at Finardi&Co.

                </p>
                <a href="#position"class="btn btn-primary btn-xl btn-round">Find Position</a>
            </div>

        </div>
    </div>
    {{-- <section class="section p-0 mt-8">
        <div data-provide="slider" data-autoplay="true" data-slides-to-show="2" data-css-ease="linear" data-speed="12000" data-autoplay-speed="0" data-pause-on-hover="false">
          <div class="p-2">
            <div class="rounded bg-img h-400" style="background-image: url(http://thetheme.io/thesaas/assets/img/thumb/12.jpg)"></div>
          </div>

          <div class="p-2">
            <div class="rounded bg-img h-400" style="background-image: url({{asset('images/team.jpg')}})"></div>
          </div>

          <div class="p-2">
            <div class="rounded bg-img h-400" style="background-image: url({{asset('images/meeting.jpg')}})"></div>
          </div>

          <div class="p-2">
            <div class="rounded bg-img h-400" style="background-image: url({{asset('images/team2.jpg')}})"></div>
          </div>
        </div>
      </section> --}}
</header>

<main class="main-content ">

 

    <section class="section mh-700" id="position" style="background-image: url({{asset('images/meeting.jpg')}})"
    data-overlay="9">
        <div class="container">
            <header class="section-header">
                <h2 class="text-white fw-700">Please choose your position</h2>
                 </header>
           
            <div class="accordion accordion-connected shadow-5" id="accordion-job">
               
                <div class="card">
                    <h6 class="card-title">
                        <a class="d-flex align-items-center collapsed" data-toggle="collapse" href="#collapse-job-4">
                            <span class="fw-500 text-dark"> Internship</span>
                        </a>
                    </h6>

                    <div id="collapse-job-4" class="collapse" data-parent="#accordion-job">
                        <div class="card-body">
                            <div class="row">

                               <div class="col-lg-9">
                                If you are a student seeking for 3 — 6 months
                                experience to deal with real challenging
                                business cases in various industry, we might
                                have a spot for you at Finardi&Co.
                                
                               </div>
                                <div class="col-md-3 my-2 text-center">
                                    <a type="button" class="btn btn-lg btn-primary"
                                    href="mailto: atika.hasna@ffinardiconsulting.com">Apply Now</a>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>


                {{-- end --}}
                <div class="card">
                    <h6 class="card-title">
                        <a class="d-flex align-items-center collapsed" data-toggle="collapse" href="#collapse-job-5">
                            <span class="fw-500 text-dark"> Fresh Graduate</span>
                        </a>
                    </h6>

                    <div id="collapse-job-5" class="collapse" data-parent="#accordion-job">
                        <div class="card-body">
                            <div class="row">

                                <div class="col-lg-9">
                                    If you are passionate and wants to pave your
                                    path in business consultancy, and desire to
                                    get exposed through many industries, you
                                    could be someone that we are looking for.
                                   </div>
                                <div class="col-md-3 my-2 text-center">
                                    <a type="button" class="btn btn-lg btn-primary"
                                    href="mailto: atika.hasna@ffinardiconsulting.com">Apply Now</a>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>



                <div class="card">
                    <h6 class="card-title">
                        <a class="d-flex align-items-center collapsed" data-toggle="collapse" href="#collapse-job-6">
                            <span class="fw-500 text-dark">Professional</span>
                        </a>
                    </h6>

                    <div id="collapse-job-6" class="collapse" data-parent="#accordion-job">
                        <div class="card-body">
                            <div class="row">

                                <div class="col-lg-9">
                                    If you have substantial experiences that are
                                    worth sharing that could bring value to our
                                    organization, we can not wait for our future
                                    collaboration.
                                   </div>
                                <div class="col-md-3 my-2 text-center">
                                    <a type="button" class="btn btn-lg btn-primary"
                                        href="mailto: atika.hasna@ffinardiconsulting.com">Apply Now</a>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>


                <div class="card">
                    <h6 class="card-title">
                        <a class="d-flex align-items-center collapsed" data-toggle="collapse" href="#collapse-job-7">
                            <span class="fw-500 text-dark">  Top Management</span>
                        </a>
                    </h6>

                    <div id="collapse-job-7" class="collapse" data-parent="#accordion-job">
                        <div class="card-body">
                            <div class="row">

                                <div class="col-lg-9">
                                    If you have vast impactful experience
                                    through all the year of your service and
                                    could bring new opportunities, we would like
                                    to hear from you.
                                    Let us know what you're after, we'll do the rest.
                                    
                                   </div>
                                <div class="col-md-3 my-2 text-center">
                                    <a type="button" class="btn btn-lg btn-primary"
                                        href="mailto: atika.hasna@ffinardiconsulting.com">Apply Now</a>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <div class="modal fade" id="modal_applicants" tabindex="-1" role="dialog" aria-labelledby="edit_jadwalLabel"
        aria-hidden="true">

    </div>

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