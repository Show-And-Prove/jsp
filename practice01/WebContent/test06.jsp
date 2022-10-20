<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test06 : jsp - java 객체제어</title>
</head>
<body>
<%
	List<String> lst = new ArrayList<>();
	lst.add("null");
	lst.add("null2");
	lst.add("null3");
	lst.add("null4");
	request.setAttribute("lst", lst);
	//request.setAttribute("lst0", lst.get(0));	 - 원하는것만 선택
	
	Set<String> set = new HashSet<>();
	set.add("1");
	set.add("2");
	set.add("3");
	set.add("4");
	request.setAttribute("set", set);
	
	Map map = new HashMap();
	map.put("test1", "q");
	map.put("test2", "w");
	map.put("test3", "e");
	map.put("test4", "r");
	request.setAttribute("map", map);
	request.setAttribute("map0", "test1"); 	 	 	 	
	
	// 전송 받을 목적 페이지 지정
	RequestDispatcher rd = request.getRequestDispatcher("test07.jsp");
	
	
	// 해당 목적 페이지에 request.setAttribute()한 데이터를 포워딩(전달)
	rd.forward(request, response);
	//response.sendRedirect("test07.jsp");
%>
</body>
</html>