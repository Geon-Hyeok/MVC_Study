package kr.hyeok.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.hyeok.model.MemberDAO;

@WebServlet("/memberDelete.do")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// http://localhost:8080/MVC01/memberDelete.do?num=3
		int num = Integer.parseInt(request.getParameter("num"));

		MemberDAO dao = new MemberDAO();
		int rows = dao.memberDelete(num);

		if (rows > 0) {
			response.sendRedirect("/MVC01/memberList.do");
		} else {
			throw new ServletException("not delete");
		}

	}

}
