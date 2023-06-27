package kr.hyeok.model;

// JDBC -> myBatis, JPA
import java.sql.*;
import java.util.ArrayList;

public class MemberDAO extends MemberVO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	// 데이터베이스 연결객체 생성
	public void getConnect() {
		// 데이터베이 접속 URL
		String URL = "jdbc:mysql://localhost:3306/test?characterEncoding=UTF-8&serverTimezone=UTC";
		String user = "root";
		String password = "admin12345";

		// MySQL Driver Loading

		try {
			// 동적로딩(실행 시점에서 객체를 생성하는 방법)
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 회원저장 동작
	public int memberInsert(MemberVO vo) {
		String sql = "insert into member(id, pass, name, age, email, phone) values(?, ?, ?, ?, ?, ?)";
		int rows = 0;
		getConnect();
		// SQL 문장을 전송하는 객체 생성
		try {
			// 미리 컴파일 진행(속도가 빠르기 때문에)
			pstmt = con.prepareStatement(sql);

			// 세팅
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setInt(4, vo.getAge());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getPhone());

			// 전송(실행)
			rows = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rows;
	}

	// 회원(VO) 전체 리스트(ArrayList) 가져오기
	public ArrayList<MemberVO> memberList() {
		String sql = "select * from member order by no";
		getConnect();
		ArrayList<MemberVO> list = new ArrayList<>();

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(); // rs-> 커서

			while (rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				MemberVO vo = new MemberVO(num, id, pass, name, age, email, phone);
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 데이터베이스 연결 끊기
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
}
