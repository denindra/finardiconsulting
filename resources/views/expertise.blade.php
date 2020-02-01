@extends('layout.master')
@section('title','')
@section('content')
<header class="header "
    style="background-image: url({{asset('images/pattern-bg1.jpg')}});background-size:cover;background-position:center;">
    <div class="container">
        <div class="row align-items-center h-100">

            <div class="col-md-7 mx-auto">
                <h2 class="ls-0 text-capitalize fw-700">About Us</h2>
                <p class="lead-3  ls-1">We believe in sustainable business growth rooted
                    by well-operated business governance. Growth
                    strategy and business expansion are at the heart of
                    what we have done at <span class="text-primary">Finardi&Co</span>. Through our
                    partnership, we will help you start, grow, and
                    achieve what you have never thought possible.
                </p>
            </div>

        </div>
    </div>
</header>
<!-- END Header -->
<main class="main-content mt-">
    <section class="section" id="expert">
        <div class="container">
            <header class="section-header">
                <h2 class="text-dark fw-700">Area of Expertise</h2>
                <hr class="text-primary fw-700 mt-2">

            </header>
            <div class="row gap-y align-items-center">

                <div class="col-md-6 text-md-right">
                    <p class="small-2 text-uppercase text-lightest fw-500 ls-1">Experitse 1.</p>
                    <h3 class="fw-500">Governence</h3>
                    <br>
                    <p>We understand that leadership, culture, and employee engagement are critical aspects that enable and drive financial performance. We help our clients to align all the measures together to create a long-term sustainable financial performance. 

                    </p>
                </div>
                <div class="col-md-5 mx-auto">
                    <img class="rounded-md" src="{{asset('images/governence.jpg')}}" alt="...">
                </div>

            </div>
        </div>
    </section>
    <section class="section pt-0 pb-0">
        <div class="container">
            <div class="row gap-y">
                <div class="col-md-6">
                    <h6 class="text-primary">Family Business Governance</h6>
                    <p>Being a business owner and top executives in a company that have strong family value can be a challenging situation. The intimate bond sometimes predisposes business decision and turn into misguided business practice. Creating balance among families and businesses will form reliable governance structure and effective policies for a family business, where the business and family value can be strongly aligned.</p>
                </div>
                <div class="col-md-6">
                    <h6 class="text-primary">Corporate Governance</h6>
                    <p>The application of good corporate governance to a company will influence strategic policy and how the company carries out its business practices. These changes will directly affect the achievement of overall performance and believed to be the main contributor to improving company performance. We adapt our services to meet the needs and specific requirements of each individual organization.

                    </p>
                </div>



            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="row gap-y align-items-center">

                <div class="col-md-6 text-center text-md-left order-md-2">
                    <p class="small-2 text-uppercase text-lightest fw-500 ls-1">Experitse 2.</p>
                    <h3 class="fw-500">Strategy</h3>
                    <br>
                    <p>Develop a corporate strategy that produces
                        sustainable value. one that empowers you to
                        reach full potential in your core business,
                        venture into adjacencies using a repeatable
                        model, and effectively expand into emerging
                        markets.</p>
                </div>

                <div class="col-md-5 mx-auto">
                    <img class="rounded-md" src="{{asset('images/strategy.jpg')}}" alt="...">
                </div>

            </div>
        </div>
    </section>
    <section class="section pt-0 pb-0">
        <div class="container">
            <div class="row gap-y">
                <div class="col-md-4">
                    <h6 class="text-primary">Corporate Strategy</h6>
                    <p>A strategy for business means understanding your company’s strengths and how they can make a difference in where you choose to invest. By evaluating your core as a business, we stretch boundaries of what is possible. To make sure that every angle is considered, for your company to meet a specific goal. 

                    </p>
                </div>
                <div class="col-md-4">
                    <h6 class="text-primary">Retail & Distribution</h6>
                    <p>Some channels will work better than
                        As a result, determining your
                        a holistic analyzing could bring your business to the wrong
                        direction. Evaluating the performance o
                        each channel is critical to improving
                        your decision and to figure out what
                        channel works best for your company.

                    </p>
                </div>
                <div class="col-md-4">
                    <h6 class="text-primary"> Market Penetration</h6>
                    <p>Choosing the best strategy to appear in a
                        new market is like choosing a vehicle.
                        The right strategy will take you to your
                        desired point, faster and safer. By
                        calculating every possibility, we match
                        your desire to emerge in a new market
                        with the best suitable approach.

                    </p>
                </div>



            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="row gap-y align-items-center">

                <div class="col-md-6 text-md-right">
                    <p class="small-2 text-uppercase text-lightest fw-500 ls-1">Experitse 3.</p>
                    <h3 class="fw-500">Implementation</h3>
                    <br>
                    <p>From targeted solutions that yield an
                        immediate impact to broad transformation
                        programs that redefine how work gets done;
                        enables you to take each capacity within
                        your company to new levels of performance.
                    </p>
                </div>

                <div class="col-md-5 mx-auto">
                    <img class="rounded-md" src="{{asset('images/implemen.jpg')}}" alt="...">
                </div>

            </div>
        </div>
    </section>
    <section class="section pt-0 ">
        <div class="container">
            <div class="row gap-y">
                <div class="col-md-6">
                    <h6 class="text-primary">Retail & Distribution</h6>
                    <p>Channel controlling take a crucial part
                        for your company performance. With
                        our expertise, we align your desire to
                        grow to the stage of execution where we
                        believe it's applicable, reliable, and
                        profitable.</p>
                </div>
                <div class="col-md-6">
                    <h6 class="text-primary">Food & Beverages</h6>
                    <p>We provide a full range of services
                        started from the formulation of
                        management plans and define business
                        process to improve proficiency and to
                        offer practical, innovative, and
                        actionable solutions to owners and
                        operators.
                    </p>
                </div>



            </div>
        </div>
    </section>
    <section class="section text-white bg-dark" style="background-image: url({{asset('images/meeting.jpg')}})"
        data-overlay="9">
        <div class="container">
            <header class="section-header">
                <h2 class="fw-600">Our Family</h2>
                <hr>
                <p class="lead">Meet our small team that make those great products.</p>
            </header>


            <div class="row gap-y">


                <div class="col-md-6">
                    <div class="card bg-img h-250" style="background-image: url({{asset('images/team3.jpg')}});"
                        data-overlay="5">
                        <div class="row h-100 px-6 py-5 text-right">
                            <div class="col-12">
                                <h5>John Senating</h5>
                                <p class="text-uppercase small-3 ls-2 fw-500 text-primary">Co-Founder &amp; CEO</p>
                            </div>

                            <div class="col-12 align-self-end">
                                <div class="social social-inline social-sm social-light">
                                    <a class="text-primary fw-600" href="#">jojo@gmail.com</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="card bg-img h-250" style="background-image: url({{asset('images/team3.jpg')}});"
                        data-overlay="5">
                        <div class="row h-100 px-6 py-5">
                            <div class="col-12">
                                <h5>Morgan Guadis</h5>
                                <p class="text-uppercase small-3 ls-2 fw-500 text-primary">CoFounder &amp; CTO</p>
                            </div>

                            <div class="col-12 align-self-end">
                                <div class="social social-inline social-sm social-light">
                                    <a class="text-primary fw-600" href="#">jojo@gmail.com</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-4">
                    <div class="media border border-glass rounded p-4">
                        <a class="align-self-center mr-4" href="#">
                            <img class="avatar avatar-xl" src="{{asset('images/user1.jpg')}}"" alt=" ...">
                        </a>

                        <div class="media-body">
                            <h6 class="mb-1 mt-2">Sandi Hormez</h6>
                            <p class="small-5 text-uppercase fw-400 ls-2 opacity-50 mb-2 text-primary">Lead Developer
                            </p>

                        </div>
                    </div>
                </div>



                <div class="col-md-4">
                    <div class="media border border-glass rounded p-4">
                        <a class="align-self-center mr-4" href="#">
                            <img class="avatar avatar-xl" src="{{asset('images/user2.jpg')}}"" alt=" ...">
                        </a>

                        <div class="media-body">
                            <h6 class="mb-1 mt-2">Animor Tiruse</h6>
                            <p class="small-5 text-uppercase fw-400 ls-2 opacity-50 mb-2 text-primary">Lead Designer</p>

                        </div>
                    </div>
                </div>



                <div class="col-md-4">
                    <div class="media border border-glass rounded p-4">
                        <a class="align-self-center mr-4" href="#">
                            <img class="avatar avatar-xl" src="{{asset('images/user1.jpg')}}" alt="...">
                        </a>

                        <div class="media-body">
                            <h6 class="mb-1 mt-2">Sarah Onex</h6>
                            <p class="small-5 text-uppercase fw-400 ls-2 opacity-50 mb-2 text-primary">Designer</p>

                        </div>
                    </div>
                </div>



                <div class="col-md-4">
                    <div class="media border border-glass rounded p-4">
                        <a class="align-self-center mr-4" href="#">
                            <img class="avatar avatar-xl" src="{{asset('images/user1.jpg')}}" alt="...">
                        </a>

                        <div class="media-body">
                            <h6 class="mb-1 mt-2">Angelo Haynes</h6>
                            <p class="small-5 text-uppercase fw-400 ls-2 opacity-50 mb-2 text-primary">Designer</p>

                        </div>
                    </div>
                </div>



                <div class="col-md-4">
                    <div class="media border border-glass rounded p-4">
                        <a class="align-self-center mr-4" href="#">
                            <img class="avatar avatar-xl" src="{{asset('images/user2.jpg')}}" alt="...">
                        </a>

                        <div class="media-body">
                            <h6 class="mb-1 mt-2">Allyssa Upton</h6>
                            <p class="small-5 text-uppercase fw-400 ls-2 opacity-50 mb-2 text-primary">Support</p>

                        </div>
                    </div>
                </div>



                <div class="col-md-4">
                    <div class="media border border-glass rounded p-4">
                        <a class="align-self-center mr-4" href="#">
                            <img class="avatar avatar-xl" src="{{asset('images/user1.jpg')}}" alt="...">
                        </a>

                        <div class="media-body">
                            <h6 class="mb-1 mt-2">Colby Kerr</h6>
                            <p class="small-5 text-uppercase fw-400 ls-2 opacity-50 mb-2 text-primary">Support</p>

                        </div>
                    </div>
                </div>


            </div>


        </div>
    </section>
    <section class="section pt-8"    style="background-image: url({{asset('images/pattern-bg1.jpg')}});background-size:cover;background-position:center;">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 ">

                    <div class="col-lg-12 pb-6" style="border-bottom:1px solid #000;">
                        <a href="/services">
                        <div class="row">
                            <div class="col-lg-8 col-8 mt-6  pl-0 ">
                                <h3>View Our services</h3>
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