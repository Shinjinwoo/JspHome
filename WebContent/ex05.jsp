<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
    response 객체 메소드
    getCharacterEncoding() : 응답할 때 문자 인코딩을 얻어올때
    addCookie(Cookie) : 쿠키를 저장할 때
    sendRedirect(URL) 
-->
<%!
    int age;
%>
<%
    String str = request.getParameter("age");
    age = Integer.parseInt(str);

    if(age >= 19){
        response.sendRedirect("a.jsp?age="+age);
    }else{
        response.sendRedirect("b.jsp?age="+age);
    }
%>
당신은 <%=age %>세 입니다
<a href="input_age.html"></a>
</body>
</html>