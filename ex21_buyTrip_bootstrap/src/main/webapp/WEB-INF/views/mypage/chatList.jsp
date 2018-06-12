<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Prefabrication Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- css -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/colorbox.css"
	type="text/css" media="all" />
<!--// css -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //font -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>

<style type="text/css">
body {
	background: #F1F3FA;
}

/* Profile container */
.profile {
	margin: 20px 0;
}

/* Profile sidebar */
.profile-sidebar {
	padding: 20px 0 10px 0;
	background: #fff;
}

.profile-userpic img {
	float: none;
	margin: 0 auto;
	width: 50%;
	height: 50%;
	-webkit-border-radius: 50% !important;
	-moz-border-radius: 50% !important;
	border-radius: 50% !important;
}

.profile-usertitle {
	text-align: center;
	margin-top: 20px;
}

.profile-usertitle-name {
	color: #5a7391;
	font-size: 16px;
	font-weight: 600;
	margin-bottom: 7px;
}

.profile-usertitle-job {
	text-transform: uppercase;
	color: #5b9bd1;
	font-size: 12px;
	font-weight: 600;
	margin-bottom: 15px;
}

.profile-userbuttons {
	text-align: center;
	margin-top: 10px;
}

.profile-userbuttons .btn {
	text-transform: uppercase;
	font-size: 11px;
	font-weight: 600;
	padding: 6px 15px;
	margin-right: 5px;
}

.profile-userbuttons .btn:last-child {
	margin-right: 0px;
}

.profile-usermenu {
	margin-top: 30px;
}

.profile-usermenu ul li {
	border-bottom: 1px solid #f0f4f7;
}

.profile-usermenu ul li:last-child {
	border-bottom: none;
}

.profile-usermenu ul li a {
	color: #93a3b5;
	font-size: 14px;
	font-weight: 400;
}

.profile-usermenu ul li a i {
	margin-right: 8px;
	font-size: 14px;
}

.profile-usermenu ul li a:hover {
	background-color: #fafcfd;
	color: #5b9bd1;
}

.profile-usermenu ul li.active {
	border-bottom: none;
}

.profile-usermenu ul li.active a {
	color: #5b9bd1;
	background-color: #f6f9fb;
	border-left: 2px solid #5b9bd1;
	margin-left: -2px;
}

/* Profile Content */
.profile-content {
	padding: 20px;
	background: #fff;
	min-height: 800px;
}
</style>
</head>
<body>
	<div class="header-w3layoutstop">
		<div class="container">
			<div class="hdr-w3left navbar-left">
				<p>
					<span class="fa fa-mobile"></span> +040 354 658 252
				</p>
			</div>
			<div class="search-grid">
				<form action="#" method="post">
					<input type="text" placeholder="Subscribe" class="big-dog"
						name="Subscribe" required="">
					<button class="btn1">
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
	</div>
	<!-- navigation -->
	<div class="nav-links">
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand"
						href="${pageContext.request.contextPath}/index"><h1>Prefabrication</h1></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav link-effect">
						<li class="active"><a
							href="${pageContext.request.contextPath}/index">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/services">Services</a></li>
						<li><a href="${pageContext.request.contextPath}/projects">Projects</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false"><span
								data-hover="Short Codes">Short Codes</span> <b class="caret"></b></a>
							<ul class="dropdown-menu agile_short_dropdown">
								<li><a href="${pageContext.request.contextPath}/icons">Web
										Icons</a></li>
								<li><a href="${pageContext.request.contextPath}/typography">Typography</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<!-- /navigation -->


	<!-- projects -->
	<div class="portfolio">
		<div class="container">
			<div class="row profile">
				<div class="col-md-3">
					<div class="profile-sidebar">
						<!-- SIDEBAR USERPIC -->
						<div class="profile-userpic">
							<img
								src="${pageContext.request.contextPath}/resources/images/159.jpg"
								class="img-responsive" alt="Cinque Terre">
						</div>
						<!-- END SIDEBAR USERPIC -->
						<!-- SIDEBAR USER TITLE -->
						<div class="profile-usertitle">
							<div class="profile-usertitle-name">Marcus Doe</div>
							<div class="profile-usertitle-job">Developer</div>
						</div>
						<!-- END SIDEBAR USER TITLE -->
						<!-- SIDEBAR BUTTONS -->
						<div class="profile-userbuttons">
							<button type="button" class="btn btn-success btn-sm">Follow</button>
							<button type="button" class="btn btn-danger btn-sm">Message</button>
						</div>
						<!-- END SIDEBAR BUTTONS -->
						<!-- SIDEBAR MENU -->
						<div class="profile-usermenu">
							<ul class="nav">
								<li class="active"><a href="#"> <i
										class="glyphicon glyphicon-home"></i> 회원 수정
								</a></li>
								<li><a href="travelList"> <i
										class="glyphicon glyphicon-user"></i> 여행 관리
								</a></li>
								<li><a href="mypageProductList"> <i
										class="glyphicon glyphicon-ok"></i> 주문 관리
								</a></li>
								<li><a href="chatList"> <i
										class="glyphicon glyphicon-flag"></i> 메세지
								</a></li>
								<li><a href="#"> <i class="glyphicon glyphicon-flag"></i>
										알림
								</a></li>
							</ul>
						</div>
						<!-- END MENU -->
					</div>
				</div>
				<div class="col-md-9">
					<div class="profile-content">
						<h1 class="page-header">메세지 리스트</h1>

						<!-- edit form column -->
					<div class="row">
                 <div class="col-sm-4">
                  <a href="?msg=15" class="chatperson">
                    <span class="chatimg">
                        <img src="http://via.placeholder.com/50x50?text=A" alt="" />
                    </span>
                    <div class="namechat">
                        <div class="pname">Aperson name here</div>
                        <div class="lastmsg">sdk nskdfjnlssdf sdf ss fsdaf kjlsadjf nkksaddbhk jasddl sdf kjsdfoashf89f sdbfoi nkksaddbhk jasddl</div>
                    </div>
                </a><a href="?msg=16" class="chatperson">
                    <span class="chatimg">
                        <img src="http://via.placeholder.com/50x50?text=D" alt="" />
                    </span>
                    <div class="namechat">
                        <div class="pname">D personname</div>
                        <div class="lastmsg">sdk nskdfjnlssdf sdf ss fsdaf kjlsadjf nkksaddbhk jasddl sdf kjsdfoashf89f sdbfoi nkksaddbhk jasddl</div>
                    </div>
                </a><a href="?msg=17" class="chatperson">
                    <span class="chatimg">
                        <img src="http://via.placeholder.com/50x50?text=W" alt="" />
                    </span>
                    <div class="namechat">
                        <div class="pname">WWW</div>
                        <div class="lastmsg">sdk nskdfjnlssdf sdf ss fsdaf kjlsadjf nkksaddbhk jasddl sdf kjsdfoashf89f sdbfoi nkksaddbhk jasddl</div>
                    </div>
                </a>
                 </div>
                 <div class="col-sm-8">
                  <div class="chatbody">

                  <table class="table">
                    <tr>
                      <td><img src="http://via.placeholder.com/50x50?text=A" /></td>
                      <td>sdk fnsdkjnsadjnlk anflkjasdnflk kjasndlkfjnsdfs adfjksd ofh saddf lsdnflksnadl fjnasdfl ajsndflkja nlnfsdjlnf aslnfd as</td>
                      <td>15:20</td>
                    </tr>

                    <tr>
                      <td><img src="http://via.placeholder.com/50x50?text=B" /></td>
                      <td>sdk fnsdkjnsadjnlk adfjksd ofh saddf lsdnflksnadl fjnasdfl ajsndflkja nlnfsdjlnf aslnfd as</td>
                      <td>15:20</td>
                    </tr>

                    <tr>
                      <td><img src="http://via.placeholder.com/50x50?text=A" /></td>
                      <td>sdk fnsdkjnsadjnlk anflkjasdnflk kjasndl sdflksnfl jsdkfjsafkjsnd fnsalddf sdjdknkfjnsdfs adfjksd ofh saddf lsdnflksnadl fjnasdfl ajsndflkja nlnfsdjlnf aslnfd as</td>
                      <td>15:20</td>
                    </tr>

                    <tr>
                      <td><img src="http://via.placeholder.com/50x50?text=B" /></td>
                      <td>sdk sf s aslnfd as</td>
                      <td>15:20</td>
                    </tr>

                    <tr>
                      <td><img src="http://via.placeholder.com/50x50?text=A" /></td>
                      <td>sdk fnsdkjnsadjnlk anflkjasdnflk c vlsndl v slkdknf sdkmnfkfsndf kasndfllk asnddlflkn sadfn  sadn sandf sadf sajdf sdf sdflksnfl jsdkfjsafkjsnd fnsalddf sdjdknkfjnsdfs adfjksd ofh saddf lsdnflksnadl fjnasdfl ajsndflkja nlnfsdjlnf aslnfd as</td>
                      <td>15:20</td>
                    </tr>
                  </table>

                  </div>

                  <div class="row">
                    <div class="col-xs-9">
                      <input type="text" placeholder="Yozing..." class="form-control" />
                    </div>
                    <div class="col-xs-3">
                      <button class="btn btn-info btn-block">Send</button>
                    </div>
                  </div>

                 </div>
             </div>
</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //projects -->

	<!-- //projects -->

	<!-- footer start here -->
	<div class="footer-agile jarallax">
		<div class="container">

			<div class="footer-btm-agileinfo">
				<div class="col-md-3 col-xs-3 footer-grid">
					<h3>Useful Info</h3>
					<ul>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Hendrerit
								quam</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Amet
								consectetur </a></li>
					</ul>
				</div>
				<div class="col-md-3 col-xs-3 footer-grid w3social">
					<h3>Navigation</h3>
					<ul>
						<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/services">Services</a></li>
						<li><a href="${pageContext.request.contextPath}/projects">Projects</a></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-6 col-xs-6 footer-grid footer-review">
					<h3>Newsletter</h3>
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Your Email"
							required=""> <input type="submit" value="Subscribe">
						<div class="clearfix"></div>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="footer-top-agileinfo">
				<div class="social-wthree-icons bnragile-icons">
					<ul>
						<li><a href="#"
							class="fa fa-facebook icon icon-border facebook"> </a></li>
						<li><a href="#"
							class="fa fa-twitter icon icon-border twitter"> </a></li>
						<li><a href="#"
							class="fa fa-google-plus icon icon-border googleplus"> </a></li>
						<li><a href="#"
							class="fa fa-dribbble icon icon-border dribbble"> </a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- //footer end here -->
	<script
		src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>
	<!-- start-smooth-scrolling -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
	<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event) {
						event.preventDefault();
						$('html,body').animate({
							scrollTop : $(this.hash).offset().top
						}, 1000);
					});
				});
			</script>
	<!-- //start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
				$(document).ready(function() {
					/*
						var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
						};
					 */

					$().UItoTop({
						easingType : 'easeOutQuart'
					});

				});
			</script>
	<!-- pop-up-plugin -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.colorbox.js"></script>
	<script>
				$(document)
						.ready(
								function() {
									//Examples of how to assign the Colorbox event to elements
									$(".group1").colorbox({
										rel : 'group1'
									});
									$(".callbacks")
											.colorbox(
													{
														onOpen : function() {
															alert('onOpen: colorbox is about to open');
														},
														onLoad : function() {
															alert('onLoad: colorbox has started to load the targeted content');
														},
														onComplete : function() {
															alert('onComplete: colorbox has displayed the loaded content');
														},
														onCleanup : function() {
															alert('onCleanup: colorbox has begun the close process');
														},
														onClosed : function() {
															alert('onClosed: colorbox has completely closed');
														}
													});

									//Example of preserving a JavaScript event for inline calls.
									$("#click")
											.click(
													function() {
														$('#click')
																.css(
																		{
																			"background-color" : "#f00",
																			"color" : "#fff",
																			"cursor" : "inherit"
																		})
																.text(
																		"Open this window again and this message will still be here.");
														return false;
													});
								});
			</script>
	<!-- //pop-up-plugin -->
	<!-- filter-plugin -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.filterizr.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/controls.js"></script>
	<script type="text/javascript">
				$(function() {
					//Initialize filterizr with default options
					$('.filtr-container').filterizr();
				});
			</script>
	<!-- //filter-plugin -->
</body>
</html>