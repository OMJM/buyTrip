<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<style type="text/css">	
#main{
width: 700px;
height: 500px;"
}
.col-md-6{
    text-align: center;
}
.form-group, .btn{
	margin-top: 20px;
}
.well-lg {
    padding: 0px;
    margin-bottom: 0px;
}

</style>
<script type="text/javascript">
$(function(){
	  $("#departNation").keyup(function(){
		   if($(this).val()==""){
			   $("#suggest").hide();
			   return;
		   }
		   
		   $.ajax({
			   type:"post" ,
			   url: "${pageContext.request.contextPath}/travel/suggest",
			   data:"keyWord="+ $(this).val(),
			   dataType:"json",
		       success: function(result){//개수|단어,단어,단어,...
		    	   
		    	   var str="";
		          $.each(result,function(index, item){
		        	  str+="<a href='#'>"+item+"</a><br>";
		          });
		          
		          $("#suggest").html(str);
		          $("#suggest").show();
		    	   
		       } , 
		       error:function(err){
		    	   console.log("에러 발생 : " + err);
		    	  
		       }
			   
		   });
	   });
	   
	   $("#suggest").on("click","a" ,function(){
		   
		   $("#departNation").val($(this).text());
		   $("#suggest").hide();
		   
	   });
	   
})
</script>



</head>

<body>
<div style="height: 50px;"></div>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-4" style="text-align: center; margin-top: 50px">
			<h1>
				<br>
				<br>여행하면서 돈을 벌어보세요!
			</h1>
			<h5>
				<br>직구자가 당신의 여행지에서 상품을 기다리고 있습니다.<br> <br>여행지를 검색해보고
				판매자가 되어보세요.<br>
			</h5>
			<form class="form-inline" action="travel/searchList">
				<div class="form-group">
					<label for="">출발지</label> <input type="text" class="form-control"
						placeholder="출발나라" size="17">
				</div>
				<div class="form-group">
					<label for="">도착지</label> <input type="text" class="form-control"
						placeholder="한국" disabled="disabled" size="17">
				</div>
				<input type="submit" class="btn btn-default btn-block" value="검색하기">
			</form>
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-6">
		  <img alt="" src="${pageContext.request.contextPath}/resources/images/travel.jpg"
			class="img-rounded" id="main">
		</div>
	</div>

		<div class="row" style="background-color: #f6f6f6;margin-top: 50px; text-align: center; height:auto">
			<div class="container" style="margin: 25px;">
				<h1>여행지를 등록해보세요</h1>
				<h5>
					<br>
					<p>여러분의 여행할 장소들을 등록해보세요
				</h5>
				<button type="button" class="btn btn-info" style="width:20%;"
					onclick="location.href='${pageContext.request.contextPath}/travel/addTrip'">여행지 등록</button>
			</div>
		</div>


		<!-- 거래율이 가장 높은 여행지 -->
	<div class="container">
		<div class="row">
			<div style="text-align: center; margin-top: 50px;">
				<h1>거래율이 가장 높은 여행지, Top 3</h1>
				<h5>
					</br><p>당신의 다음 여행지는 어디인가요?</p>
					<p>거래율이 가장 높은 여행지는 이곳입니다.</p></br>
				</h5>
			</div>
			
			<!-- 여행지 list -->
			<div class="col-md-4">
				<div class="row">
					<div class="well well-lg" onclick="location.href='${pageContext.request.contextPath}/detail'"
					style="background-color: white; margin:10px;">
						<div class="row">
							<div class="col-sm-1"></div>
							<div class="col-sm-11"><h2>한국</h2></div>
						</div>
						<img alt="" src="${pageContext.request.contextPath}/resources/images/korea.jpg" style="width: 100%;">
						<div class="row" style="height: 15px;"></div>
						<div class="row" style="text-align: center;">
							<div class="col-md-1"></div>
							<div class="col-md-3">
								<span>주문수</span>
							</div>
							<div class="col-md-3">
								<span>체택수</span>
							</div>
							<div class="col-md-4">
								<span>거래율</span>
							</div>
							<div class="col-md-1"></div>
						</div>	
						<div class="row" style="text-align: center;">
							<div class="col-md-1"></div>
							<div class="col-md-3">
								<h3><span>200</span></h3>
							</div>
							<div class="col-md-3">
								<h3><span>100</span></h3>
							</div>
							<div class="col-md-4">
								<h3><span>50%</span></h3>
							</div>
							<div class="col-md-1"></div>
						</div>	
					</div>
				</div>
			</div>
			<!-- / 여행지 list -->
			
			<div class="col-md-4">
				<div class="well">
				</div>
			</div>
			<div class="col-md-4">
				<div class="well">
				</div>
			</div>
		</div>
	</div>	
	<!-- / 거래율이 가장 높은 여행지 -->
	
	<!-- 여백 -->
	<div style="height: 50px; margin-top: 50px; "></div>		
	
	
	<!-- 최근 등록된 주문들 -->
	<div class="row" style="background-color: #f6f6f6;">
		<div class="container">
			<div class="row">
				<div style="text-align: center; margin-top: 50px;">
					<h1>최근 등록된 주문들</h1>
					<h5>
						</br><p>이러한 품목은 최근 전세계에서 요청되었습니다.</p>
						<p>국경없는 쇼핑을 위해 buyTrip에 가입하십시오.</p></br>
					</h5>
				</div>	
			</div>
			<div class="row">
			
				<!-- 주문 list -->
				<div class="col-sm-6">
					<form method="POST" action="${pageContext.request.contextPath}/deal/offerDeal">
						<div class="well well-sm"
							onclick="location.href='${pageContext.request.contextPath}/detail'"
							style="background-color: white; padding:10px; margin: 10px" >
							<div class="row">
								<div class="col-sm-2" style="margin-bottom: 15px;">
									<img
										src="${pageContext.request.contextPath}/resources/images/159.jpg"
										class="avatar img-circle" alt="avatar"
										style="width: 50px; height: auto;">
								</div>
								<div class="col-sm-4">
									<span>username</span></br>
									<span>요청날짜 : 2018-06-01</span>
								</div>
								<div class="col-sm-6" align="right">
									<h5>마감날짜 : 2018-07-02</h5>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3 col-md-3 text-center">
									<img
										src="${pageContext.request.contextPath}/resources/images/159.jpg"
										alt="bootsnipp" class="img-rounded img-responsive"
										style="width: 189px; height: auto;" />
								</div>
								<div class="col-xs-9 col-md-9 section-box" style="align-self: center;">
									<h2>
										제품 제목 <a href="http://bootsnipp.com/" target="_blank"><span
											class="glyphicon glyphicon-new-window"> </span></a>
									</h2>
									<div class="well well-sm">
										<div class="col-sm-6" style="font-size: 15px;">
											<small>출발지 : </small> 토쿄
										</div>
										<small>도착지 : </small>서울<br>
									</div>
									<div class="row">
										<div class="col-sm-7" style="font-size: 20px;">
											금 액 : 25000 <small>원</small>
										</div>
										<div class="col-sm-5" align="right">
											<input type="hidden" name="offerCode" value="a01"/>
											<input type="hidden" name="proposerId" value="yd@yd"/>
											<input type="hidden" name="offerId" value="jy@jy"/>
											<input type="hidden" name="productCode" value="p0000000001"/>
											<button type="submit" class="btn btn-info">제안하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form> 
				</div>
				<!-- / 주문 list -->
				
			</div>
		</div>
	</div>	
	<!-- / 최근 등록된 주문들 -->
	
	<div style="height: 50px; margin-top: 50px;"></div>	
</div>


</body>
</html>