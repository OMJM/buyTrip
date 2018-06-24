<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%>

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

					<div class="profile-content">
						<h1 class="page-header">회원 정보 수정</h1>

						<div class="text-center">
							<img src="" class="avatar img-circle img-thumbnail" alt="avatar" style="width:45%;">
								  
								<br><br>
								 <input type="file" class="text-center center-block well well-sm">

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
									<div>
										<input class="btn btn-primary" value="회원정보수정"
											type="submit"> <span></span> <span></span><input
											class="btn btn-default" value="Cancel" type="reset">
									</div>
									<div>
									<input type="button" class="btn btn-danger btn-sm" id="withdraw" style="margin:30px; width:25%" value="탈퇴하기"/>
									  
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
