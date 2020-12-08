<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<h3>관리자로 로그인 성공</h3>
	<!-- 관리자로 로그인 성공시 이동하는 JSP  -->
	<%=URLDecoder.decode(request.getParameter("userName"), "UTF-8")%>
	<!--반대되는 개념으로 URLDecoder 클래스는 URLEncoder로 인코딩된 결과를 디코딩하는 클래스
             변환규칙은 URLEncoder 클래스의 역으로 텍스트화 -->
	<%=request.getParameter("userID")%>님 환영합니다 .
	<!--getParameter로 userID를 불러옴 -->
</body>
</html>