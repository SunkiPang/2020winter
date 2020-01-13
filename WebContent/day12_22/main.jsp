<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userGender"/>
<jsp:setProperty name="user" property="userEmail"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<style>
	body {
		background-color: #ddffdd;
	}
	.jumbotron{
		text-align: center;
	}
	.form-group{
		margin: 5px;
	}
</style>
<title>JSP 게시판</title>
</head>
<body>


<div class="container">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <div class="jumbotron" style="padding-top: 20px;">
	        <form method="post" action="joinAction.jsp">
	        <h3 style="text-align:center;">회원가입 화면</h3>
	        <div class="form-group">
	            <input type="text" class="form-control" placeholder="아이디" name="userID">
	        </div>
	        <div class="form-group">
	            <input type="password" class="form-control" placeholder="비밀번호" name="userPassword">
	        </div>
	        <div class="form-group">
	            <input type="text" class="form-control" placeholder="이름" name="userName">
	        </div>
	        <div class="form-group" style="text-align:center;">
	            <div class="btn-group" data-toggle="buttons">
	                    <label class="btn btn-primary active">
	                        <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
	                    </label>
	                    <label class="btn btn-primary">
	                        <input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
	                    </label>
	            </div>
	        </div>
	        <div class="form-group">
	            <input type="email" class="form-control" placeholder="이메일" name="userEmail">
	        </div>
	        <input type="submit" class="btn btn-primary form-control" value="회원가입">
	        </form>
    	</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>
