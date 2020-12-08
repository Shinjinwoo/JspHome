<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="09_actionTagTest.jsp">
		아이디 : <input type="text" name="userID"><br> 암 &nbsp; 호 :
		<input type="password" name="userPwd"><br>
		<input type="radio" name="loginCheck" value="user" checked="checked">
		<!-- <!-- 라디오버튼으로 유저인지 관리자인지 체크해서 user 벨류를 넘겨줌  -->  -->
		사용자 <input type="radio" name="loginCheck" value="manager">
		<!-- 라디오버튼으로 유저인지 관리자인지 체크해서 manager 벨류를 넘겨줌  -->
		관리자 <br> <input type="submit" value="로그인">
	</form>
</body>
</html>