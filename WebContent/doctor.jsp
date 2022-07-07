<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<style>
	.page_div {
    margin-top: 20px;
    margin-bottom: 20px;
    font-size: 15px;
    font-family: "microsoft yahei";
    color: #666666;
    margin-right: 10px;
    padding-left: 20px;
    box-sizing: border-box;
    text-align: center;
}
/*
 * 页数按钮样式
 */

.page_div a {
    background: white;
    min-width: 30px;
    height: 28px;
    border: 1px solid #dce0e0!important;
    text-align: center;
    margin: 0 4px;
    cursor: pointer;
    line-height: 28px;
    color: #666666;
    font-size: 13px;
    display: inline-block;
}
	.page_div .current {
    background-color: orange;
    border-color: orange;
    color: #FFFFFF;
}
	.page_div {
    margin-top: 20px;
    margin-bottom: 20px;
    font-size: 15px;
    font-family: "microsoft yahei";
    color: #666666;
    margin-right: 10px;
    padding-left: 20px;
    box-sizing: border-box;
    text-align: center;
}
/*
 * 页数按钮样式
 */

.page_div a {
    background: white;
    min-width: 30px;
    height: 28px;
    border: 1px solid #dce0e0!important;
    text-align: center;
    margin: 0 4px;
    cursor: pointer;
    line-height: 28px;
    color: #666666;
    font-size: 13px;
    display: inline-block;
}
</style>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>医疗和健康</title>
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
                            <a href="appointmenture.jsp" class="btn">预约</a>
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
    
        <!-- team-area start -->
        <section class="team-area pt-115 pb-55">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-7 col-md-10">
                        <div class="section-title pos-rel mb-75">
                            <div class="section-icon">
                                <img class="section-back-icon back-icon-left" src="img/section/section-back-icon.png" alt="">
                            </div>
                            <div class="section-text pos-rel">
                                <h5>私人定制</h5>
                                <h1>专业人士</h1>
                            </div>
                            <div class="section-line pos-rel">
                                <img src="img/shape/section-title-line.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">         
                 	<!-- 循环展示 -->	
	                <c:forEach items="${page.getList() }" var="doctor">
	                   <div class="col-xl-4 col-lg-4 col-md-6">
	                       <div class="team-box text-center mb-60">
	                           <div class="team-thumb mb-45 pos-rel">
	                               <img width="110px" height="135px" src="${doctor.imgHref }" alt=""/>
	                               <a class="team-link" href="${pageContext.request.contextPath}/doctor/details?doctorid=${doctor.id}">+</a>
	                           </div>
	                           <div class="team-content">
	                               <h3>${doctor.doctorName }</h3>
	                               <h6>${doctor.faculty }</h6>
	                           </div>
	                       </div>
	                   </div>
	                  </c:forEach> 
                </div>
                
                  <div class="pagenation">
						<!--分页-->
		    			<div id="page" class="page_div">aaa</div>
    				</div>
        </section>
        <!-- team-area end -->
        <!-- fact-area start -->
        <section class="fact-area fact-map primary-bg pos-rel pt-115 pb-60">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-10">
                        <div class="section-title pos-rel mb-45">
                            <div class="section-text section-text-white pos-rel">
                                <h5>我们一直坚持 24/7</h5>
                                <h1 class="white-color">我们能够迎接任何严酷的挑战.</h1>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-6 col-lg-6 col-md-8">
                        <div class="cta-satisfied">
                            <div class="single-satisfied mb-50">
                                <h1>1M+</h1>
                                <h5> <i class="fas fa-user"></i> Satisfied Patients</h5>
                                <p>我们能够迎接任何严酷的挑战，爱让你安稳，奉献给您快乐，让你感受您的快乐</p>
                            </div>
                            <div class="single-satisfied mb-50">
                                <h1>100+</h1>
                                <h5><i class="far fa-thumbs-up"></i> World Awards</h5>
                                <p>我们能够迎接任何严酷的挑战，爱让你安稳，奉献给您快乐，让你感受您的快乐</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- fact-area end -->

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

    <!-- JS here -->
    <script src="${pageContext.request.contextPath }/js/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/paging.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/find.js"></script>
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
    <script type="text/javascript">  
	    var a = ${page.getCurrentPageNum() };
	    var b= ${page.getTotalPageNum()};
	    var c = ${page.getTotalCount()};	
	    
	    ${page.getCurrentPageNum() }
	    ${page.getTotalPageNum()}
	    ${page.getTotalCount()}
	</script>  
    <script>
  //分页
	$("#page").paging({
	    pageNo:a,
	    totalPage: b,
	    totalSize: c,
	    callback: function(num) {
	       $(window).attr('location',"${pageContext.request.contextPath }/doctor/list?pageNumber="+num+"&hospital=${hospital}&faculty=${faculty}");
	    }
	});
	
</script>
    
</body>


</html>
