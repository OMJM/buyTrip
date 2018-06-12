<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">
input[type="number"], input[type="date"], textarea{
    border: 1px solid #ccc;
    font-size: 1em;
    color: #828282;
    background: none;
    width: 100%;
    padding: .8em 1em;
    outline: none;
}
input[type="submit"] {
    padding: .6em 1em;
    color: #fff;
    font-size: 1.1em;
    background: #6bcad2;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
    outline: none;
    margin: 1em 0 0;
    width: 100%;
    border: 1px solid #6bcad2;
    letter-spacing: 4px;
    text-transform: uppercase;
}
textarea {
    min-height: 8em;
    resize: none;
}
input, textarea{
		margin: 10px 0 10px 0;	
}
.contact-left{
	margin-left: auto;
	margin-right: auto;
	width: 800px;
	float:none;
}
</style>

</head>
<body>

	<!-- contact -->
	<div class="contact">
		<div class="container">
			<div class="w3ls-title">
				<h3 class="agileits-title w3title1">상품 등록</h3>
				<p class="top-p">상품 정보를 입력해주세요. 구매를 희망하는 여행지를 기재해주세요. 구매가를
					입력해주세요.</p>
			</div>

			<div class="map-pos">
				<div class="col-md-4 address-row">
					<div class="col-xs-2 address-left">
						<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 address-right">
						<h5>상품 정보</h5>
						<p>당신이 원하는 상품을 알려주세요.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 address-row w3-agileits">
					<div class="col-xs-2 address-left">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 address-right">
						<h5>직구 여행지</h5>
						<p>
							특별히 희망하는 여행지가 있나요?</a>
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 address-row">
					<div class="col-xs-2 address-left">
						<span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 address-right">
						<h5>구매가</h5>
						<p>여행자에게 제안할 구매가를 입력해보세요.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- 다영 -->
			<form action="#" method="post">
				<div class="col-sm-6 contact-left">
				   <div align="center">
					<img src="${pageContext.request.contextPath}/resources/images/159.jpg" class="img-circle" alt="Cinque Terre">
					
					<p>상품 이미지 (적어도 한장이상)</p>
					<input type="file" name="" required="">
					</div>
					 상품이름 
					 <input type="text" name="" placeholder="상품 이름을 입력해주세요." required="">
					<p>상품 상세 설명</p>
					<textarea name="" placeholder="상품 상세설명을 입력해주세요.(예. 크기, 색상 등)"
						required=""></textarea>
					<p>상품 URL</p>
					<input type="text" name="" placeholder="상품 웹 주소를 입력해주세요. (선택사항)">
					<p>상품가격+커미션</p>
					<input type="number" name="" placeholder="상품+커미션 가격을 입력해주세요."
						required="">
					<p>상품 수량</p>
					<input type="number" name="" placeholder="1" required="">
					<p>출발/도착나라</p>
					<input type="text" name="" placeholder="출발나라를 입력해주세요." required="">
					<input type="text" name="" placeholder="도착나라를 입력해주세요." required="">
					<p>희망 날짜</p>
					<input type="date" name="" required="">
					<p>요청사항</p>
					<input type="submit" value="다음">
				</div>
				<div class="clearfix"></div>
			</form>
			<!--/ 다영 -->
		</div>
	</div>
	<!-- //contact -->

</body>
</html>