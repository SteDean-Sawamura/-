<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>医疗和健康</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
    <link rel="shortcut icon" type="${pageContext.request.contextPath}/img/x-icon" href="${pageContext.request.contextPath}/img/favicon.png">
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
                    <div class="col-xl-6 offset-xl-1 col-lg-6 offset-lg-1 col-md-7 offset-md-1">
                        <div class="header-info">
                            <span><i class="fas fa-phone"></i> +120</span>
                            <span><i class="fas fa-envelope"></i> info@example.com</span>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-5 col-md-4">
                    	 <c:choose>
							<c:when test="${!empty sessionScope.user }">
								<div class="header-top-right-btn f-right">
                            		<p class="btn">
                            			欢迎您：<em>${sessionScope.user.uName }</em>
                            		</p>
                        		</div>
                        		<div class="header-top-right-btn f-right">
                        			<a href="${pageContext.request.contextPath}/user/logout"  class="btn">退出登录</a> 
                        		</div>
							</c:when>
							<c:otherwise>
								<div class="header-top-right-btn f-right">
                            		<a href="${pageContext.request.contextPath}/login.jsp" class="btn">登录</a>
                        		</div>
                        		<div class="header-top-right-btn f-right">
                           			 <a href="${pageContext.request.contextPath}/register.jsp" class="btn">注册</a>
                        		</div> 
							</c:otherwise>
						</c:choose>
                    	
                       
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
                            <a href="index.jsp"><img src="${pageContext.request.contextPath}/img/logo/logo.png" alt=""></a>
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
        <section class="hero-area">
            <div class="hero-slider">
                <div class="slider-active">
                    <div class="single-slider slider-height d-flex align-items-center" data-background="${pageContext.request.contextPath}/img/slider/slider-bg-1.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-6 col-lg-8 col-md-10">
                                    <div class="hero-text">
                                        <div class="hero-slider-caption ">
                                            <h5 data-animation="fadeInUp" data-delay=".2s">我们一直专注您的健康.</h5>
                                            <h1 data-animation="fadeInUp" data-delay=".4s">最好的治疗 与 更好的医生.</h1>
                                            <p data-animation="fadeInUp" data-delay=".6s">.</p>
                                        </div>
                                        <div class="hero-slider-btn">
                                            <a data-animation="fadeInLeft" data-delay=".6s" href="javascript:alert('请先登录！')" class="btn btn-icon ml-0"><span>+</span>AI 智能推荐系统</a>
                                            <a data-animation="fadeInLeft" data-delay=".6s" href="javascript:alert('请先登录！')" class="btn btn-icon ml-0"><span>+</span>按类搜索</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-height d-flex align-items-center" data-background="${pageContext.request.contextPath}/img/slider/slider-bg-2in1.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-6 col-lg-8 col-md-10">
                                    <div class="hero-text">
                                        <div class="hero-slider-caption ">
                                            <h5 data-animation="fadeInUp" data-delay=".2s">我们一直专注您的健康.</h5>
                                            <h1 data-animation="fadeInUp" data-delay=".4s">最好的治疗 与 更好的医生.</h1>
                                            <p data-animation="fadeInUp" data-delay=".6s"></p>
                                        </div>
                                        <div class="hero-slider-btn">
                                            <a data-animation="fadeInLeft" data-delay=".6s" href="javascript:alert('请先登录！')" class="btn btn-icon ml-0"><span>+</span>AI 智能推荐系统</a>
                                            <a data-animation="fadeInLeft" data-delay=".6s" href="javascript:alert('请先登录！')" class="btn btn-icon ml-0"><span>+</span>按类搜索</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- hero-area end -->
        <!-- about-area start -->
        <section class="about-area pt-120 pb-90">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-5">
                        <div class="medical-icon-brand-2">
                            <img src="${pageContext.request.contextPath}/img/about/medical-brand-icon-border.png" alt="">
                        </div>
                        <div class="about-left-side pos-rel mb-30">
                            <div class="about-front-img">
                                <img src="${pageContext.request.contextPath}/img/about/about-img.jpg" alt="">
                            </div>
                            <div class="about-shape">
                                <img src="img/about/about-shape.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-7">
                        <div class="about-right-side pt-55 mb-30">
                            <div class="about-title mb-20">
                                <h5>关于我们</h5>
                                <h1>这是一个关于智能分诊台的小故事</h1>
                            </div>
                            <div class="about-text">
                                <p>一切数据仅供参考，具体请视各医院官网而定；我们并不会提供挂号相关服务，请擦亮眼睛。</p><br>
                            </div>
                            <div class="about-author d-flex align-items-center">
                                <div class="author-ava">
                                    <img src="img/about/author-ava.png" alt="">
                                </div>
                                <div class="author-desination">
                                    <h4>智能分诊台小组</h4>
                                    <h6>创始人</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- about-area end -->
        <!-- services-area start -->
        <section class="servcies-area gray-bg pt-115 pb-90">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
                        <div class="section-title text-center pos-rel mb-75">
                            <div class="section-icon">
                                <img class="section-back-icon" src="${pageContext.request.contextPath}/img/section/section-back-icon.png" alt="">
                            </div>
                            <div class="section-text pos-rel">
                                <h5>科室</h5>
                                <h1>管理你的医疗服务</h1>
                            </div>
                            <div class="section-line pos-rel">
                                <img src="${pageContext.request.contextPath}/img/shape/section-title-line.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="service-box text-center mb-30">
                            <div class="service-thumb">
                                <img src="${pageContext.request.contextPath}/img/services/service1.png" alt="">
                            </div>
                            <div class="service-content">
                                <h3><a href="#">手术</a></h3>
                
                                <a class="service-link" href="services-details.html">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="service-box text-center mb-30">
                            <div class="service-thumb">
                                <img src="${pageContext.request.contextPath}/img/services/service2.png" alt="">
                            </div>
                            <div class="service-content">
                                <h3><a href="#">牙科护理</a></h3>

                                <a class="service-link" href="services-details.html">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="service-box text-center mb-30">
                            <div class="service-thumb">
                                <img src="${pageContext.request.contextPath}/img/services/service3.png" alt="">
                            </div>
                            <div class="service-content">
                                <h3><a href="#">眼部护理</a></h3>
                            
                                <a class="service-link" href="services-details.html">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="service-box text-center mb-30">
                            <div class="service-thumb">
                                <img src="${pageContext.request.contextPath}/img/services/service4.png" alt="">
                            </div>
                            <div class="service-content">
                                <h3><a href="#">血液疾病</a></h3>
                            
                                <a class="service-link" href="services-details.html">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="service-box text-center mb-30">
                            <div class="service-thumb">
                                <img src="${pageContext.request.contextPath}/img/services/service5.png" alt="">
                            </div>
                            <div class="service-content">
                                <h3><a href="#">神经内科</a></h3>
                         
                                <a class="service-link" href="services-details.html">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="service-box text-center mb-30">
                            <div class="service-thumb">
                                <img src="${pageContext.request.contextPath}/img/services/service6.png" alt="">
                            </div>
                            <div class="service-content">
                                <h3><a href="#">过敏问题</a></h3>
                            
                                <a class="service-link" href="services-details.html">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- services-area end -->
        <!-- team-area start -->
        <section class="team-area pt-115 pb-55">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-7 col-md-10">
                        <div class="section-title pos-rel mb-75">
                            <div class="section-icon">
                                <img class="section-back-icon back-icon-left" src="${pageContext.request.contextPath}/img/section/section-back-icon.png" alt="">
                            </div>
                            <div class="section-text pos-rel">
                                <h5>我们的团队</h5>
                                <h1>专业人士 & 医护人士</h1>
                            </div>
                            <div class="section-line pos-rel">
                                <img src="${pageContext.request.contextPath}/img/shape/section-title-line.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-5">
                        <div class="section-button text-right d-none d-lg-block pt-80">
                            <a data-animation="fadeInLeft" data-delay=".6s" href="appoinmenture.html" class="btn btn-icon ml-0"><span>+</span>预约</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="team-box text-center mb-60">
                            <div class="team-thumb mb-45 pos-rel">
                                <img src="${pageContext.request.contextPath}/img/team/member1.png" alt="">
                                <a class="team-link" href="#">+</a>
                            </div>
                            <div class="team-content">
                                <h3>Rosalina D. Williamson</h3>
                                <h6>创始人</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="team-box text-center mb-60">
                            <div class="team-thumb mb-45 pos-rel">
                                <img src="${pageContext.request.contextPath}/img/team/member2.png" alt="">
                                <a class="team-link" href="#">+</a>
                            </div>
                            <div class="team-content">
                                <h3>Diconda PIran Will</h3>
                                <h6>牙医</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="team-box text-center mb-60">
                            <div class="team-thumb mb-45 pos-rel">
                                <img src="${pageContext.request.contextPath}/img/team/member3.png" alt="">
                                <a class="team-link" href="#">+</a>
                            </div>
                            <div class="team-content">
                                <h3>Hulk M. Kenbon</h3>
                                <h6>神经科医师</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="team-box text-center mb-60">
                            <div class="team-thumb mb-45 pos-rel">
                                <img src="${pageContext.request.contextPath}/img/team/member4.png" alt="">
                                <a class="team-link" href="#">+</a>
                            </div>
                            <div class="team-content">
                                <h3>Haliam Z. Dicolaz</h3>
                                <h6>顾问</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="team-box text-center mb-60">
                            <div class="team-thumb mb-45 pos-rel">
                                <img src="${pageContext.request.contextPath}/img/team/member5.png" alt="">
                                <a class="team-link" href="#">+</a>
                            </div>
                            <div class="team-content">
                                <h3>Nicolas D. Case</h3>
                                <h6>会诊医生</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="team-box text-center mb-60">
                            <div class="team-thumb mb-45 pos-rel">
                                <img src="${pageContext.request.contextPath}/img/team/member6.png" alt="">
                                <a class="team-link" href="#">+</a>
                            </div>
                            <div class="team-content">
                                <h3>Phumdon H. Norman</h3>
                                <h6>神经学家</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- team-area end -->
        


        <footer>
            <div class="footer-top primary-bg pt-115 pb-90">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-6 col-md-8">
                            <div class="footer-contact-info mb-30">
                                <div class="emmergency-call fix">
                                    <div class="emmergency-call-icon f-left">
                                        <i class="fas fa-phone"></i>
                                    </div>
                                    <div class="emmergency-call-text f-left">
                                        <h6>紧急电话</h6>
                                        <span>120</span>
                                    </div>
                                </div>
                                <div class="footer-logo mb-35">
                                    <a href=""><img src="${pageContext.request.contextPath}/img/logo/footer-logo.png" alt=""></a>
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
                        <div class="col-xl-2 offset-xl-1 col-lg-3 col-md-4">
                            <div class="footer-widget mb-30">
                                <div class="footer-title">
                                    <h3>部门</h3>
                                </div>
                                <div class="footer-menu">
                                    <ul>
                                        <li><a href="#">手术和放射学</a></li>
                                        <li><a href="#">家庭医疗</a></li>
                                        <li><a href="#">妇科</a></li>
                                        <li><a href="#">眼科</a></li>
                                        <li><a href="#">儿科</a></li>
                                        <li><a href="#">皮肤病学</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 offset-xl-1 col-lg-3 d-md-none d-lg-block">
                            <div class="footer-widget mb-30">
                                <div class="footer-title">
                                    <h3>快速链接</h3>
                                </div>
                                <div class="footer-menu">
                                    <ul>
                                        <li><a href="#">科室</a></li>
                                        <li><a href="#">我们的医生</a></li>
                                        <li><a href="#">资讯</a></li>
                                        <li><a href="#">商店</a></li>
                                        <li><a href="#">联系我们</a></li>
                                        <li><a href="#">预约</a></li>
                                    </ul>
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
                            <div class="footer-copyright text-center">
                                <p class="white-color">Copyright by@ BasicTheme - 2019</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </main>

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
       