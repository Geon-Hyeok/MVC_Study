<%@page import="kr.hyeok.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
MemberVO vo = new MemberVO();
vo.setNum(1);
vo.setId("abc123");
vo.setName("�Ӳ���");
vo.setEmail("abc123@gmail.com");
request.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border = "1">
		<tr>
			<td>��ȣ</td>
			<td>���̵�</td>
			<td>�̸�</td>
			<td>�̸���</td>
		</tr>
		<tr>
			<td>${vo.num}</td>
			<td>${vo.id}</td>
			<td>${vo.name}</td>
			<td>${vo.email}</td>
		</tr>
	</table>

</body>
</html>