<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl tutorial</title>
</head>
<body>
<c:out value="${'Welcome to javaTpoint'}"/><br>
<c:out value="${'wowowo'}"/><br>
<c:set var="income" scope="session" value="${4000*4}"/>
<p>Before Remove Value is: <c:out value="${income}"/></p>  
<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p>  

<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>  

<c:set var="income" scope="session" value="${4000*4}"/>  
<c:set var="income2" scope="session" value="${4000*1}"/>  
<c:if test="${income > 8000}">  
   <p>My income is: <c:out value="${income}"/><p>  
</c:if>  
<c:if test="${income2 > 8000}">  
   <p>My income is: <c:out value="${income}"/><p>  
</c:if> 

<hr>
<p>choose문</p>

<c:set var="income3" scope="session" value="${4000*4}"/>  
<p>Your income is : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income3 <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income3 > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>  

<c:set var="income4" scope="session" value="${1000*1}"/>  
<p>Your income is : <c:out value="${income4}"/></p>  
<c:choose>  
    <c:when test="${income4 <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income4 > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>  
<br>

<c:set value="9" var="num"></c:set>  
<c:choose>  
<c:when test="${num%2==0}">  
<c:out value="${num} is even number"></c:out>  
</c:when>  
<c:otherwise>  
<c:out value="${num} is odd number"></c:out>  
</c:otherwise>  
</c:choose>  

<hr>
<h3>forEach</h3>
<p>for문이랑 똑같다고 생각</p>
<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach>
<hr>
<h3>forTokens</h3>
<p>이것은 delims로 정해준 것으로 구분하는 듯.</p>
<c:forTokens items="Rahul-Nakul-Rajesh efd" delims="-" var="name">  
   <c:out value="${name}"/><p>  
</c:forTokens>  

  <c:set var="url" value="0" scope="request"/>  
  <c:if test="${url<1}">  
     <c:redirect url="http://naver.com"/>  
  </c:if>  
  <c:if test="${url>1}">  
     <c:url value="http://facebook.com"/>  
  </c:if>  

</body>
</html>