<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>医疗与健康</title>
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
                            <a href="login.jsp" class="btn">登录</a>
                        </div>
                        <div class="header-top-right-btn f-right">
                            <a href="register.jsp" class="btn">注册</a>
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
                            <a href="index.jsp"><img src="img/logo/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-9">
                        <div class="header-right f-right">
                            <div class="header-lang f-right pos-rel d-none d-lg-block">
                                <div class="lang-icon">
                                    <img src="img/icon/lang.png" alt="">
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
        <section class="breadcrumb-bg pt-200 pb-180" data-background="img/page/page-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-9">
                        <div class="page-title">
                            <p class="small-text pb-15">我们一直专注您的健康.</p>
                            <h1>登录页面</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 d-flex align-items-center">
                        <div class="page-breadcumb">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb ">
                                    <li class="breadcrumb-item">
                                        <a href="index.jsp">首页</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">注册</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- hero-area end -->


        <!-- login Area Strat-->
        <section class="login-area pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="basic-login">
                            <h3 class="text-center mb-60">这里注册</h3>
                            <div style="color:red">${register_message }</div>
                            <form action="${pageContext.request.contextPath}/user/regist">
                                <label for="name">用户名 <span>*</span></label>
                                <input id="name" type="text" name="username" placeholder="Enter Username..." />
                                <label for="email-id">电话号码<span>*</span></label>
                                <input id="email-id" type="text" name="phonenumber" placeholder="Enter Phone Number" onchange="my()"/>
                                <label for="pass">密码 <span>*</span></label>
                                <input id="pass" type="password" name="pwd" placeholder="Enter password..." />
                                <div class="mt-10"></div>
                                <button class="btn theme-btn-2 w-100" type="submit">现在注册</button>
                                <div class="or-divide"><span>or</span></div>
                                <a class="btn theme-btn-2 w-100"  href="${pageContext.request.contextPath}/login.jsp">现在登录</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- login Area End-->
    </main>
    
    <script>
    	function my(){
    		if (document.getElementById('email-id').value.length!=11){
    			alert('电话号码必须为十一位！');
    		}
    	}
    </script>

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
                                        <h5><a href="#">Lorem ipsum dolor sit am et, consectetur.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                                <div class="signle-blog-feeds mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="img/blog/feeds-thumb-2.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">Lorem ipsum dolor sit am et, consectetur.</a></h5>
                                        <span class="feeds-date">14 July 2019</span>
                                    </div>
                                </div>
                                <div class="signle-blog-feeds  mb-20">
                                    <div class="blog-feeds-thumb">
                                        <a href="#"><img src="img/blog/feeds-thumb-3.jpg" alt=""></a>
                                    </div>
                                    <div class="blog-feeds-text">
                                        <h5><a href="#">Lorem ipsum dolor sit am et, consectetur.</a></h5>
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
                            <p>Copyright by@ BJUT - 2020</p>
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
