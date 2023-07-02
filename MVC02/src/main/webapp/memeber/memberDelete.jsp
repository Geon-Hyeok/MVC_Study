<%@page import="kr.hyeok.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
int num = Integer.parseInt(request.getParameter("num"));

MemberDAO dao = new MemberDAO();
int rows = dao.memberDelete(num);
if (rows > 0) {
	response.sendRedirect("memberList.jsp");
} else {
	throw new ServletException("not delete");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>