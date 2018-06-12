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
	width: 90%;
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
	margin-top: 0;
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
			
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						<!-- detail 상품 큰 사진. -->
						<div class="preview-pic tab-content">
							<div class="tab-pane active">
								<img src="${pageContext.request.contextPath}/resources/images/159.jpg" />
							</div>
							<hr>
							<h3 class="product-title">제품 상세 제목</h3>
							<p class="product-description">제품 상세 메세지 예를 들어서, 그레이색상 13인치
								이런식으로.</p>
						</div>

					</div>
					<!-- 상품 상세 -->
					<div class="details col-md-6">
						<div style="align-self: center;">
							<img src="${pageContext.request.contextPath}/resources/images/159.jpg" class="avatar img-circle" alt="avatar"
								style="width: 80px; height: auto;">
						</div>
						<div style="align-self: center;">
							<p class="product-description">userName</p>
						</div>
						<div style="align-self: center;">
							<p class="product-description">요청 날짜 2018-06-01</p>
						</div>
						<button type="button" class="btn">userName에게 메세지 요청</button>

						<br>

						<h4 class="price" style="font-size: 35px">
							제안 금액 <span>$180</span>
						</h4>
						<br>

						<div class="well" style="font-size: 15px">
							<strong>도착지</strong> 서울
							<hr>
							<strong>출발지</strong> 도쿄
						</div>
						<h5 class="sizes">
							갯수:<strong>2</strong>
						</h5>

						<a href="#" class="btn btn-info" role="button"
							style="width: 100%;">제안 하기</a>


					</div>
				</div>
			</div>
		</div>
		<hr>
		
		<div class="card">
		<div class="well">
			<div class="row">
				<div class="col-lg-2">
					<img src="${pageContext.request.contextPath}/resources/images/159.jpg" class="avatar img-circle" alt="avatar"
						style="width: 80px; height: auto;">
				</div>
				<div class="col-lg-8">
					<span style="font-size: 20px">userName</span> <span
						style="margin-left: 60%; font-size: 40px;">$50</span>
					<hr>
					<span>출발지 : 일본</span> <span style="margin-left: 20%">도착날짜 :
						2018-07-01</span>

				</div>

			</div>
		</div>
		</div>


		<hr>
		
		<div class="card">
		<div class="well">
			<div class="row">
				<div class="col-lg-2">
					<img src="${pageContext.request.contextPath}/resources/images/159.jpg" class="avatar img-circle" alt="avatar"
						style="width: 80px; height: auto;">
				</div>
				<div class="col-lg-8">
					<span style="font-size: 20px">userName</span> <span
						style="margin-left: 60%; font-size: 40px;">$50</span>
					<hr>
					<span>출발지 : 일본</span> <span style="margin-left: 30%">도착날짜 :
						2018-07-01</span>

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