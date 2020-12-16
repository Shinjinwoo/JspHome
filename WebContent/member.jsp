<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="test.*"%>
<!-- 유틸클래스 전체 임포트   test패키지의 모든 클래스파일 임포트 -->
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	request.setCharacterEncoding("utf-8");
	//한글 인코딩
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");

	MemberBean m = new MemberBean(id, pwd, name, email);
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
		<tr align="center" bgcolor="#99ccff">
			<!-- 테두리 1, 가로  800, 가운데정렬, 배경색 : #FFFF66 -->
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
			<td width="11%">이메일</td>
			<td width="5%">가입일자</td>
		</tr>
		<%
			if (memberList.size() == 0) {
		%>
		<tr align=center>
			<!-- 가운데 정렬 vo에서 가져온 값 출력 -->
			<td colspan="5"><%=id%>
				<p align="center">
					<b><span style="font-size: 9pt;"> 등록된 회원이 없습니다.</span></b>
				</p></td>
		</tr>
		<%
			} else {
				for (int i = 0; i < memberList.size(); i++) {
					MemberBean bean = (MemberBean) memberList.get(i);
		%>
		<tr align="center">
			<td><%=bean.getId()%></td>
			<td><%=bean.getPwd()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getEmail()%></td>
			<td><%=bean.getJoinDate()%></td>
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