<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="member" class="com.first.MemberBean" />
    <jsp:setProperty property="*" name="member" />
    <%
        request.setAttribute("member", member);
    %>
    <jsp:forward page="signUpOut.jsp" />
</body>
</html>