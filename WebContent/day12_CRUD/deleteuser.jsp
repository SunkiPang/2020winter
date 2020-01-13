<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<%@page import="com.crud.UserDao"%>  
<jsp:useBean id="u" class="com.crud.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  
</body>
</html>