<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - pageContext</title>
</head>
<h1>pageContext</h1>
<body>
<%
	//pageContext 객체 : 현재 페이지에 있는 객체에 대한 값을 저장하고 관리하는 객체
	JspWriter pageOut = pageContext.getOut();
	System.out.println(pageOut == out);
	String str = request.getParameter("str");	//test03?str
	if(str.equals("include")){
		pageContext.include("target.jsp");	//현재 페이지에 target.jsp의 내용을 
	}else if(str.equals("forward")){
		pageContext.forward("target.jsp");	//현재 페이지로 target.jsp의 내용을 전홍
	}else{
		out.println("<h2>잘못된 값</h2>");
	}
%>
</body>
</html>

