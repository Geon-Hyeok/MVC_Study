<%@page import="java.util.ArrayList"%>
<%@page import="kr.hyeok.model.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
MemberDAO dao = new MemberDAO();
ArrayList<MemberVO> list = dao.memberList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>

<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>

<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script>
</head>
<body>

	<table class="table table-bordered">
		<tr>
			<td>��ȣ</td>
			<td>���̵�</td>
			<td>��й�ȣ</td>
			<td>�̸�</td>
			<td>����</td>
			<td>�̸���</td>
			<td>��ȭ��ȣ</td>
		</tr>
		<%
		for (MemberVO vo : list) {
		%>
		<tr>
			<td><%=vo.getNum()%></td>
			<td><%=vo.getId()%></td>
			<td><%=vo.getPass()%></td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getAge()%></td>
			<td><%=vo.getEmail()%></td>
			<td><%=vo.getPhone()%></td>
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>