<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
// String data = (String) request.getAttribute("data");
String data = request.getParameter("data");
String name = request.getParameter("name");
String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Controller���� ���� ���� ��� :
	<br> ������ :
	<%=data%><br> �̸� :
	<%=name%><br> ���� :
	<%=age%><br>


</body>
</html>