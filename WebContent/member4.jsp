<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="test.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	/*한글 인코딩 */
%>

<jsp:useBean id = "m" class ="test.MemberBean" scope="page"/>
<jsp:setProperty property="id" name="m" param="id"/>
<jsp:setProperty property="pwd" name="m" param="pwd"/>
<jsp:setProperty property="name" name="m" param="name"/>
<jsp:setProperty property="email" name="m" param="email"/>

<%
	MemberDAO9 memberDAO = new MemberDAO9();
	memberDAO.addMember(m);
	// 회원정보를 테이블에 추가
	List memberList = memberDAO.listMembers();
	// 전체 회원정보를 조회한다.
%>

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
		<%
			if (memberList.size() == 0) { 
				// 사이즈가 0일경우 즉 등록된 회원이 없을 경우
		%>
		<tr align=center>
			<!-- 가운데 정렬 vo에서 가져온 값 출력 -->
			<td colspan="5">
				<p align="center">
					<b><span style="font-size: 9pt;"> 등록된 회원이 없습니다.</span></b>
				</p></td>
		</tr>
		<%
			} else { 
				// 등록된 회원이 존재할 경우 
				for (int i = 0; i < memberList.size(); i++) {
					MemberBean bean = (MemberBean) memberList.get(i);
			//반복문을 수행해 밈버리스트의 사이즈만큼 반복하고 bean에 순차적으로 저장.
		%>
		<tr align="center">
			<td><%=bean.getId()%></td>
			<td><%=bean.getPwd()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getEmail()%></td>
			<td><%=bean.getJoinDate()%></td>
			<!-- bean 객체에서 값을 get 해옴  -->
		</tr>
		<%
			} //for문 끝
			} // if문 끝
		%>
		<tr height="1" bgcolor="#99ccff">
			<td colspan="5"></td>
		</tr>


	</table>
</body>
</html>