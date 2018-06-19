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

<!-- url 입력 시 상품이름,이미지 가져와서 뿌려주기 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){		
		
		$("#url").change(function(){
			alert($(this).val());  //url 정보
			$(this).val();
			
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/crawling",
				data:"${_csrf.parameterName}=${_csrf.token}&&url="+$(this).val(),
				dataType:"json",  //이름, 이미지경로, returnData.
				success:function(result){
					alert("상품이름"+result.proName+"이미지"+result.image);
					$("#proName").val(result.proName);
/* 					$("#productImg").val(result.image); */
					$('input[name=productImg]').attr('value',result.image);
					
				},
				error:function(xhr,status,error){
					alert("실패");
				}
				
				//function
				
			}); ///ajax
					
			/* $("#memberListView").empty();
			if($("#address").val()==""){
				return;
			}*/
			
		});//change - url 입력
	});//jquery
</script>

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
			<form id="fileUploadForm" name="orderForm" method="post" enctype="multipart/form-data"
			action="${pageContext.request.contextPath}/order/insertOrder?${_csrf.parameterName}=${_csrf.token}">
			  <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> --%>
				<div class="col-sm-6 contact-left">
				
					<p>상품 이미지 (적어도 한장이상)
					<input multiple="multiple" type="file" name="file" required="required"></p>
					<input type="hidden" name="productImg" value="">
					<p>상품 URL</p>
					<input type="text" name="productUrl" id="url" placeholder="상품 웹 주소를 입력해주세요.">
					<p>상품이름</p>
					<input type="text" name="productName" id="proName" placeholder="상품 이름을 입력해주세요." required="required">
					<p>상품 상세 설명</p>
					<textarea name="productDesc" id="image" placeholder="상품 상세설명을 입력해주세요.(예. 크기, 색상 등)"
						required="required"></textarea>
					<p>상품가격+커미션</p>
					<input type="number" name="productPrice" placeholder="상품+커미션 가격을 입력해주세요."
						required="required">
					<p>상품 수량</p>
					<input type="number" name="productQty" placeholder="1" required="required">
					<p>출발/도착나라</p>
					<input type="text" name="arrivalNation" placeholder="출발나라를 입력해주세요." required="required">
					<input type="text" name="departNation" placeholder="도착나라를 입력해주세요." required="required">
					<p>희망 날짜</p>
					<input type="date" name="deadlineDate" required="required">
					<p>요청사항</p>
					<textarea name="requirement" placeholder="요청사항을 적어주세요."
						required="required"></textarea>
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