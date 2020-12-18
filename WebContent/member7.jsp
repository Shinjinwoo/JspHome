<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="test.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	/*한글 인코딩 */
%>

<jsp:useBean id="m" class="test.MemberBean" scope="page" />
<jsp:setProperty property="*" name="m" />


<!DOCTYPE html>
<html>
<head>
<style>
h1 {
	text-align: center;
	/* 가운데 정렬 */
}
</style>
<meta charset="UTF-8">
<title>회원 목록창</title>
</head>
<body>
	<table align="center" width="100%">
		<!-- 가운데 정렬 좌우폭 100% -->
		<tr align="center" bgcolor="#99ccff">
			<!--  가운데정렬, 배경색 지정 -->
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
			<td width="11%">이메일</td>
			<td width="5%">가입일자</td>
		</tr>
		<tr align=center>
			<td><jsp:getProperty property="id" name="m" /></td>
			<td><jsp:getProperty property="pwd" name="m" /> </td>
			<td><jsp:getProperty property="name" name="m" /> </td>
			<td><jsp:getProperty property="email" name="m" /> </td>
			<!-- bean 객체에서 값을 get 해옴  -->
		</tr>

		<tr height="1" bgcolor="#99ccff">
			<td colspan="5"></td>
		</tr>
	</table>
</body>
</html>