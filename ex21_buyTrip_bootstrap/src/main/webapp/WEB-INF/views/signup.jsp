<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<!-- css -->
	<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet" id="bootstrap-css" type="text/css" media="all"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- /css -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <div class="row">
  	</p></p></p>
    <div class="col-md-4">
    </div>
    <div class="col-md-4">
					<div class="login-box well">
                    <form action="">
                        <legend>회원가입</legend>
                        <div class="form-group">
                            <label for="username-email">아이디</label>
                            <input value='' id="username-email" placeholder="E-mail address" type="text" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="password">비밀번호</label>
                            <input id="password" value='' placeholder="Password" type="password" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="username-email">이름</label>
                            <input value='' id="username-email" placeholder="name" type="text" class="form-control" />
                        </div>                                              
                        <div class="form-group">
                            <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="회원가입" />
                        </div>
                        <div  style="margin-top: 30px;"/>
                        <div class="form-group">
                            <p class="text-center m-t-xs text-sm">이미 계정이 있나요?</p> 
                            <a href="/register/" class="btn btn-default btn-block m-t-md">로그인</a>
                        </div>
                    </form>
                
            </div>
    </div>
    <div class="col-md-4">
    </div>    
  </div>
</div>

</body>
</html>