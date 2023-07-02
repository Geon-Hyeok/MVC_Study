<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.hyeok.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
MemberVO vo = new MemberVO();
vo.setNum(1);
vo.setId("abc123");
vo.setName("임꺽정");
vo.setEmail("abc123@gmail.com");
request.setAttribute("vo", vo);

List<MemberVO> list = new ArrayList<>();
list.add(vo);
list.add(vo);
list.add(vo);
list.add(vo);

request.setAttribute("list", list);
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
			<td>번호</td>
			<td>아이디</td>
			<td>이름</td>
			<td>이메일</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.num}</td>
				<td>${vo.id}</td>
				<td>${vo.name}</td>
				<td>${vo.email}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>