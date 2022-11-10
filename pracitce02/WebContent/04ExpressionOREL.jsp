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
	String name = "김기태";
	int num = 1004;
	int num1 = 3;
	int num2 = 4;

	


	Human h1 = new Human();
	h1.setCountry("Korean");
	h1.setName("김기태");
	h1.setAge(37);
	h1.setHobby("문화탐방");

	List <Human> hList = new ArrayList<Human>();
	
	Human h2 = new Human();
	h2.setCountry("American");
	h2.setName("안효준");
	h2.setAge(18);
	h2.setHobby("영화감상");
	
	hList.add(h1);
	hList.add(h2);
	
	request.setAttribute("hList", hList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04Expression OR EL</title>
</head>
<body>
<h3>ArrayList+pageContext+EL</h3>
<table border="1" cellpadding="10" cellspacing="0">
<%
	if(hList != null){
		for(Human human : hList){
			pageContext.setAttribute("human", human);
%>
	<tr>
		<td>${human.country }</td>
		<td>${human.name }</td>
		<td>${human.age }</td>
		<td>${human.hobby }</td>
	</tr>
<%
	}
}
%>

</table>
<h2>Expression(표현식)</h2>
<p>1. 문자열 출력: <%="Hello Expression" %></p>
<p>2. 문자열 출력 2: <% out.println("Hello out Println"); %></p>
<p>3. 숫자 출력 : <%=1004 %></p>
<p>4. 문자열 변수의 출력 : <%=name %></p>
<p>5. 숫자 변수의 출력 : <%=num %></p>
<p>6. 문자변수 + 숫자변수 출력 : <%=name+num %></p>
<p>7. 숫자 연산(덧셈) : <%=num1+num2 %></p>
<p>8. 숫자 비교 연산 : <%=num1>num2 %></p>
<p>9. 숫자 연산(뺄셈) : <%=num1-num2 %></p>
<p>10. 숫자 연산(곱) : <%=num1 * num2 %></p>
<p>11. 숫자 연산(나누기) : <%=num1/num2 %></p>
<p>12. 숫자 연산(나머지) : <%=num1%num2 %></p>
<p>13. 삼항연산 : <%=num1>num2?num1:num2 %></p>

<!-- 전부 가능 -->

<p></p>

<!--  -->
<hr>
<h2>Expression Language : EL</h2>
<p>전송된 데이터의 자동 바인딩하려고 할 경우 별도의 바인딩 과정 없이 받아 올 수 있다.</p>
<p>1. 문자열 : ${"hello EL" }</p>	<!-- ${out.println() } 안됨 -->







</body>
</html>