<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>BUYTRIP</title>
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
<script>
	function logout() {
		document.getElementById("logoutForm").submit();
	}
</script>
</head>
<body>
	<!-- 메뉴바. -->
	<div class="nav-links">
		<nav class="navbar navbar-inverse">
			<div class="container" >
				<div class="navbar-header" style="width: 20%;">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand"
						href="${pageContext.request.contextPath}/user/index"><h1>BUYTRIP</h1></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar" align="left">
					<ul class="nav navbar-nav link-effect">
						<li class="active"><a 
							href="${pageContext.request.contextPath}/user/index">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/order/order">주문하기</a></li>
						<li><a href="${pageContext.request.contextPath}/travel/travel">배달하기</a></li>
						<li class="dropdown"><a href="${pageContext.request.contextPath}/user/mypage" class="dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false"><span
								data-hover="Short Codes">마이페이지</span> <b class="caret"></b></a>
							<ul class="dropdown-menu agile_short_dropdown">
								<li><a href="${pageContext.request.contextPath}/user/mypage"> 회원수정</a></li>
								<li><a href="${pageContext.request.contextPath}/order/readOrders">주문내역</a></li>
								<li><a href="${pageContext.request.contextPath}/travel/select">여행 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/deal/readDeals">배달내역</a></li>
							</ul></li>
							
							<sec:authorize access="isAuthenticated()">
							<sec:authentication property="principal.memberName" var="currentName" />
							</sec:authorize>
							<c:choose>
								<c:when test="${empty currentName}">
									<li><a href="${pageContext.request.contextPath}/user/signupForm"><small>회원가입</small></a></li>
							<li><a href="${pageContext.request.contextPath}/user/loginForm"><small>로그인</small></a></li>
								</c:when>
								
								<c:when test="${not empty currentName}">
									${currentName} 님 환영합니다.
								    	<a href="javascript:logout();">로그아웃</a>
								    <form id="logoutForm" action="${pageContext.request.contextPath}/user/logout" method="post" style="display: none">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									</form>
								</c:when>
							</c:choose>
							
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<!-- /navigation -->
	<hr>
	

