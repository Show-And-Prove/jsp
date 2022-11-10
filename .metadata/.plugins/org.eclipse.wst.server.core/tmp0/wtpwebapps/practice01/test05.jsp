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
	response.setContentType("text/html; charset=UTF-8");
	//response.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	Cookie cookie = null;
	
	
	if(id.equals("admin") && pw.equals("1234")){
		//만약, 아이디와 비밀번호가 맞으면, 로그인처리 후 login_ok.jsp로 이동
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		response.addCookie(cookie);		//쿠키 추가
		response.sendRedirect("login_ok.jsp");		
	}else{
		//일치하지 않으면, loginForm.html로 이동
		response.sendRedirect("loginForm.html");
		response.setStatus(404);	//현재 처리된 내용의 상태코드를 설정
		response.sendError(404, "해당하는 페이지가 존재하지 않습니다.");	//해당 상태코드의 메세지 보내기
		
	}
	



%>
	<p> 콘텐츠 유형 : <%=response.getContentType() %>
	<%-- <p> 문자 인코딩 : <%=response.getCharacterEncoding() %> --%>
	
	
	
	
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