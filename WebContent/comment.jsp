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
                            <a href="doctor.jsp" class="btn">职员详情</a>
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
                                    <li><a href="services.html">科室 +</a>
                                        <ul class="submenu">
                                            <li><a href="services.html">服务 01</a></li>
                                            <li><a href="services-2.html">服务 02</a></li>
                                            <li><a href="services-details.html">了解更多</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="doctor.jsp">医生 +</a>
                                        <ul class="submenu">
                                            <li><a href="doctor.jsp">医生</a></li>
                                            <li><a href="doctor-details.jsp">了解更多</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="shop.html">用户</a>
                                        <ul class="submenu">
                                            <li><a href="login.jsp">登录</a></li>
                                            <li><a href="register.jsp">注册</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="blog.html">资讯 +</a>
                                        <ul class="submenu">
                                            <li><a href="blog-details-gallery.html">细节画廊</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">黄页 +</a>
                                        <ul class="submenu">
                                            <li><a href="appoinmenture.jsp">预约简介</a></li>
                                            <li><a href="appoinmenture.jsp">预约</a></li>
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
                            <h3 class="text-center mb-60">医生评价反馈</h3>
                           
							
                            <form action="${pageContext.request.contextPath}/review/comment">
                            
                      			<label for="name">您的姓名： </label>
                                <input id="name" type="text" name="username" placeholder="请输入您的姓名" />
                                <label for="name">医生姓名： </label>
                                <input id="name" type="text" name="doctorname" placeholder="请输入医生姓名" />
                                <label for="name">您的评价：</label>
                                <input id="name" type="text" name="comment" placeholder="请输入您的评价" />  
                                
                                //输入是string类型        
                                <label for="email-id">您的评分是（1-100）：</label>
                                <input id="email-id" type="text" name="grade" placeholder="请输入您的评分" />                            
                                <button class="btn btn-icon-green w-100" type="submit" id="submt">提交反馈</button>
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
                                <h5>新闻</h5>
                                <h1>掌握最新资讯</h1>
                            </div>
                            <div class="section-line pos-rel">
                                <img src="img/shape/section-title-line.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-5 d-none d-lg-block">
                        <div class="section-button text-right pt-80">
                            <a data-animation="fadeInLeft" data-delay=".6s" href="#" class="btn btn-icon ml-0"><span>+</span>我们的博客</a>
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
                                <h3><a href="#">张海青，主任医师，从事临床病理诊断、教学及科研38年。</a></h3>
                                <p>接受外院疑难病理会诊15000余例。1994年以第一作者获北京市卫生局科技成果一等奖一项；
                                    北京市卫生局先进个人
                                    1994年
                                    以第一作者获北京市卫生局科技成果一等奖一项；.</p>
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
                                <h3><a href="#">人性化的医院采血室设计
                                       布局.</a></h3>
                                <p>为了更好地“改善患者就医体验，不断优化服务流程”，第一门诊部坚守初心，秉持“以患者为中心”的服务理念，
		    通过换位思考及从细节改善入手，
                                   全面构思对抽血                                  
                                    区域进行改造。</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-12 col-md-12">
                        <div class="recent-news-list mb-30">
                            <div class="latest-news-content singl-news news-border-bottom">
                                <h3><a href="#">郭宏杰，男，外科学博士，北京大学第一医院介入血管外科副主任医师。</a></h3>
                                <span class="meta-date"><i class="far fa-calendar"></i>23rd Jan 2019</span>
                                <span class="meta-date"><a href="#"><i class="far fa-comments"></i>33 Comments</a></span>
                            </div>
                            <div class="latest-news-content singl-news news-border-bottom">
                                <h3><a href="#">高杰，男，主任医师，教授，医学博士，硕士生导师，北京大学人民医院肝胆外科副主任。</a></h3>
                                <span class="meta-date"><i class="far fa-calendar"></i>23rd Jan 2019</span>
                                <span class="meta-date"><a href="#"><i class="far fa-comments"></i>33 Comments</a></span>
                            </div>
                            <div class="latest-news-content singl-news ">
                                <h3><a href="#">洪智贤医学博士，副主任医师。肝脏肿瘤外科副主任。本科毕业于第二军医大学。</a></h3>
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
                                        <a href="#"><img src="img/blog/feeds-thumb-1.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">我们奋战在前线，努力奋斗，至死不渝.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                                <div class="signle-blog-feeds mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="img/blog/feeds-thumb-2.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">我们奋战在前线，努力奋斗，至死不渝.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                                <div class="signle-blog-feeds  mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="img/blog/feeds-thumb-3.jpg" alt=""></a>
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
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
</body>

</html>