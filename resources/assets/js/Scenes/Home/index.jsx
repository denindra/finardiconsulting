import React, { Component } from 'react'
import {Blockswithbg} from '../../components/Blocks/Constellation';
import {Header} from '../../components/Blocks/Header'
import {Card} from '../../components/UIKit/Card';

export default class Home extends Component {
    render() {
        return (
<div>
<Header colorBg="salmon" />
<section className="section">
   <div className="container">
      <header className="section-header">
         <h2 className="ls-0">Kesederhanaan. Kebutuhan Anda untuk Toko Online</h2>
      </header>
   </div>
   <section className="section pt-0">
      <div className="container">
         <div className="col-12">
            <div className="text-center pb-50">
               <ul className="nav"
               style={{display: "flex",
               justifyContent: "center",
               alignItems: "center",
               height: "100%"}}>
               <li className="nav-item w-200">
                  <a className="nav-link card-bordered active " data-toggle="tab" href="#how-1">
                     <p><i className="icon-gears fs-35 pt-25" /><br /><span className="card-title">Pengaturan Sederhana</span></p>
                  </a>
               </li>
               <li className="nav-item w-200">
                  <a className="nav-link card-bordered" data-toggle="tab" href="#how-2">
                     <p><i className="icon-browser fs-35 pt-25" /><br /><span className="card-title">Fitur Lengkap</span></p>
                  </a>
               </li>
               <li className="nav-item w-200">
                  <a className="nav-link card-bordered" data-toggle="tab" href="#how-3">
                     <p><i className="icon-clipboard fs-35 pt-25" /><br /><span className="card-title">Mengelola Data</span></p>
                  </a>
               </li>
               </ul>
            </div>
         </div>
         <br /><br />
         <div className="tab-content " data-aos="fade-in">
            <div className="tab-pane fade show active" id="how-1">
               <div className="container">
                  <div className="row gap-y">
                     <div className="col-12 col-lg-5">
                        <h4 className="ls-0">Pengaturan mudah</h4>
                        <p className="text-dark">Tidak perlu merepotkan diri dengan pengaturan toko anda. 
                           <strong>NCOMMERCE</strong> membuat sistem yang sangat nyaman untuk Anda.
                        </p>
                        <br />
                        <p className="text-dark">Apabila Anda bingung dan bermasalah dengan pengaturan tersebut, Anda tinggal menghubungi layanan kami 24/7.</p>
                     </div>
                     <div className="col-12 col-lg-7 ">
                        <div><img  src="https://s3-ap-southeast-1.amazonaws.com/ncommerce-assets/ncommapps_assets/ncommassts/pengaturan-mudah.png" alt="..." /></div>
                     </div>
                  </div>
               </div>
            </div>
            <div className="tab-pane fade" id="how-2">
               <div className="container">
                  <div className="row gap-y">
                     <div className="col-12 col-lg-5">
                        <h4 className="ls-0">Fitur lengkap</h4>
                        <p className="text-dark">Fitur sudah dilengkapi dengan Content Management System (CMS) yang komprehensif. Anda dapat melihat produk terlaris Anda dan mengelola sistem pembayaran tersebut.</p>
                        <br />
                        <p className="text-dark">Dengan fitur CMS tersebut, Anda bisa melihat seberapa besar penjualan Anda tersebut.</p>
                     </div>
                     <div className="col-12 col-lg-7 ">
                        <div><img  src="https://s3-ap-southeast-1.amazonaws.com/ncommerce-assets/ncommapps_assets/ncommassts/fitur-lengkap.png" alt="..." /></div>
                     </div>
                  </div>
               </div>
            </div>
            <div className="tab-pane fade" id="how-3">
               <div className="container">
                  <div className="row gap-y">
                     <div className="col-12 col-lg-5">
                        <h4 className="ls-0">Mengelola persediaan</h4>
                        <p className="text-dark">Anda dapat menambahkan atau mengubah, masing - masing harga, gambar dan SKU sesuai yang Anda inginkan. Anda dapat mengatur persediaan toko Anda tersebut sesuai keinginan Anda.</p>
                        <br />
                        <p className="text-dark">Anda dapat mengurangi atau menambahan persediaan via admin.</p>
                     </div>
                     <div className="col-12 col-lg-7 ">
                        <div><img src="https://s3-ap-southeast-1.amazonaws.com/ncommerce-assets/ncommapps_assets/ncommassts/persediaan.png" alt="..." /></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <div className="container">
      <div className="row gap-y">
         <div className="col-12 col-md-6">
            <Card title="Tampilan yang menarik"
                  link="http://ncommerce.id/feature"
                  icon="icon-mobile fa-3x">
               <p><strong>NCOMMERCE</strong> menyediakan banyak
                  tema dan desain agar cocok dengan karakter bisnis Anda. Dan kami <i>mobile-friendly!</i>
               </p>
            </Card>
         </div>
         <div className="col-12 col-md-6">
            <Card title="Fitur Marketing" 
                  link="http://ncommerce.id/feature"
                  icon="fa fa-adjust fa-3x" >
               <p>Dengan NCOMMERCE Anda akan mendapatkan berbagai fitur marketing untuk membantu penjualan Anda : <strong>Kode Promosi</strong>, <strong>SEO Support</strong>, <strong>Newsletter</strong>, <strong>Penulisan Artikel</strong> dan masih banyak lagi..</p>
            </Card>
         </div>
         <div className="col-12 col-md-6">
            <Card title="Penjualan Grosir dan Reseller"
                  link="http://ncommerce.id/feature"
                  icon="fas fa-shopping-cart fa-3x">
               <p>Kami menyediakan fitur khusus untuk penjualan grosir atau reseller, mereka akan mendapatkan harga spesial yang pemilik toko sediakan.</p>
            </Card>
         </div>
         <div className="col-12 col-md-6">
            <Card title="Sistem pembayaran yang sudah lengkap"
                  link="http://ncommerce.id/feature"
                  icon="fas fa-briefcase fa-3x">
               <p>Sistem pembayaran yang akan Anda gunakan sudah terintegrasi dengan : <strong>Kartu Kredit</strong>, <strong>Kartu Debit</strong>, dan juga <strong>Indomaret</strong>.</p>
            </Card>
         </div>
      </div>
   </div>
</section>
<Blockswithbg urlBg="https://s3-ap-southeast-1.amazonaws.com/ncommerce-assets/ncommapps_assets/ncommassts/banner2.png">
   <h3 className="fs-30 text-white ls-0 fw-300 mb-60">Pilih harga langganan <strong>NCOMMERCE</strong> Anda Sesuai Dengan Kebutuhan Anda</h3>
   <p className="hidden-sm-down"><a className="btn btn-lg btn-round btn-white fs-17 shadow-5" href="http://ncommerce.id/pricing">Pelajari</a></p>
</Blockswithbg>
<section className="section pt-0 py-150">
   <div className="container">
      <div className="swiper-container" data-space-between={50}>
         <div className="swiper-wrapper pb-0 pl-0 pr-0">
            <div className="swiper-slide">
               <blockquote className="blockquote">
                  <br />
                  <div><img src="https://s3-ap-southeast-1.amazonaws.com/ncommerce-assets/ncommapps_assets/ncommassts/testimonial/vaidil-syahdin.jpg" alt="..." /></div>
                  <footer>Vaidil Syahdin</footer>
                  <small>Owner - Street Catalog</small>
                  <p className="lead">Toko online kami menjadi lebih mudah untuk digunakan setelah menemukan 
                     <strong>NCOMMERCE.</strong>
                  </p>
               </blockquote>
            </div>
         </div>
         <div className="swiper-pagination" />
         </div>
      </div>
</section>
<section className="section section-inverse bg-dark py-80 " style={{background: '#232526'}}>
<div className="container">
<header className="section-header mb-40 pt-20">
<h3 className="ls-0 fw-300 text-white">Buatlah toko online Anda sekarang !</h3>
</header>
<p className="text-center">
<a className="btn btn-round btn-lg btn-white w-300  fs-18 hidden-sm-down" href="http://ncommerce.id/signup">Mulai Sekarang</a><br />
</p>
</div>
</section>
</div>
)
}
}