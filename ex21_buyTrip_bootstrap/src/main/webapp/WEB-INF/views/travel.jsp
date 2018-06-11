<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

</style>
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
			<form class="form-inline" action="">
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
	<div style="background-color: #f6f6f6; height: 50px; margin-top: 50px; "></div>
	<div class="row">
		<div style="text-align: center; margin-top: 50px;">
			<h1>거래율이 가장 높은 여행지, Top 3</h1>
			<h5>
				</br><p>당신의 다음 여행지는 어디인가요?</p>
				<p>거래율이 가장 높은 여행지는 이곳입니다.</p></br>
			</h5>
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-3">
			<div class="row">
				<div class="well well-lg">
					<h2>한국</h2>
					<img alt="" src="${pageContext.request.contextPath}/resources/images/korea.jpg" style="width: 100%;">
					<hr>
					<div class="row" style="text-align: center;">
						<div class="col-md-4">주문수</div>
						<div class="col-md-4">체택수</div>
						<div class="col-md-4">완료율</div>
					</div>
					<div class="row" style="text-align: center;">
						<div class="col-md-4">
							<h3>
								<span>200</span>
							</h3>
						</div>
						<div class="col-md-4">
							<h3>
								<span>100</span>
							</h3>
						</div>
						<div class="col-md-4">
							<h3>
								<span>50%</span>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="well">
			</div>
		</div>
		<div class="col-md-3">
			<div class="well">
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
	<div style="height: 50px; margin-top: 50px; "></div>		
	<div class="row" style="background-color: #f6f6f6;">
		<div style="text-align: center; margin-top: 50px;">
			<h1>최근 등록된 주문들</h1>
			<h5>
				</br><p>이러한 품목은 최근 전세계에서 요청되었습니다.</p>
				<p>국경없는 쇼핑을 위해 buyTrip에 가입하십시오.</p></br>
			</h5>
		</div>	
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<div class="row">
				<div class="well well-lg" style="background-color: white; margin: 5px;">상품</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="well well-lg" style="background-color: white; margin: 5px;">상품</div>
			</div>		
		</div>
		<div class="col-md-2"></div>	
	</div>
	<div style="height: 50px; margin-top: 50px;"></div>	
</div>



</body>
</html>