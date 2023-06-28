package kr.hyeok.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.hyeok.model.MemberDAO;
import kr.hyeok.model.MemberVO;

@WebServlet("/memberInsert.do")
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		// 1. Parameter 수집(VO)
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");

		// MemberVO vo = new MemberVO(age, pass, name, age, email, phone);
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPass(pass);
		vo.setName(name);
		vo.setAge(age);
		vo.setEmail(email);
		vo.setPhone(phone);

		// System.out.println(vo.toString());

		// Model과 연동
		MemberDAO dao = new MemberDAO();
		int rows = dao.memberInsert(vo);
		PrintWriter out = response.getWriter();
		if (rows > 0) {
			// 가입성공 -> // 다시 회원리스트 보기로 이동(/MVC01/memberList.do)
			response.sendRedirect("/MVC01/memberList.do");
			// out.println("insert sucess");
		} else {
			// 가입실패 -> 예외객체를 만들어서 WAS에게 던짐
			throw new ServletException("not insert");
		}

	}

}
