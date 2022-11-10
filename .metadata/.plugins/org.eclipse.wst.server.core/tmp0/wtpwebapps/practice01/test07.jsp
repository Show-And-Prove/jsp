<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - scope</title>
</head>
<body>
<%

	ArrayList<String> lst = (ArrayList<String>) request.getAttribute("lst");
	HashSet<String> set = (HashSet<String>) request.getAttribute("set");
	HashMap map = (HashMap) request.getAttribute("map");
	
	out.println("<ul>");
	// List의 접근
	for(int i=0;i<lst.size();i++){
		out.println("<p>"+lst.get(i)+"</p>");
	}
	out.println("</ul>");
	out.println("<ul>");
	
	// Set	-> Iterator
	Iterator iter = set.iterator();
	while(iter.hasNext()){
		out.println("<li>"+iter.next()+"</li>");		
	}
	
	out.println("</ul>");
	out.println("<ul>");
	//Map	-> Collection
	
	Collection<String> val = map.values();
	for(String name : val){
		out.println("<li>"+name+"</li>");
	}
	out.println("</ul>");
	
	//Scope
	//pageContext - 현재 페이지에서만 유효
	pageContext.setAttribute("pageData", "페이지 컨텍스트");
	//request - 폼 전송의 목적지 또는 a 요소의 목적지, forward의 목적지 까지 유효
	request.setAttribute("requestData", "리퀘스트");
	//session - 로그인 하는 동안만 유효
	session.setAttribute("sessionData", "세션");
	//application - 웹 브라우저 또는 현재 애플리케이션이 실행되고 있는 동안 유효
	application.setAttribute("applicationData", "어플리케이션");
	application.setAttribute("msg", "ㄳ");
	//전역객체는 web.xml에 등록도 가능함
	
	//out.println("user id : " +application.getInitParameter("userId"));
	
	//출력
	out.println("<h3>페이지</h3>"+pageContext.getAttribute("pageData"));
	out.println("<h3>리퀘스트</h3>"+request.getAttribute("requestData"));
	out.println("<h3>세션</h3>"+session.getAttribute("sessionData"));
	out.println("<h3>어플리케이션</h3>"+application.getAttribute("applicationData"));
	out.println("<h3>어플리케이션 메시지</h3>"+application.getInitParameter("userId"));
	out.println("msg : "+application.getAttribute("msg"));
	out.println("<a href='test08.jsp?msg=테스트08로간다'>테스트08</a>");

%>
</body>
</html>