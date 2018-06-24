<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>
<style type="text/css">
/*----------------------
Product Card Styles 
----------------------*/
body {
	background: #F1F3FA;
}

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
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/paging.js"></script>
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
								<li><a href="travel"> <i
										class="glyphicon glyphicon-home"></i> 회원 수정
								</a></li>
								<li class="active"><a
									href="${pageContext.request.contextPath}/travel/select"> <i
										class="glyphicon glyphicon-user"></i> 여행 관리
								</a></li>
								<li><a href="mypageProductList"> <i
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
						<h1 class="page-header">여행 관리</h1>



						<!-- content tab부분. -->
						<div>
							<ul class="nav nav-tabs nav-justified">
								<li class="active"><a href="#tabb1" data-toggle="tab">여행
										계획</a></li>
								<li><a href="#tabb2" data-toggle="tab">과거 여행</a></li>
							</ul>
							<br>
						</div>

						<!-- list상세부분. -->
						<div class="tab-content">

							<!-- 여행계획(현재 부분) -->
							<div class="tab-pane fade in active" id="tabb1">
								<div class="container">


									<!-- 여행지 폼 -->

									<c:choose>
										<c:when test="${empty requestScope.travelList}">
											<tr>
												<td colspan="5">
													<p align="center">
														<b><span style="font-size: 9pt;">등록된 상품이 없습니다.</span></b>
													</p>
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${requestScope.travelList}" var="travelDTO">
												<div class="row">
													<div class="col-md-8">
														<div class="panel panel-default  panel--styled">
															<div class="panel-body"
																onclick="location.href='${pageContext.request.contextPath}/travel/mytravelsearchProduct?arrNation=${travelDTO.arrivalNation}&deNation=${travelDTO.departNation }'">
																<div class="col-md-12 panelTop">
																	<div class="col-md-4">
																		<img class="img-responsive"
																			src="${pageContext.request.contextPath}/resources/images/159.jpg"
																			alt="" />
																	</div>
																	<div class="col-md-8">
																		<h2>${travelDTO.arrivalNation}-
																			${travelDTO.departNation}</h2>
																		<p>${travelDTO.arrivalDate}</p>
																		<hr>
																		등록 된 상품 개수 : <span style="font-size: 10px;">${travelDTO.countProduct}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>

												<!-- 여행지폼 완료 -->
											</c:forEach>
											<select class='btn btn-primary' id='listCount' 	name='listCount' onchange='listCnt();'><option value='5'>5</option>
												<option value='10'>10</option><option value='15'>15</option><option value='20'>20</option>																	</select>
											<ul class="pagination">
												<c:if test="${p.pageStartNum ne 1}">
													<li><a onclick='pagePre(${p.pageCnt+1},${p.pageCnt});'>&laquo;</a></li>
													<li><a
														onclick='pagePre(${p.pageStartNum},${p.pageCnt});'>&lsaquo;</a></li>
												</c:if>

												<c:forEach var='i' begin="${p.pageStartNum}"
													end="${p.pageLastNum}" step="1">
													<li class='pageIndex${i}'><a
														onclick='pageIndex(${i});'>${i}</a></li>
												</c:forEach>

												<c:if test="${p.lastChk}">
													<li><a
														onclick='pageNext(${p.pageStartNum},${p.total},${p.listCnt},${p.pageCnt});'>&rsaquo;</a></li>
													<li><a
														onclick='pageLast(${p.pageStartNum},${p.total},${p.listCnt},${p.pageCnt});'>&raquo;</a></li>
												</c:if>
											</ul>
											<form action="select" method="post" id='frmPaging'>
												<input type="hidden" name="${_csrf.parameterName}"
													value="${_csrf.token}"> <input type='hidden'
													name='index' id='index' value='${p.index}'> <input
													type='hidden' name='pageStartNum' id='pageStartNum'
													value='${p.pageStartNum}'> <input type='hidden'
													name='listCnt' id='listCnt' value='${p.listCnt}'>
											</form>
										</c:otherwise>
									</c:choose>


								</div>
							</div>



							<!-- list상세부분.(과거여행) -->
							<div class="tab-pane fade" id="tabb2">
								<div class="container">
									<!-- 여행지 폼 -->

									<c:choose>
										<c:when test="${empty requestScope.finishList}">
											<tr>
												<td colspan="5">
													<p align="center">
														<b><span style="font-size: 9pt;">등록된 상품이 없습니다.</span></b>
													</p>
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${requestScope.finishList}" var="travelDTO">
												<div class="row">
													<div class="col-md-8">
														<div class="panel panel-default  panel--styled">
															<div class="panel-body">
																<div class="col-md-12 panelTop">
																	<div class="col-md-4">
																		<img class="img-responsive"
																			src="${pageContext.request.contextPath}/resources/images/159.jpg"
																			alt="" width="150px" height="150px" />
																	</div>
																	<div class="col-md-8">
																		<h2>${finishList.arrivalNation}-
																			${finishList.departNation}</h2>
																		<p>${finishList.arrivalDate}</p>
																		<hr>
																		등록 된 상품 개수 : <span style="font-size: 10px;">${finishList.countProduct}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>

												<!-- 여행지폼 완료 -->
											</c:forEach>
										</c:otherwise>
									</c:choose>


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