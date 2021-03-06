<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MediDove - Medical and Health HTML5 Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
    <link rel="shortcut icon" type="${pageContext.request.contextPath}/image/x-icon" href="${pageContext.request.contextPath}/img/favicon.png">
    <!-- Place favicon.png in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
</head>

<body>

    <!-- header begin -->
    <header>
        <div class="top-bar d-none d-md-block">
            <div class="container">
                <div class="row d-flex align-items-center">
                    <div class="col-xl-6 offset-xl-1 col-lg-6 offset-lg-0 col-md-7 offset-md-1">
                        <div class="header-info">
                            <span><i class="fas fa-phone"></i> +120</span>
                            <span><i class="fas fa-envelope"></i> info@example.com</span>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-6 col-md-4">
                        <div class="header-top-right-btn f-right">
                            <a href="doctor.jsp" class="btn">????????????</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- menu-area -->
        <div class="header-menu-area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-5 d-flex align-items-center">
                        <div class="logo logo-circle pos-rel">
                            <a href="indexlogin.jsp"><img src="${pageContext.request.contextPath}/img/logo/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-9">
                        <div class="header-right f-right">
                            <div class="header-lang f-right pos-rel d-none d-lg-block">
                                <div class="lang-icon">
                                    <img src="${pageContext.request.contextPath}/img/icon/lang.png" alt="">
                                    <span>CN<i class="fas fa-angle-down"></i></span>
                                </div>
                                <ul class="header-lang-list">
                                    <li><a href="#">USA</a></li>
                                    <li><a href="#">UK</a></li>
                                    <li><a href="#">CA</a></li>
                                    <li><a href="#">AU</a></li>
                                </ul>
                            </div>
                            <div class="header-social-icons f-right d-none d-xl-block">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-behance"></i></a></li>
                                    <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="header__menu f-right">
                            <nav id="mobile-menu">
                                <ul>
                                    <li><a href="indexlogin.jsp">?????? +</a>
                                        <ul class="submenu">
                                            <li><a href="indexlogin.jsp">??????</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="doctor.jsp">?????? +</a>
                                        <ul class="submenu">
                                            <li><a href="doctor.jsp">??????</a></li>
                                            <li><a href="doctor-details.jsp">????????????</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">?????? +</a>
                                        <ul class="submenu">
                                            <li><a href="login.jsp">??????</a></li>
                                            <li><a href="register.jsp">??????</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">?????? +</a>
                                        <ul class="submenu">
                                            <li><a href="appoinmenture.jsp">????????????</a></li>
                                            <li><a href="appoinmenture2.jsp">??????</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mobile-menu"></div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header end -->
    
    <main>
   <!-- calculate-area start -->
        <section class="appointment-area appointment-area-3 pos-rel pt-115 pb-120" data-background="img/appoinment/appointment-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="basic-login">
                            <h3 class="text-center mb-60">??????????????????</h3>
                           
							
                            <form action="${pageContext.request.contextPath}/review/comment">
                            
                      			<label for="name">??????????????? </label>
                                <input id="name" type="text" name="username" placeholder="?????????????????????" />
                                <label for="name">??????????????? </label>
                                <input id="name" type="text" name="doctorname" placeholder="?????????????????????" />
                                <label for="name">???????????????</label>
                                <input id="name" type="text" name="comment" placeholder="?????????????????????" />  
                                
                                //?????????string??????        
                                <label for="email-id">??????????????????1-100??????</label>
                                <input id="email-id" type="text" name="grade" placeholder="?????????????????????" />                            
                                <button class="btn btn-icon-green w-100" type="submit" id="submt">????????????</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- calculate-area end -->
        <!-- latest-news-area start -->
        <section class="latest-news-area pt-115 pb-90">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-7">
                        <div class="section-title pos-rel mb-75">
                            <div class="section-icon">
                                <img class="section-back-icon back-icon-left" src="img/section/section-back-icon.png" alt="">
                            </div>
                            <div class="section-text pos-rel">
                                <h5>??????</h5>
                                <h1>??????????????????</h1>
                            </div>
                            <div class="section-line pos-rel">
                                <img src="img/shape/section-title-line.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-5 d-none d-lg-block">
                        <div class="section-button text-right pt-80">
                            <a data-animation="fadeInLeft" data-delay=".6s" href="#" class="btn btn-icon ml-0"><span>+</span>???????????????</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="latest-news-box mb-30">
                            <div class="latest-news-thumb mb-35">
                                <img src="img/blog/blog-thumb-1.jpg" alt="">
                            </div>
                            <div class="latest-news-content">
                                <div class="news-meta mb-10">
                                    <span><a href="#" class="news-tag">Medical,</a></span>
                                    <span><a href="#" class="news-tag">Medicine</a></span>
                                </div>
                                <h3><a href="#">?????????????????????????????????????????????????????????????????????38??????</a></h3>
                                <p>??????????????????????????????15000?????????1994?????????????????????????????????????????????????????????????????????
                                    ??????????????????????????????
                                    1994???
                                    ??????????????????????????????????????????????????????????????????.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="latest-news-box mb-30">
                            <div class="latest-news-thumb mb-35">
                                <img src="img/blog/blog-thumb-2.jpg" alt="">
                            </div>
                            <div class="latest-news-content">
                                <div class="news-meta mb-10">
                                    <span><a href="#" class="news-tag">Medical,</a></span>
                                    <span><a href="#" class="news-tag">Medicine</a></span>
                                </div>
                                <h3><a href="#">?????????????????????????????????
                                       ??????.</a></h3>
                                <p>?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		    ?????????????????????????????????????????????
                                   ?????????????????????                                  
                                    ?????????????????????</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-12 col-md-12">
                        <div class="recent-news-list mb-30">
                            <div class="latest-news-content singl-news news-border-bottom">
                                <h3><a href="#">????????????????????????????????????????????????????????????????????????????????????????????????</a></h3>
                                <span class="meta-date"><i class="far fa-calendar"></i>23rd Jan 2019</span>
                                <span class="meta-date"><a href="#"><i class="far fa-comments"></i>33 Comments</a></span>
                            </div>
                            <div class="latest-news-content singl-news news-border-bottom">
                                <h3><a href="#">????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</a></h3>
                                <span class="meta-date"><i class="far fa-calendar"></i>23rd Jan 2019</span>
                                <span class="meta-date"><a href="#"><i class="far fa-comments"></i>33 Comments</a></span>
                            </div>
                            <div class="latest-news-content singl-news ">
                                <h3><a href="#">????????????????????????????????????????????????????????????????????????????????????????????????????????????</a></h3>
                                <span class="meta-date"><i class="far fa-calendar"></i>23rd Jan 2019</span>
                                <span class="meta-date"><a href="#"><i class="far fa-comments"></i>33 Comments</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- latest-news-area end -->
    </main>
    
     <!-- footer start -->
    <footer>
        <div class="footer-top primary-bg footer-map pos-rel pt-120 pb-80">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="footer-contact-info footer-contact-info-3 mb-40">
                            <div class="footer-logo mb-35">
                                <a href="#"><img src="img/logo/footer-logo-3.png" alt=""></a>
                            </div>
                            <div class="footer-contact-content mb-25">
                                <p>???????????????????????????????????????????????????????????????</p>
                            </div>
                            <div class="footer-emailing">
                                <ul>
                                    <li><i class="far fa-envelope"></i>info@examplemedical.com</li>
                                    <li><i class="far fa-clone"></i>examplemedical.com</li>
                                    <li><i class="far fa-flag"></i>????????????????????????100???</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="footer-widget mb-40">
                            <div class="footer-title">
                                <h3>??????</h3>
                            </div>
                            <div class="footer-menu footer-menu-2">
                                <ul>
                                    <li><a href="#">??????????????????</a></li>
                                    <li><a href="#">??????</a></li>
                                    <li><a href="#">????????????</a></li>
                                    <li><a href="#">???????????????</a></li>
                                    <li><a href="#">??????</a></li>
                                    <li><a href="#">??????</a></li>
                                    <li><a href="#">??????</a></li>
                                    <li><a href="#">??????</a></li>
                                    <li><a href="#">??????</a></li>
                                    <li><a href="#">????????????</a></li>
                                    <li><a href="#">?????????</a></li>
                                    <li><a href="#">??????</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="footer-widget mb-40">
                            <div class="footer-title">
                                <h3>????????????</h3>
                            </div>
                            <div class="blog-feeds pr-15">
                                <div class="signle-blog-feeds mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="img/blog/feeds-thumb-1.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">???????????????????????????????????????????????????.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                                <div class="signle-blog-feeds mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="img/blog/feeds-thumb-2.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">???????????????????????????????????????????????????.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                                <div class="signle-blog-feeds  mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="img/blog/feeds-thumb-3.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">???????????????????????????????????????????????????.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom pt-25 pb-20">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="footer-copyright footer-copyright-3 text-center">
                            <p>Copyright by@ BasicTheme - 2019</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer end -->

    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/one-page-nav-min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.meanmenu.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
</body>

</html>