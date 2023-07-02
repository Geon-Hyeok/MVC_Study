<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
List<String> list = new ArrayList<>();
list.add("Python");
list.add("Java");
list.add("Node.js");
list.add("C++");
list.add("JQuery");
request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="sw" items="${list}">
	${sw}<br>
	</c:forEach>

</body>
</html>