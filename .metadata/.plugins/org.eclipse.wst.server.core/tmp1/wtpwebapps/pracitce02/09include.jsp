<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String pageName1 = "header.jsp";
	String pageName2 = "footer.jsp";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삽입 문서</title>
</head>
<body>
<jsp:include page="<%=pageName1 %>" flush="false" />
<%-- <jsp:param name="name2" value="김도연" /> --%>
<a href="09include.jsp?name=<%=name %>">데이터 전송</a>
<jsp:include page="<%=pageName2 %>" flush="false" />
</body>
</html>