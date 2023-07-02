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
짝수입니다
</c:when>
		<c:when test="${num%2!=0}">
홀수입니다
</c:when>
		<c:otherwise>
일치하는 when 절이 없는 경우에 실행한다
</c:otherwise>
	</c:choose>
</body>
</html>