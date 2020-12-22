<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

       <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
       <%
       request.setCharacterEncoding("utf-8");
       %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="file1" value="${param.param1}"/>
<c:set var="file2" value="${param.param2}"/>
<title>이미지 파일 출력</title>
</head>
<body>
파라미터 1 : <c:out value="${file1}"/><br>
파라미터 2 : <c:out value="${file2}"/><br>

<c:if test="${not empty file1 }"><br>
<img src="${contextPath}/download.do?fileName=${file1}" width="300" height="300"/><br>
</c:if>
<br>
<c:if test="${not empty file2 }"><br>
<img src="${contextPath}/download.do?fileName=${file2}" width="300" height="300"/><br>
</c:if>
파일 내려받기 :<br>
<a href="${contextPath }/download.do?fileName=${file1}">파일 내려받기1</a><br>
<a href="${contextPath }/download.do?fileName=${file2}">파일 내려받기2</a>
</body>
</html>