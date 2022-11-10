<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*, java.net.InetAddress" %>	<!--  -->
<%@ page import="com.example.* " %>	<!--  -->
<%@ include file="common.jsp" %>	<!--  -->
<%--  <%@ taglib prefix="접두사" uri="URI" %>   --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	<!-- 접두사 c >> core // 접두사 fmt >> format -->
<%
	//getAttribute 메소드가 실행되는 순서 - request→ session→ application
	pageContext.setAttribute("pname", "rlarlxo");	//
	request.setAttribute("rname", "rlaxoduq");	//동일한 요청에 의해 실행되는 페이지 간에 정보를 유지하기 위해 HttServletRequest 객체에 등록 합니다.
	session.setAttribute("sname", "rkdqudtn");	//클라이언트 단위로 정보를 유지하고자 할 때 HttpSession 객체에 등록합니다.
	application.setAttribute("aname", "rladuswjd");	 //웹 애플리케이션 단위로 정보를 유지하고자 할 때 ServletContext객체에 등록합니다.
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05 EL Data Form</title>
</head>
<body>
	<h2>EL FormData Transmission</h2>
	<form action="05ELParam.jsp" method="post" >
		<label for="id">아이디</label> : <input type="text" name="id" id="id">
		당신이 좋아하는 스포츠는 무엇입니까?<br><br>
		<input type="checkbox" name="hobby" id="hobby1" value="축구">
		<label for="hobby1">축구</label>
		<input type="checkbox" name="hobby" id="hobby2" value="농구">
		<label for="hobby2">농구</label>
		<input type="checkbox" name="hobby" id="hobby3" value="야구">
		<label for="hobby3">야구</label>
		<input type="checkbox" name="hobby" id="hobby4" value="배구">
		<label for="hobby4">배구</label>
		<input type="submit" value="전송" />
		<input type="reset" value="취소" />
	</form>
</body>
</html>