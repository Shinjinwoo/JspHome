<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" import="java.util.*,test.MemberBean"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memberList" class="java.util.ArrayList" />
<jsp:useBean id="memberMap" class="java.util.HashMap" />

<%
	memberMap.put("id", "park2");
	memberMap.put("pwd", "park2");
	memberMap.put("name", "park2");
	memberMap.put("email", "park2");

	MemberBean m1 = new MemberBean("son", "1234", "손흥민", "son@test.com");
	MemberBean m2 = new MemberBean("ki", "1234", "기성용", "ki@test.com");

	memberList.add(m1);
	memberList.add(m2);
	memberMap.put("memberList", memberList);
%>

<c:set var="memberList" value="${memberMap.memberList }" />
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		<tr align=center>
			<td>${memberMap.id }</td>
			<td>${memberMap.pwd}</td>
			<td>${memberMap.name }</td>
			<td>${memberMap.email }</td>
		</tr>
		<tr align = "center">
			<td>${memberList[0].id }</td>
			<td>${memberList[0].pwd }</td>
			<td>${memberList[0].name }</td>
			<td>${memberList[0].email }</td>
		</tr>
		<tr align = "center">
			<td>${memberList[1].id }</td>
			<td>${memberList[1].pwd }</td>
			<td>${memberList[1].name }</td>
			<td>${memberList[1].email }</td>
		</tr>


	</table>
</body>
</html>
