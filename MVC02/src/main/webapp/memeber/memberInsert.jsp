<%@page import="kr.hyeok.model.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
// 파라미터 수집(VO)
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
String email = request.getParameter("email");
String phone = request.getParameter("phone");

MemberVO vo = new MemberVO();
vo.setId(id);
vo.setPass(pass);
vo.setName(name);
vo.setAge(age);
vo.setEmail(email);
vo.setPhone(phone);

MemberDAO dao = new MemberDAO();
int rows = dao.memberInsert(vo);
if (rows > 0) {
	response.sendRedirect("memberLis0.jsp");
} else {
	throw new ServletException("not insert");
}
%>
