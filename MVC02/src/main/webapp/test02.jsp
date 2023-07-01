<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="kr.hyeok.model.*"%>
<%
MyCalc c = new MyCalc();
int v = c.hap(1, 300);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>1~300 까지의 총합</td>
			<td><%=v%></td>
		</tr>
	</table>

</body>
</html>