<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="num" value="10"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${num%2==0}">
¦���Դϴ�
</c:when>
		<c:when test="${num%2!=0}">
Ȧ���Դϴ�
</c:when>
		<c:otherwise>
��ġ�ϴ� when ���� ���� ��쿡 �����Ѵ�
</c:otherwise>
	</c:choose>
</body>
</html>