<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*, test.*"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
<meta charset="UTF-8">

<jsp:useBean id="m" class= "test.MemberBean" />
<jsp:setProperty name ="m" property="*" />

<%
	MemberDAO9 memDAO = new MemberDAO9();
	memDAO.addMember(m);
	List memberList = memDAO.listMembers();
	request.setAttribute("memberList", memberList);
%>
</head>
<body>
<jsp:forward page ="memberList.jsp"/>

</body>
</html>