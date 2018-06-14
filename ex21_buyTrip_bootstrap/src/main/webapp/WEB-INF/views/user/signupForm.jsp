<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
	
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript">
    $(function () {
        var chk = -1;
        
        
        $("#auth_btn").click(function () {
            var data = {"email": $("#email").val()};
            var authNum = "";
            
            $.ajax({
                url : "emailAuth",
                data : data,
                success : function (data) {
                    authNum = data;
                    alert("인증번호 전송완료.");
                    
                    chk = checkNum(authNum);
                    
                    if( chk > 0){
                        alert("인증완료");
                        chk = 1;
                        $("#lab1").html("<label>인증완료</label>");
                    }else{
                        alert("인증실패");
                        $("#lab1").html("<label>인증실패</label>");
                    }
                    
                }
                
            });
            
        });// 이메일 인증 버튼 end
        
        // 회원가입
        $("#signUp_btn").click(function () {
            if( chk > 0  ){
                return true;
            }else{
                alert("이메일 인증을 완료하여 주세요.");
                return false;
            }
            
        });
        
    });
</script>
<script type="text/javascript">
    function checkNum(authNum) {
        var chk = 0;
        var user_authNum = prompt("인증번호를 입력하세요.");
        // 인증번호 비교
        if (authNum == user_authNum) {
            chk = 1;
            $("#user_authNum").val(user_authNum);
        } else {
            chk = -1;
        }
 
        return chk;
    };
 
</script>
</head>
<body>
<div class="container">
  <div class="row">
  	</p></p></p>
    <div class="col-md-4">
    </div>
    <div class="col-md-4">
					<div class="login-box well">
                    <form action="${pageContext.request.contextPath}/user/signup">
                        <legend>회원가입</legend>
                        <div class="form-group">
                            <label for="username-email">아이디</label>
                            <input value='' name="memberId" id="email" placeholder="E-mail address" type="text" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="password">비밀번호</label>
                            <input id="password" name="memberPassword" value='' placeholder="Password" type="password" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="username-email">이름</label>
                            <input value='' name="memberName" id="username-email" placeholder="name" type="text" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="username-email">전화번호</label>
                            <input value='' name="mobile" id="phone" placeholder="전화번호" type="text" class="form-control" />
                        </div>
                        <button type="button" id="auth_btn">인증하기</button>
        				<br>
        					인증번호 : <input type="text" id="user_authNum" name="user_authNum" readonly="readonly"><div id="lab1"></div><br>                                              
                        <div class="form-group">
                            <input type="submit" id="signUp_btn" class="btn btn-default btn-login-submit btn-block m-t-md" value="회원가입" />
                        </div>
                        <div  style="margin-top: 30px;"/>
                        <div class="form-group">
                            <p class="text-center m-t-xs text-sm">이미 계정이 있나요?</p> 
                            <a href="${pageContext.request.contextPath}/user/loginForm" class="btn btn-default btn-block m-t-md">로그인</a>
                        </div>
                    </form>
                
            </div>
    </div>
    <div class="col-md-4" style="margin-bottom: 20px;">
    </div>    
  </div>
</div>
</body>
</html>