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
                            <a href="appointmenture.jsp" class="btn">职员详情</a>
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
                                    <li><a href="index.jsp">主页 +</a>
                                        <ul class="submenu">
                                            <li><a href="index.jsp">主页</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="doctor.jsp">医生 +</a>
                                        <ul class="submenu">
                                            <li><a href="doctor.jsp">医生</a></li>
                                            <li><a href="doctor-details.jsp">了解更多</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">用户 +</a>
                                        <ul class="submenu">
                                            <li><a href="login.jsp">登录</a></li>
                                            <li><a href="register.jsp">注册</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">黄页 +</a>
                                        <ul class="submenu">
                                            <li><a href="appoinmenture.jsp">预约简介</a></li>
                                            <li><a href="appoinmenture2.jsp">预约</a></li>
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
        <!-- hero-area start -->
        <section class="breadcrumb-bg pt-200 pb-180"  style="background:url(${pageContext.request.contextPath}/img/page/page-bg.jpg)" data-background="${pageContext.request.contextPath}/img/page/page-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-9">
                        <div class="page-title">
                            <p class="small-text pb-15">我们时刻等待您的到来</p>
                            <h1>医生信息</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 d-flex justify-content-start justify-content-md-end align-items-center">
                        <div class="page-breadcumb">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb ">
                                    <li class="breadcrumb-item">
                                        <a href="index.jsp">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Details</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- hero-area end -->
        <!-- service-details-area start -->
        <div class="doctor-details-area pt-115 pb-70">
            <div class="container">
                <div class="row">
                    <div class="col-xl-7 col-lg-8">
                        <article class="doctor-details-box">
                            <div class="section-title pos-rel mb-25">
                                <div class="section-icon">
                                    <img class="section-back-icon back-icon-left" src="${pageContext.request.contextPath}/img/section/section-back-icon-sky.png"
                                        alt="">
                                </div>
                                <div class="section-text pos-rel">
                                    <h5 class="green-color text-up-case">医生自我介绍</h5>
                                    <h1>简要自我介绍</h1>
                                </div>
                                <div class="section-line pos-rel">
                                    <img src="${pageContext.request.contextPath}/img/shape/section-title-line.png" alt="">
                                </div>
                            </div>
                            <div class="service-details-text mb-40">
                                <p>${doctor.briefIntro }</p>
                            </div>
                            <div class="section-title pos-rel mb-25">
                                <div class="section-text pos-rel">
                                    <h1>擅长科目</h1>
                                </div>
                                <div class="section-line pos-rel">
                                    <img src="${pageContext.request.contextPath}/img/shape/section-title-line.png" alt="">
                                </div>
                            </div>
                            <div class="service-details-text mb-35">
                                <p>${doctor.goodAt }</p>
                            </div>
                       <%--      <div class="service-details-feature fix mb-30">
                                <div class="ser-fea-box f-left">
                                    <div class="ser-fea-icon f-left">
                                        <img src="${pageContext.request.contextPath}/img/services/ser-fea-icon-1.png" alt="">
                                    </div>
                                    <div class="ser-fea-list fix">
                                        <h3>Personal care</h3>
                                        <ul>
                                            <li><i class="fas fa-check"></i>Cillum dolore eu fugiat nulla.</li>
                                            <li><i class="fas fa-check"></i>Lorem ipsum dolor sit amet.</li>
                                            <li><i class="fas fa-check"></i>Consectetur adipisicing elit,</li>
                                            <li><i class="fas fa-check"></i>Sed do eiusmod tempor inci.</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="ser-fea-box f-left mr-0">
                                    <div class="ser-fea-icon f-left">
                                        <img src="${pageContext.request.contextPath}/img/services/ser-fea-icon-2.png" alt="">
                                    </div>
                                    <div class="ser-fea-list fix">
                                        <h3>Lifestyle support</h3>
                                        <ul>
                                            <li><i class="fas fa-check"></i>Didunt ut labore et dolore magna.</li>
                                            <li><i class="fas fa-check"></i>Aliqua. Ut enim ad minim veniam.</li>
                                            <li><i class="fas fa-check"></i>Quis nostrud exercitation ullamco.</li>
                                            <li><i class="fas fa-check"></i>Laboris nisi ut aliquip ex ea.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div> --%>
                            <div class="section-title pos-rel mb-25">
                                <div class="section-text pos-rel">
                                    <h1>患者评价</h1>
                                </div>
                                <div class="section-line pos-rel">
                                    <img src="${pageContext.request.contextPath}/img/shape/section-title-line.png" alt="">
                                </div>
                            </div>
                            


                            <div class="widget-title-box mb-30">
                                <span class="animate-border"></span>
                            </div>
                            <c:forEach items="${patientList }" var="patient">

                            <div class="widget mb-40">

                            	<div class="read-more mt-30">
                                      	${patient.name }  
                                <span class="animate-border"></span>
                                <a href="#" class="btn theme-btn" >${patient.symptom }</a>
                              	</div>

                           <div class="blog-post-tag" >
	                            <span class="animate-border">  </span>
	                            <h3 class="widget-title">评价</h3>
	                            <span class="animate-border">  </span>
	                            <c:forEach items="${patient.tag }" var="t">
	                            	<a href="#">${t }</a>
	                            </c:forEach>
	                            <p>${patient.eavl }</p>
                            </div>
                            </div>
							</c:forEach>



                          
                            <div id="contact-map" class="service-map mb-55"></div>
                        </article>
                    </div>
                    
                    <div class="col-xl-5 col-lg-4">
                        <div class="service-widget mb-50">
                            <div class="team-wrapper team-box-2 team-box-3 text-center mb-30">
                                <div class="team-thumb">
                                    <img src="${doctor.imgHref }" alt="">
                                </div>
                                <div class="team-member-info mt-35 mb-35">
                                    <h3><a href="doctor-details.html">${doctor.doctorName }</a></h3>
                                    <h6 class="f-500 text-up-case letter-spacing pink-color">${doctor.faculty }&${doctor.doctorTitle }&${doctor.hospital }</h6>
                                </div>
                                
                                <div class="team-social-profile">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="service-widget mb-50">
                            <div class="widget-title-box mb-30">
                                <h3 class="widget-title">工作时间</h3>
                            </div>
                            <div class="more-service-list">
                                <ul>
                                    <li>
                                        <a href="#">
                                        ${workTime}
                                            <!-- <div class="more-service-icon"><img src="${pageContext.request.contextPath}/img/services/more-ser-1.png" alt=""></div>
                                            <div class="more-service-title doctor-details-title">Master of Science <span>Oxford Univercity (2011 - 2014)</span></div> -->
                                        </a>
                                    </li>
                                    <li>
                                        <%-- <a href="#">
                                            <div class="more-service-icon"><img src="${pageContext.request.contextPath}/img/services/more-ser-5.png" alt=""></div>
                                            <div class="more-service-title doctor-details-title">Neurology Test <span>Stanford Versity (2015 - 2018)</span></div>
                                        </a> --%>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="service-widget mb-80">
                            <div class="widget-title-box mb-30">
                                <h3 class="widget-title">需要帮助？</h3>
                            </div>
                            <form class="service-contact-form" action="">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="contact-input contact-icon contact-user mb-20">
                                            <input type="text" placeholder="姓名">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="contact-input contact-icon contact-mail mb-20">
                                            <input type="text" placeholder="email">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                    	<div class="contact-input contact-icon contact-mail mb-20">
                                            <input type="text" placeholder="问题">
                                        </div>
                                      <!--   <div class="contact-input contact-icon contact-hourglass">
                                            <select name="#" id="service-option">
                                                <option value="1">Select type of care</option>
                                                <option value="2">Select type of care</option>
                                                <option value="2">Select type of care</option>
                                            </select>
                                        </div> -->
                                    </div>
                                </div>
                            </form>
                            <div class="ser-form-btn text-center mt-40">
                                <a data-animation="fadeInLeft" data-delay=".6s" href="#" class="btn btn-icon ml-0"
                                    style="animation-delay: 0.6s;" tabindex="0"><span>+</span>提交</a>
                            </div>
                        </div>
                        <div class="service-widget mb-50">
                            <div class="widget-title-box mb-30">
                                <h3 class="widget-title">语言</h3>
                            </div>
                            <div class="doctor-detials-lan">
                                <ul>
                                    <li><a href="#">en</a></li>
                                    <li><a href="#">es</a></li>
                                    <li><a href="#">bd</a></li>
                                    <li><a href="#">la</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- service-details-area end -->
    </main>

    <!-- footer start -->
    <footer>
        <div class="footer-top primary-bg footer-map pos-rel pt-120 pb-80">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="footer-contact-info footer-contact-info-3 mb-40">
                            <div class="footer-logo mb-35">
                                <a href="#"><img src="${pageContext.request.contextPath}/img/logo/footer-logo-3.png" alt=""></a>
                            </div>
                            <div class="footer-contact-content mb-25">
                                <p>爱让你安稳，奉献给您快乐，让你感受您的快乐</p>
                            </div>
                            <div class="footer-emailing">
                                <ul>
                                    <li><i class="far fa-envelope"></i>info@examplemedical.com</li>
                                    <li><i class="far fa-clone"></i>examplemedical.com</li>
                                    <li><i class="far fa-flag"></i>北京朝阳区平乐园100号</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="footer-widget mb-40">
                            <div class="footer-title">
                                <h3>科室</h3>
                            </div>
                            <div class="footer-menu footer-menu-2">
                                <ul>
                                    <li><a href="#">手术和放射学</a></li>
                                    <li><a href="#">科室</a></li>
                                    <li><a href="#">家庭医疗</a></li>
                                    <li><a href="#">我们的医生</a></li>
                                    <li><a href="#">妇科</a></li>
                                    <li><a href="#">资讯</a></li>
                                    <li><a href="#">眼科</a></li>
                                    <li><a href="#">商店</a></li>
                                    <li><a href="#">儿科</a></li>
                                    <li><a href="#">联系我们</a></li>
                                    <li><a href="#">皮肤病</a></li>
                                    <li><a href="#">预约</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="footer-widget mb-40">
                            <div class="footer-title">
                                <h3>新闻推送</h3>
                            </div>
                            <div class="blog-feeds pr-15">
                                <div class="signle-blog-feeds mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/img/blog/feeds-thumb-1.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">我们奋战在前线，努力奋斗，至死不渝.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                                <div class="signle-blog-feeds mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/img/blog/feeds-thumb-2.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">我们奋战在前线，努力奋斗，至死不渝.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                                <div class="signle-blog-feeds  mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/img/blog/feeds-thumb-3.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">我们奋战在前线，努力奋斗，至死不渝.</a></h5>
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
    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyBvEEMx3XDpByNzYNn0n62Zsq_sVYPx1zY"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
