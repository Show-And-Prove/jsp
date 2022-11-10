<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*, java.net.InetAddress" %>	<!--  -->
<%@ include file="common.jsp" %>	<!--  -->
<%--  <%@ taglib prefix="접두사" uri="URI" %>   --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	<!-- 접두사 c >> core // 접두사 fmt >> format -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header 정보 출력</title>
</head>
<body>
<%
	Enumeration e = request.getHeaderNames();		//열거형
	
	while(e.hasMoreElements()){
		String name = (String) e.nextElement();
		String value = (String) request.getHeader(name);
		out.println("name : " + name + ", value : "+ value);
		out.println();
	}
	
	out.println("<h3>접속 ip 주소 : </h3>" + request.getLocalAddr());
	InetAddress ipaddr = InetAddress.getLocalHost();
	out.println("<h3>접속 서버 ip 주소 : </h3>" + ipaddr);
%>

</body>
</html>