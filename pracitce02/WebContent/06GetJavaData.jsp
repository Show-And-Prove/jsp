<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*, java.net.InetAddress" %>	<!--  -->
<%@ page import="com.example.* " %>	<!--  -->
<%@ include file="common.jsp" %>	<!--  -->
<%--  <%@ taglib prefix="접두사" uri="URI" %>   --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	<!-- 접두사 c >> core // 접두사 fmt >> format -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>리스트 반복출력</h2>
<ul>
	<c:forEach items="${arrList }" var="arrlist" varStatus="status">
	<li>${status.count } : ${arrlist }</li>
	</c:forEach>
</ul>
<hr>

<h2>해시맵 반복출력</h2>
<ul>
	<c:forEach items="${hashMap }" var="map1" varStatus="status">
	<li>${status.count } : ${map1 }</li>
	</c:forEach>
</ul>
<hr>

<h2>el+jstl</h2>
<ul>
	<c:forEach items="${hashmap }" var="i">
	<li>${i.key } : ${i.value }</li>
	</c:forEach>
</ul>
<hr>


</body>
</html>