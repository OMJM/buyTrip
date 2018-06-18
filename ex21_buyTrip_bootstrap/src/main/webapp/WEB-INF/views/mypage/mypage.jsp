<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<SCRIPT language=javascript>
   $(function(){
	   $("input[value=회원정보수정]").click(function(){
		   
		   $("#requestForm").attr("action", "${pageContext.request.contextPath}/user/updateMemberAction");
		   $("#requestForm").submit();
	   })
	   
	   
	   $("input[value=탈퇴하기]").click(function(){
		   var pwd = prompt("비밀번호를 입력하세요.");
		   if(pwd){
	           $("#password").val(pwd);
			   $("#requestForm").attr("action", "${pageContext.request.contextPath}/user/withdraw");
			   $("#requestForm").submit();
		   }
	   })
   })
</script>
<style type="text/css">
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

</style>
</head>
<body style="background-color: #F1F3FA; ">


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
						<

							<ul class="nav">
								<li class="active"><a href="${pageContext.request.contextPath}/mypage/mypage"  data-toggle="tab"> <i
										class="glyphicon glyphicon-home"></i> 회원 수정
								</a></li>
								<li><a href="${pageContext.request.contextPath}/travel/select"> <i class="glyphicon glyphicon-user"></i>
										여행 관리
								</a></li>
								<li><a href="${pageContext.request.contextPath}/order/readOrders" >
								 <i class="glyphicon glyphicon-ok"></i>
								 		주문 관리
								</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/myTravelList"> <i class="glyphicon glyphicon-flag"></i>
										메세지
								</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/detail"> <i class="glyphicon glyphicon-flag"></i>
										알림
								</a></li>
							</ul>
							
						</div>
						<!-- END MENU -->
					</div>
				</div>
				<div class="col-md-9">
					<div class="profile-content">
						<h1 class="page-header">회원 정보 수정</h1>

						<div class="text-center">
							<img
								src="${pageContext.request.contextPath}/resources/images/159.jpg"
								class="avatar img-circle img-thumbnail" alt="avatar">
								 <input
								type="file" class="text-center center-block well well-sm">

						</div>
						<br><br>
						<!-- edit form column -->
						<div>
						<sec:authorize access="isAuthenticated()">
							<form class="form-horizontal" name="requestForm" method="post" id="requestForm" role="form" >
							<input type="hidden" name="command" value="update">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

								<div class="form-group">
									<label class="col-md-3 control-label">사용자  아이디 :</label>
									<div class="col-md-8">
										<input name="memberId" class="form-control" value="<sec:authentication property="principal.memberId"/>" type="email" readonly>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">비밀      번호:</label>
									<div class="col-md-8">
										<input class="form-control" id="password" name="memberPassword" value="principal.memberPassword" type="password">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">비밀 번호 확인:</label>
									<div class="col-md-8">
										<input class="form-control" value="11111122333"
											type="password">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">이           름:</label>
									<div class="col-md-8">
										<input class="form-control" name="memberName" value="<sec:authentication property="principal.memberName"/>" type="text">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">전화        번호:</label>
									<div class="col-md-8">
										<input class="form-control" name="mobile" value="<sec:authentication property="principal.mobile"/>" type="text">
									</div>
								</div>
								
								<div class="form-group" align="center">
									<label class="col-md-3 control-label"></label>
									<div class="col-md-8">
										<input class="btn btn-primary" value="회원정보수정"
											type="submit"> <span></span> <span></span><input
											class="btn btn-default" value="Cancel" type="reset">
									</div>
									<div class="col-md-8">
										<input class="btn btn-primary" value="탈퇴하기"
											id="withdraw" type="button"> <span></span> <span></span><input
											class="btn btn-default" value="Cancel" type="reset">
									</div>
								</div>
							</form>
							</sec:authorize>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //projects -->

</body>
</html>