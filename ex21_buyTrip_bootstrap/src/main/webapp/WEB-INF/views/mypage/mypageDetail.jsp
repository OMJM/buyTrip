<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">


/*****************globals*************/
body {
	font-family: 'open sans';
	overflow-x: hidden;
}

img {
	max-width: 100%;
}

.preview {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

@media screen and (max-width: 996px) {
	.preview {
		margin-bottom: 20px;
	}
}

.preview-pic {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.preview-thumbnail.nav-tabs {
	border: none;
	margin-top: 15px;
}

.preview-thumbnail.nav-tabs li {
	width: 18%;
	margin-right: 2.5%;
}

.preview-thumbnail.nav-tabs li img {
	max-width: 100%;
	display: block;
}

.preview-thumbnail.nav-tabs li a {
	padding: 0;
	margin: 0;
}

.preview-thumbnail.nav-tabs li:last-of-type {
	margin-right: 0;
}

.tab-content {
	overflow: hidden;
}

.tab-content img {
	width: 100%;
	-webkit-animation-name: opacity;
	animation-name: opacity;
	-webkit-animation-duration: .3s;
	animation-duration: .3s;
}

.card {
	margin-top: 50px;
	background: #eee;
	padding: 3em;
	line-height: 1.5em;
	width: 100%;
}

@media screen and (min-width: 997px) {
	.wrapper {
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
	}
}

.details {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	margin-left: 35px;
}

.colors {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.product-title, .price, .sizes, .colors {
	text-transform: UPPERCASE;
	font-weight: bold;
}

.checked, .price span {
	color: #ff9f1a;
}

.product-title, .rating, .product-description, .price, .vote, .sizes {
	margin-bottom: 15px;
}

.product-title {
	margin-top: 20px;
}

.size {
	margin-right: 10px;
}

.size:first-of-type {
	margin-left: 40px;
}

.color {
	display: inline-block;
	vertical-align: middle;
	margin-right: 10px;
	height: 2em;
	width: 2em;
	border-radius: 2px;
}

.color:first-of-type {
	margin-left: 20px;
}

.add-to-cart, .like {
	background: #ff9f1a;
	padding: 1.2em 1.5em;
	border: none;
	text-transform: UPPERCASE;
	font-weight: bold;
	color: #fff;
	-webkit-transition: background .3s ease;
	transition: background .3s ease;
}

.add-to-cart:hover, .like:hover {
	background: #b36800;
	color: #fff;
}

.not-available {
	text-align: center;
	line-height: 2em;
}

.not-available:before {
	font-family: fontawesome;
	content: "\f00d";
	color: #fff;
}

.orange {
	background: #ff9f1a;
}

.green {
	background: #85ad00;
}

.blue {
	background: #0076ad;
}

.tooltip-inner {
	padding: 1.3em;
}

@
-webkit-keyframes opacity { 0% {
	opacity: 0;
	-webkit-transform: scale(3);
	transform: scale(3);
}

100%
{
opacity


:

 

1;
-webkit-transform


:

 

scale


(1);
transform


:

 

scale


(1);
}
}
@
keyframes opacity { 0% {
	opacity: 0;
	-webkit-transform: scale(3);
	transform: scale(3);
}
100%
{
opacity


:

 

1;
-webkit-transform


:

 

scale


(1);
transform


:

 

scale


(1);
}
}

/*# sourceMappingURL=style.css.map */
</style>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>


	<!-- projects -->
	<div class="portfolio">
		<div class="container">
			
	<div class="container" style="padding-left: 150px; padding-right: 150px;">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						<!-- detail 상품 큰 사진. -->
						<div class="preview-pic tab-content">
							<div class="tab-pane active">
								<img src="${pageContext.request.contextPath}/resources/images/sun.jpg" />
							</div>
							<h3 class="product-title">${productDTO.productName}</h3>
							<p class="product-description">${productDTO.productDesc}</p>
							<div class="well" style="font-size: 15px">
								<a href="${productDTO.productUrl}" class="link">
									url 바로가기
								</a>
							</div>
						</div>

					</div>
					<!-- 상품 상세 -->
					<div class="details col-md-6">
						<div style="align-self: center;">
							<img src="${pageContext.request.contextPath}/resources/images/159.jpg" class="avatar img-circle" alt="avatar"
								style="width: 80px; height: auto;">
						</div>
						<div style="align-self: center;">
							<p class="product-description">${productDTO.proposerId}</p>
						</div>
						<div style="align-self: center;">
							<p class="product-description">요청 날짜 : ${productDTO.requestedDate}</p>
						</div>
						<button type="button" class="btn">${productDTO.proposerId}에게 메세지 요청</button>

						<br>

						<h3 class="price product-title">
											제안 금액 <span>${productDTO.productPrice}</span>
						</h3>
						<p><h4>갯수 <strong>${productDTO.productQty} </strong></h4></p>
						<br>

						<div class="well" style="font-size: 15px">
							<strong>출발지</strong> ${productDTO.arrivalNation}
							<hr>
							<strong>도착지</strong> ${productDTO.departNation}
						</div>
						<div>
					<a href="${pageContext.request.contextPath}/order/updateOrderForm?productCode=${productDTO.productCode}" class="btn btn-primary" role="button"
								style="width: 150px; margin: 5px;">수정하기</a>
							<a href="${pageContext.request.contextPath}/order/deleteOrder?productCode=${productDTO.productCode}" class="btn btn-primary" role="button"
								style="width: 150px; margin: 5px;">삭제하기</a>
						</div>

					</div>
				</div>
			</div>
		</div>
		
		<hr>
		<h2>제안자 정보</h2>
		
		<!-- 제안자 -->
		<div class="card">
			<div class="well">
				<div class="row">
					<div class="col-lg-2">
						<img src="${pageContext.request.contextPath}/resources/images/159.jpg" class="avatar img-circle" alt="avatar"
							style="width: 100px; height: auto;">
					</div>
					<div class="col-lg-10">
						<div class="row">
							<div class="col-xs-4">
								<span style="font-size: 20px">userName</span>
							</div>
							<div class="col-xs-4">
								<span style="font-size: 40px;">$50</span>
							</div>
							<a href="#" class="btn btn-info" role="button"
									style="width: 150px;" >메세지 하기</a>
						</div>
						<hr>
						<div class="row">
							<div class="col-xs-4">
								<span>출발지 : 일본</span>
							</div>
							<div class="col-xs-4">
								<span>도착날짜 : 2018-07-01</span>
							</div>
							<a href="#" class="btn btn-info" role="button"
									style="width: 150px;" >제안 수락하기</a>
						</div>		
					</div>
				</div>
			</div>
		</div>
		<!-- / 제안자 -->

		<!-- 제안자 -->
		<div class="card">
			<div class="well">
				<div class="row">
					<div class="col-lg-2">
						<img src="${pageContext.request.contextPath}/resources/images/159.jpg" class="avatar img-circle" alt="avatar"
							style="width: 100px; height: auto;">
					</div>
					<div class="col-lg-10">
						<div class="row">
							<div class="col-xs-4">
								<span style="font-size: 20px">userName</span>
							</div>
							<div class="col-xs-4">
								<span style="font-size: 40px;">$50</span>
							</div>
							<a href="#" class="btn btn-info" role="button"
									style="width: 150px;" >메세지 하기</a>
						</div>
						<hr>
						<div class="row">
							<div class="col-xs-4">
								<span>출발지 : 일본</span>
							</div>
							<div class="col-xs-4">
								<span>도착날짜 : 2018-07-01</span>
							</div>
							<a href="#" class="btn btn-info" role="button"
									style="width: 150px;" >제안 수락하기</a>
						</div>		
					</div>
				</div>
			</div>
		</div>
		<!-- / 제안자 -->

	</div>
		</div>
	</div>
	<!-- //projects -->

</body>
</html>