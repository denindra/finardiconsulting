<!-- Navbar -->
{{-- <div id="navbar"></div> --}}
<nav class="navbar navbar-expand-lg navbar-dark bg-white text-dark py-4" style="top:0;" data-navbar="fixed">
  <div class="container">

    <div class="navbar-left">
      <button class="navbar-toggler" type="button">&#9776;</button>
      <a class="navbar-brand" href="/">
      <img class="logo-dark" src="{{asset('images/logofnco.png')}}" width="180" alt="logo">
        <img class="logo-light" src="{{asset('images/logofnco.png')}}" width="180" alt="logo">
      </a>
    </div>

    <section class="navbar-mobile">
      <nav class="nav nav-navbar ml-auto">
        <a class="nav-link" href="/">Home</a>
        <a class="nav-link" href="/expertise">About & Expertise</a>
        <a class="nav-link" href="/services">services</a>
        {{-- <a class="nav-link" href="/clients">Clients</a> --}}
        <a class="nav-link" href="/career">Career</a>
       
      </nav>

      <span class="navbar-divider"></span>

      <div>
      
        <a class="btn btn-sm btn-round btn-primary ml-lg-4 mr-2" href="/contact">Connect Now</a>

      </div>
    </section>

  </div>
</nav><!-- /.navbar -->