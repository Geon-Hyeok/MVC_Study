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
	Controller에서 받은 값을 출력 :
	<br> 데이터 :
	<%=data%><br> 이름 :
	<%=name%><br> 나이 :
	<%=age%><br>


</body>
</html>