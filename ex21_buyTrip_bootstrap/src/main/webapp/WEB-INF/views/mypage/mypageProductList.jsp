<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->


<style type="text/css">
/*----------------------
Product Card Styles 
----------------------*/
.panel.panel--styled {
	background: #F4F2F3;
}

.panelTop {
	padding: 10px;
}

.panelBottom {
	border-top: 1px solid #e7e7e7;
	padding-top: 20px;
}

.btn-add-to-cart {
	background: #FD5A5B;
	color: #fff;
}

.btn.btn-add-to-cart.focus, .btn.btn-add-to-cart:focus, .btn.btn-add-to-cart:hover
	{
	color: #fff;
	background: #FD7172;
	outline: none;
}

.btn-add-to-cart:active {
	background: #F9494B;
	outline: none;
}

span.itemPrice {
	font-size: 24px;
	color: #FA5B58;
}

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
<body style="background-color: #F1F3FA;">

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
								<li><a href="projects"> <i
										class="glyphicon glyphicon-home"></i> 회원 수정
								</a></li>
								<li><a href="travelList"> <i
										class="glyphicon glyphicon-user"></i> 여행 관리
								</a></li>
								<li class="active"><a href="mypageProductList"> <i
										class="glyphicon glyphicon-ok"></i> 주문 관리
								</a></li>
								<li><a href="#"> <i class="glyphicon glyphicon-flag"></i>
										메세지
								</a></li>
								<li><a href="#"> <i class="glyphicon glyphicon-flag"></i>
										알림
								</a></li>
							</ul>
						</div>
						<!-- END MENU -->
					</div>
				</div>
				<!--  mypage content -->
				<div class="col-md-9">
					<div class="profile-content">
						<!-- head부분 -->
						<h1 class="page-header">등록 주문 관리</h1>
						<!-- content tab부분. -->
						<div>
							<ul class="nav nav-tabs nav-justified">
								<li class="active"><a href="#tabb1" data-toggle="tab">등록
										주문 리스트</a></li>
								<li><a href="#tabb2" data-toggle="tab">거래중</a></li>
								<li><a href="#tabb3" data-toggle="tab">거래 완료</a></li>
								<li><a href="#tabb4" data-toggle="tab">기간 만료</a></li>
							</ul>
							<br>
						</div>

						<!-- list상세부분. -->
						<div class="tab-content">

							<div class="tab-pane fade in active" id="tabb1">
								<div class="container">
									<div class="row">
										<div class="col-md-8">
										<c:choose>
												<c:when test="${empty requestScope.list}">
													<tr>
														<td colspan="5">
															<p align="center">
																<b><span style="font-size: 9pt;">등록된 상품이 없습니다.</span></b>
															</p>
														</td>
													</tr>
													</c:when>
													<c:otherwise>
													<c:forEach items="${requestScope.list}" var="productDTO">
														<!-- 상품 한개 템플릿 -->
														<div class="panel panel-default  panel--styled"
															style="padding: 10px;" 
															onclick="location.href='${pageContext.request.contextPath}/order/readOrderDetail?productCode=${productDTO.productCode}'">
															<div align="right">
																<h4>마감날짜 : ${productDTO.deadlineDate}</h4>
															</div>

															<div class="row">
																<div class="col-xs-3 col-md-3 text-center">
																	<img
																		src="${pageContext.request.contextPath}/resources/images/159.jpg"
																		alt="bootsnipp" class="img-rounded img-responsive"
																		style="width: 189px; height: auto;" />
																</div>
																<div class="col-xs-9 col-md-9 section-box"
																	style="align-self: center;">
																	<h2>
																		${productDTO.productName} <a href="http://bootsnipp.com/" target="_blank"><span
																			class="glyphicon glyphicon-new-window"> </span></a>
																	</h2>
																	<div class="well well-sm">
																		<div class="col-sm-6" style="font-size: 15px;">
																			<small>출발지 : </small> ${productDTO.arrivalNation}
																		</div>
																		<small>도착지 : </small>${productDTO.departNation}<br>
																	</div>
																	<div class="row">
																		<div class="col-sm-5" style="font-size: 20px;">
																			${productDTO.productPrice}<small>원</small>
																		</div>
																		<div class="col-sm-7" align="right">
																			<button type="button" class="btn btn-info"
																				onclick="location.href='${pageContext.request.contextPath}/order/readOrderDetail?productCode=${productDTO.productCode}'">상세보기</button>
																		</div>
																	</div>

																</div>
															</div>
														</div>
														<!-- 상품 한개 템플릿 끝 -->
							</c:forEach>
							</c:otherwise>
							</c:choose>
										</div>
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="tabb2">
								<div class="container">
									<div class="row">
										<div class="col-md-8">
										
											
											<!-- 상품 한개 템플릿 -->
											<div class="panel panel-default  panel--styled" style="padding:10px;">
													<div align="right">
														<h4>마감날자 : 2018-07-02</h4>
													</div>

													<div class="row">
														<div class="col-xs-3 col-md-3 text-center">
															<img
																src="${pageContext.request.contextPath}/resources/images/159.jpg"
																alt="bootsnipp" class="img-rounded img-responsive"
																style="width: 189px; height: auto;" />
														</div>
														<div class="col-xs-9 col-md-9 section-box"
															style="align-self: center;">
															<h2>
																제품 제목 <a href="http://bootsnipp.com/" target="_blank"><span
																	class="glyphicon glyphicon-new-window"> </span></a>
															</h2>
															<div class="well well-sm">
																<div class="col-sm-6" style="font-size: 15px;">
																	<small>출발지 </small> 런던
																</div>
																<small>도착지 : </small>서울<br>
															</div>
															<div class="row">
																<div class="col-sm-5" style="font-size: 20px;">
																	금 액 : 25000<small>원</small>
																</div>
																<div class="col-sm-7" align="right">
																	<button type="button" class="btn btn-info">제안하기</button>
																</div>
															</div>

														</div>
													</div>
											</div>
											<!-- 상품 한개 템플릿 끝 -->
											
											
											
										</div>
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="tabb3">
								<div class="container">
									<div class="row">
										<div class="col-md-8">
										
										
											
											<!-- 상품 한개 템플릿 -->
											<div class="panel panel-default  panel--styled" style="padding:10px;">
													<div align="right">
														<h4>마감날자 : 2018-07-02</h4>
													</div>

													<div class="row">
														<div class="col-xs-3 col-md-3 text-center">
															<img
																src="${pageContext.request.contextPath}/resources/images/159.jpg"
																alt="bootsnipp" class="img-rounded img-responsive"
																style="width: 189px; height: auto;" />
														</div>
														<div class="col-xs-9 col-md-9 section-box"
															style="align-self: center;">
															<h2>
																제품 제목 <a href="http://bootsnipp.com/" target="_blank"><span
																	class="glyphicon glyphicon-new-window"> </span></a>
															</h2>
															<div class="well well-sm">
																<div class="col-sm-6" style="font-size: 15px;">
																	<small>출발지 </small> 베를린
																</div>
																<small>도착지 : </small>서울<br>
															</div>
															<div class="row">
																<div class="col-sm-5" style="font-size: 20px;">
																	금 액 : 25000<small>원</small>
																</div>
																<div class="col-sm-7" align="right">
																	<button type="button" class="btn btn-info">제안하기</button>
																</div>
															</div>

														</div>
													</div>
											</div>
											<!-- 상품 한개 템플릿 끝 -->
											
										</div>
									</div>
								</div>
							</div>



							<div class="tab-pane fade" id="tabb4">
								<div class="container">
									<div class="row">
										<div class="col-md-8">
											
											<!-- 상품 한개 템플릿 -->
											<div class="panel panel-default  panel--styled" style="padding:10px;">
													<div align="right">
														<h4>마감날자 : 2018-07-02</h4>
													</div>

													<div class="row">
														<div class="col-xs-3 col-md-3 text-center">
															<img
																src="${pageContext.request.contextPath}/resources/images/159.jpg"
																alt="bootsnipp" class="img-rounded img-responsive"
																style="width: 189px; height: auto;" />
														</div>
														<div class="col-xs-9 col-md-9 section-box"
															style="align-self: center;">
															<h2>
																제품 제목 <a href="http://bootsnipp.com/" target="_blank"><span
																	class="glyphicon glyphicon-new-window"> </span></a>
															</h2>
															<div class="well well-sm">
																<div class="col-sm-6" style="font-size: 15px;">
																	<small>출발지 </small> 스페인
																</div>
																<small>도착지 : </small>서울<br>
															</div>
															<div class="row">
																<div class="col-sm-5" style="font-size: 20px;">
																	금 액 : 25000<small>원</small>
																</div>
																<div class="col-sm-7" align="right">
																	<button type="button" class="btn btn-info">제안하기</button>
																</div>
															</div>

														</div>
													</div>
											</div>
											<!-- 상품 한개 템플릿 끝 -->
											
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

</body>
</html>