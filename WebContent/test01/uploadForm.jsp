<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<%
	request.setCharacterEncoding("utf-8");
%>

<c:set var = "contextPath" value = "${pageContext.request.contextPath }" />

<!DOCTYPE html >

<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
	<form action="/upload.do" method="post" enctype="multipart/form-data">
		파일 1 : <input type="file" name="file1"><br>
		파일 2 : <input type="file" name="file1"><br>
		매개변수 1 : <input type="text" name="param1" > <br>
		매개변수 2 : <input type="text" name="param2" > <br>
		매개변수 3 : <input type="text" name="param3" > <br>
		<input type ="submit" value = "업로드" >
	
	</form>

</body>
</html>