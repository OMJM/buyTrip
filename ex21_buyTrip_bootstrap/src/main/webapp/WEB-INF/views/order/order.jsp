<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/

${pageContext.request.contextPath}/resources/
-->
<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">

.w3layouts-banner-slider-1 {
    background: url(${pageContext.request.contextPath}/resources/images/shopping.jpg) no-repeat 0px 0px;
    background-size: cover;
    min-height: 500px;
}
</style>
<script type="text/javascript">
	$(function(){
		$(".btn-info").click(function(){
			if($("#idCheck").val()==""){
				alert($("#idCheck").val()+'로그인 후 이용헤주세요.');
				location.href="${pageContext.request.contextPath}/user/loginForm";
			}
		})
	})

</script>
</head>
<body>

<!-- security 인증확인-->
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.memberName" var="currentName" />
</sec:authorize>


<!-- banner-->
	<div class="w3layouts-banner-slider-1">
	<button type="button" class="btn btn-info" style="width: 35%; margin-left: 35%;margin-top: 5%;" 
	onclick="location.href='${pageContext.request.contextPath}/order/orderForm'">주문 등록</button>
	<input type="hidden" id="idCheck" value="${currentName}">
	</div>
<!-- //banner -->
<!-- services1 -->
	<div class="courses">
		<div class="container"> 	
			<div class="w3ls-title"> 
				<h3 class="agileits-title w3title1">buyTrip과 함께 주문하는 방법</h3>
				<p class="top-p">buyTrip은 한국에서 구매할 수 없거나 현지에서 사기에는 너무 비싼 제품을 구입할 수있는 방법입니다. </br>
당신은 의류, 액세서리, 수집품 및 서적에 이르기까지 모든 종류의 품목을 주문할 수 있습니다. </br>
만약 원하는 제품이 온라인 상점에서 판매되지 않는다면, </br>수동으로 구입할 수 있는 상점의 위치 및 가격과 같은 세부 정보를 입력하여
당신만의 주문을 작성해주세요!  \${currentName} = ${currentName} </p>
			</div>
			
			
			 <img src="${pageContext.request.contextPath}/resources/images/how.JPG" class="img-thumbnail" alt="Cinque Terre" width="304" height="236" style="margin-top: 50px;"> 
			 
			
		</div>
	</div>
<!-- //services1 -->	


<!-- services -->
	<div class="well courses">
		<div class="container">
			<div class="w3ls-title">
				<h3 class="agileits-title w3title1">최근에 등록된 여행계획</h3>
				<p class="top-p"> </p>
			</div>
			<div class="agileinfo_services_grids">
			
			
			
<c:forEach items="${list}" var="list">			
			<!-- 최근 등록된 여행계획 필드 -->
			<div class="col-md-4 w3_agile_services_grid">
					<div class="well" style="background:white;">
					<div class="agileits_w3layouts_services_grid1">
						<div class="w3_agileits_services_grid1">
							<div class="w3_agileits_services_grid1l">
								<img
								src="${list.memberImg }"
								class="img-circle"alt="" style=" width: 80px; height: 80px;"/>
							</div>
							<div class="w3_agileits_services_grid1r">
									<h4>
							<a href="#" data-toggle="modal" data-target="#myModal">${list.departNation}<i class="fa fa-plane"></i> ${list.arrivalNation}</a>
						</h4>
						<p>도착일 : ${list.arrivalDate}.</p>
							</div>
							<div class="clearfix"></div>
						</div>
					
					</div>
					</div>
				</div>
				<!-- 최근 등록된 여행계획 필드 끝 -->
</c:forEach>		
				
				
				
		</div>
	</div>
<!-- services -->
	

</body>
</html>