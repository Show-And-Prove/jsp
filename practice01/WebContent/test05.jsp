<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - response 객체</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("") && pw.equals("")){
		//만약, 아이디와 비밀번호가 맞으면, 로그인처리 후 login_ok.jsp로 이동
		session.setAttribute("", id);
		session.setAttribute("", pw);
		response.sendRedirect("login_ok.jsp");
	}else{
		//일치하지 않으면, loginForm.html로 이동
		response.sendRedirect("loginForm.html");
	}
	



%>
<!-- if(id.equals("admin") && pw.equals("1234")){	
		session.setAttribute("m_id", id);
		session.setAttribute("m_pw", pw);
		response.sendRedirect("index.jsp");
	} else {
		out.print("<h1>회원이 아닙니다.</h1>");
		out.print("<a href='login.jsp'> 로그인 페이지로 이동 </a>");
	} -->


</body>
</html>