<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*"%>

       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%-- 태그라이브 불러옴  --%>
       <c:set var = "contextPath" value="${pageContext.request.contextPath}"/>
       <%-- contextPath 변수 생성 --%>
<%
   request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
<meta charset="UTF-8">
   <title>파일 업로드 창</title>
</head>
<body>
   <form action ="${contextPath}/FileUpload" method="post" enctype ="multipart/form-data">
   <%-- 액션위지는 저걸로 인코딩타입은 
   multipart/form-data=모든 문자를 인코딩하지 않음을 명시함.
   이 방식은 <form> 요소가 파일이나 이미지를 서버로 전송할 때 주로 사용함.  --%>
   파일 1: <input type ="file" name = "file1" ><br>
   파일 2: <input type ="file" name = "file1" ><br>
   파라미터 1: <input type ="text" name = "param1" ><br>
   파라미터 2: <input type ="text" name = "param2" ><br>
   파라미터 3: <input type ="text" name = "param3" ><br>
   <input type ="submit" value ="업로드" >
   
   
   </form>
</body>
</html>