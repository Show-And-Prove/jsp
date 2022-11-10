<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<jsp:useBean id="b" scope="request" class="com.example.Human" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07HumanUseBean</title>
</head>
<body>
<h2>useBean 액션태그 + Expression</h2>

<ul>
	<li>이름 : <%=b.getName() %></li>
	<li>나이 : <%=b.getAge() %></li>
	<li>취미 : <%=b.getHobby() %></li>
	<li>국적 : <%=b.getCountry() %></li>
</ul>
<hr>

<h2>useBean 액션태그 + Expression Language</h2>
<ul>
	<li>이름 : ${b.name }</li>
	<li>나이 : ${b.age }</li>
	<li>취미 : ${b.hobby }</li>
	<li>국적 : ${b.country }</li>
</ul>
<hr>

</body>
</html>