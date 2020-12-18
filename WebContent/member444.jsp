<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,test.*" pageEncoding="UTF-8" isELIgnored="false"%>

<%
	session.setAttribute("address","수원시 팔달구");
	pageContext.setAttribute("address","서울시 강서구");
%>
<!-- 세션에 바인딩한 주소가 출력되는 것을 확인 할수 있다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<table border=1 align="center">
		<tr align="center" bgcolor="#99ccff">
		<tr align="center" bgcolor="#99ccff">
			<td width=20%><b>아이디</b></td>
			<td width=20%><b>비밀번호</b></td>
			<td width=20%><b>이름</b></td>
			<td width=20%><b>이메일</b></td>
			<td width=20%><b>주소</b></td>
		</tr>
		<tr align="center">
			<td>${id }</td>
			<td>${pwd }</td>
			<td>${name }</td>
			<td>${email }</td>
			<td>${address }</td>
		</tr>

	</table>
</body>
</html>