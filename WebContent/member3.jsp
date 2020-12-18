<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="test.*"%>
	
<jsp:useBean id = "m" class = "test.MemberBean" scope = "page" />

<jsp:setProperty name = "m" property = "id" value = '<%=request.getParameter("id") %>' />
<jsp:setProperty name = "m" property = "pwd" value = '<%=request.getParameter("pwd") %>' />
<jsp:setProperty name = "m" property = "name" value = '<%=request.getParameter("name") %>' />
<jsp:setProperty name = "m" property = "email" value = '<%=request.getParameter("email") %>' />

 <%--  <jsp:setProperty> 액션태그
setProperty 액션태그는 useBean 액션태그로 생성한 자바빈 객체의 속성값을 설정하는 태그이다.
내부적으로 자바빈의 setter 메서드를 사용한다.
사용방법은 다음과 같다.
  
name 속성 - <jsp:useBean>에서 자바빈 객체를 생성할때 사용했던 id 값을 사용

property 속성 - 속성하려는 멤버변수명을 입력, 내부적으로 set + 첫글자를 대문자로 바꾼 setter 메서드를 실행한다.
			     즉 위 예시와 같이 name을 지정한 경우 setName() 메서드가 호출,
               property 속성에 *(asterisk) 를 사용하게 되면 요청 파라미터를 검사하여 속성명이 동일한 멤버변수를 찾아 값을 할당
               
value 속성 - 멤버변수에 설정할 값을 지정합니다. 값을 설정할때에는 표현식(틀잇) 나 EL(${}) 를 사용할 수도 있다.
		      만약 value 값을 "" 와 같이 공백으로 두는경우 해당 멤버변수 타입의 기본값이 할당된다.(예 Long은 0L)
		      
param 속성 - 위 예시에는 나와있지 않지만 HTTP 요청 파라미터(쿼리 스트링)를 자바빈 객체에 설정할 때 사용한다.
                    브라우저에서 호출한 요청파라미터 속성을 지정해주면 해당 속성의 값이 빈 객체의 값으로 할당된다.
 --%>

  
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