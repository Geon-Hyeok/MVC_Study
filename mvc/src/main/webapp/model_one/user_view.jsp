﻿
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MVC</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/user.css" type="text/css">
<script language="JavaScript">
	function userRemove(userid) {
		if (confirm("정말로 삭제 하시겠습니까?")) {
			location.href = 'user_remove_action.jsp?userid=' + userid;
		}
	}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<br>
	<table width=780 border=0 cellpadding=0 cellspacing=0>
		<tr>
			<td width="20"></td>
			<td>
				<table width=590 border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>회원관리 -
								회원정보</b></td>
					</tr>
				</table> <br>

				<table border="0" cellpadding="0" cellspacing="1" width="590"
					bgcolor="BBBBBB">
					<tr>
						<td width=100 align=center bgcolor="E6ECDE" height="22">아이디</td>
						<td width=490 bgcolor="ffffff" style="padding-left: 10px;">
							abc</td>
					</tr>
					<tr>
						<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
						<td width=490 bgcolor="ffffff" style="padding-left: 10px;">
							홍길동</td>
					</tr>
					<tr>
						<td width=100 align=center bgcolor="E6ECDE" height="22">이메일</td>
						<td width=490 bgcolor="ffffff" style="padding-left: 10px;">
							abc@daum.net</td>
					</tr>
				</table> <br>

				<table width=590 border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td align=center><input type="button" value="수정"
							onClick="location.href='user_modify.jsp?userid=abc';"> <input
							type="button" value="삭제" onClick="userRemove('abc');"> <input
							type="button" value="목록" onClick="location.href='user_list.jsp';">
						</td>
					</tr>
				</table>

			</td>
		</tr>
	</table>
</body>
</html>