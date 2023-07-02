package kr.hyeok.forward;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.hyeok.model.MemberVO;

@WebServlet("/fc.do")
public class FowardController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = "park";
		int age = 45;
		String email = "aaa@gmail.com";

		MemberVO vo = new MemberVO();
		vo.setName(name);
		vo.setAge(age);
		vo.setEmail(email);
		// foward.jsp
		// 객체 바인딩
		req.setAttribute("vo", vo);
		// forward
		RequestDispatcher rd = req.getRequestDispatcher("view/forward.jsp");
		rd.forward(req, resp);
	}

}
