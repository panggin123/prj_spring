<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,500,500i,600,600i,700,700i,900,900i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Folio
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/folio-bootstrap-portfolio-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
      <!-- Uncomment below if you prefer to use an text logo -->
      <!-- <h1 class="logo"><a href="index.html">Folio</a></h1> -->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link  scrollto" href="#portfolio">project</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link  scrollto" href="#journal">Blog</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <div id="hero" class="home">

    <div class="container">
      <div class="hero-content">
        <h1>안녕하세요 조대한입니다.<br><span class="typed" data-typed-items="red,blue,green "></span></h1>
        <p>우주하마</p>

        <ul class="list-unstyled list-social">
          <li><a href="#"><i class="bi bi-facebook"></i></a></li>
          <li><a href="#"><i class="bi bi-twitter"></i></a></li>
          <li><a href="#"><i class="bi bi-instagram"></i></a></li>
          <li><a href="#"><i class="bi bi-linkedin"></i></a></li>
        </ul>
      </div>
    </div>
  </div><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
 
    <!-- ======= Portfolio Section ======= -->
    <div id="portfolio" class="paddsection">

      <div class="container">
        <div class="section-title text-center">
          <h2>My project</h2>
        </div>
      </div>

      <div class="container">

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">개인</li>
              <li data-filter=".filter-card">관리자</li>
              <li data-filter=".filter-web">팀</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/port1.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>개인 프로젝트</h4>
              <p>쇼핑몰</p>
              <a href="assets/img/portfolio/port1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/port2.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>팀 프로젝트</h4>
              <p>???</p>
              <a href="assets/img/portfolio/port2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/port3.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>개인 프로젝트</h4>
              <p>???</p>
              <a href="assets/img/portfolio/port3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/port4.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>관리자</h4>
              <p>관리자 페이지</p>
              <a href="assets/img/portfolio/port4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/port5.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>팀 프로젝트</h4>
              <p>???</p>
              <a href="assets/img/portfolio/port5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/port6.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>개인 프로젝트</h4>
              <p>????</p>
              <a href="assets/img/portfolio/port6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>
        </div>
      </div>

    </div><!-- End Portfolio Section -->
    <div id="about" class="paddsection">
      <div class="container">
        <div class="row justify-content-between">

          <div class="col-lg-4 ">
            <div class="div-img-bg">
              <div class="about-img">
                <img src="assets/img/me.jpg" class="img-responsive" alt="me">
              </div>
            </div>
          </div>
          <div class="col-lg-7">
            <div class="about-descr">
              <p class="p-heading">안녕하세요</p>
              <p class="separator">안녕하세요</p>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End About Section -->



 <!-- ======= Services Section ======= -->
    <div id="services">
      <div class="container">

        <div class="services-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-briefcase"></i>
                <span>UI/UX DESIGN</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-card-checklist"></i>
                <span>BRAND IDENTITY</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-bar-chart"></i>
                <span>WEB DESIGN</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-binoculars"></i>
                <span>MOBILE APPS</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-brightness-high"></i>
                <span>Analytics</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-calendar4-week"></i>
                <span>PHOTOGRAPHY</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>

    </div><!-- End Services Section -->

    <!-- ======= Journal Section ======= -->
    <div id="journal" class="text-left paddsection">

      <div class="container">
        <div class="section-title text-center">
          <h2>journal</h2>
        </div>
      </div>

      <div class="container">
        <div class="journal-block">
          <div class="row">

            <div class="col-lg-4 col-md-6">
              <div class="journal-info">

                <a href="blog-single.html"><img src="assets/img/blog-post-1.jpg" class="img-responsive" alt="img"></a>

                <div class="journal-txt">

                  <h4><a href="blog-single.html">SO LETS MAKE THE MOST IS BEAUTIFUL</a></h4>
                  <p class="separator">To an English person, it will seem like simplified English
                  </p>

                </div>

              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="journal-info">

                <a href="blog-single.html"><img src="assets/img/blog-post-2.jpg" class="img-responsive" alt="img"></a>

                <div class="journal-txt">

                  <h4><a href="blog-single.html">WE'RE GONA MAKE DREAMS COMES</a></h4>
                  <p class="separator">To an English person, it will seem like simplified English
                  </p>

                </div>

              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="journal-info">

                <a href="blog-single.html"><img src="assets/img/blog-post-3.jpg" class="img-responsive" alt="img"></a>

                <div class="journal-txt">

                  <h4><a href="blog-single.html">NEW LIFE CIVILIZATIONS TO BOLDLY</a></h4>
                  <p class="separator">To an English person, it will seem like simplified English
                  </p>

                </div>

              </div>
            </div>

          </div>
        </div>
      </div>

    </div><!-- End Journal Section -->

    <!-- ======= Contact Section ======= -->
    <div id="contact" class="paddsection">
      <div class="container">
        <div class="contact-block1">
          <div class="row">

            <div class="col-lg-6">
              <div class="contact-contact">

                <h2 class="mb-30">GET IN TOUCH</h2>

                <ul class="contact-details">
                  <li><span>23 Main, Street</span></li>
                  <li><span>New York, United States</span></li>
                  <li><span>+88 01912704287</span></li>
                  <li><span>example@example.com</span></li>
                </ul>

              </div>
            </div>

            <div class="col-lg-6">
              <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                <div class="row gy-3">

                  <div class="col-lg-6">
                    <div class="form-group contact-block1">
                      <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                    </div>
                  </div>

                  <div class="col-lg-6">
                    <div class="form-group">
                      <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                    </div>
                  </div>

                  <div class="col-lg-12">
                    <div class="form-group">
                      <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                    </div>
                  </div>

                  <div class="col-lg-12">
                    <div class="form-group">
                      <textarea class="form-control" name="message" placeholder="Message" required></textarea>
                    </div>
                  </div>

                  <div class="col-lg-12">
                    <div class="loading">Loading</div>
                    <div class="error-message"></div>
                    <div class="sent-message">Your message has been sent. Thank you!</div>
                  </div>

                  <div class="mt-0">
                    <input type="submit" class="btn btn-defeault btn-send" value="Send message">
                  </div>

                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <div id="footer" class="text-center">
    <div class="container">
      <div class="socials-media text-center">

        <ul class="list-unstyled">
          <li><a href="#"><i class="bi bi-facebook"></i></a></li>
          <li><a href="#"><i class="bi bi-twitter"></i></a></li>
          <li><a href="#"><i class="bi bi-instagram"></i></a></li>
          <li><a href="#"><i class="bi bi-linkedin"></i></a></li>
        </ul>

      </div>

      <p>&copy; Copyrights Folio. All rights reserved.</p>

      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Folio
      -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>

    </div>
  </div><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.umd.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>