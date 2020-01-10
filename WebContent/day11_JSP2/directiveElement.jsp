<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.Date" %>  
Today is: <%= new Date() %>  
<br>
<%@ page buffer="16kb" %>  
Today is: <%= new java.util.Date() %>  

<%@ page isErrorPage="true" %>  
  
 Sorry an exception occured!<br/>  
The exception is: <%= exception %>  

</body>
</html>