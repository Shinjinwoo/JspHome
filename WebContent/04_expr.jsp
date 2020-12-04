<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%! int global_cnt = 0; %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!String str = "안녕하세요 ! ";
	int a = 5, b = -5;

	public int abs(int n) {
		if (n < 0) {
			n = -n;
		}
		return n;
	}%>

<!DOCTYPE html>
<html>
<head></head>
<body>
	<%=str%><br>
	<%=a%>
	의 절대값 :
	<%=abs(a)%><br>
	<%=b%>
	의 절대값 :
	<%=abs(b)%><br>
	<!--간단한 인삿말 출력하기-->
	<%-- 인사말을 String 변수에 저장한다. --%>
	
	<% String name = "Angel"; %>
	Hello <%= name %><br>
	
	<%
	Calendar data = Calendar.getInstance();
	SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
	SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
	%>
	
	오늘은 <b> <%= today.format(data.getTime()) %> </b> 입니다. <br>
	지금 시각은 <b> <%= now.format(data.getTime()) %> </b> 입니다.
		<%
			int local_cnt = 0;
			int global_cnt = 0;
			out.print("<br> local_cnt : ");
			out.print(++local_cnt);
			out.print("<br> global_cnt : ");
			out.print(++global_cnt);
		%>
		
	<%
	int count = 0;
	out.print("count : ");
	out.println(++count);
	%>
		
	
	
</body>
</html>