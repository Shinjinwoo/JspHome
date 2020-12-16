<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="test.*"%>
<!-- 유틸클래스 전체 임포트   test패키지의 모든 클래스파일 임포트 -->
<%
	request.setCharacterEncoding("UTF-8");
	/*한글 인코딩 */
%>

<jsp:useBean id="m" class ="test.MemberBean" scope="page"/>
<!--<태그의 속성>

id : JSP페이지에서 자바빈 객체에 접근 할 때 사용하는 이름이다.

class : 패키지 이름을 포함한 자바빈 클래스의 완전한 이름을 입력

scope : 자바빈 객체가 저장될 영역을 지정. page, request, session, application 중 하나를 값으로 갖는다. 기본값은 page 

 -->

<%
	request.setCharacterEncoding("utf-8");
	//한글 인코딩
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	//HTML 회원가입 페이지에서 파라미터를 받아와서 저장.

	m.setId(id);
	m.setPwd(pwd);
	m.setName(name);
	m.setEmail(email);
	// 자바빈 객체에 셋팅.
	
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
			<td colspan="5"><%=id%>
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