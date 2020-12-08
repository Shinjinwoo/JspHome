
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member2")
public class MemberServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberServlet2() {
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		MemberDAO4 dao= new MemberDAO4();
		PrintWriter out =response.getWriter();
		String command=request.getParameter("command");
		if(command != null && command.equals("addMember")) {
			String _id = request.getParameter("id");
			String _pwd = request.getParameter("pwd");
			String _name = request.getParameter("name");
			String _email = request.getParameter("email");
			
			MemberVO vo = new MemberVO();
			vo.setId(_id);
			vo.setPwd(_pwd);
			vo.setName(_name);
			vo.setEmail(_email);
			dao.addMember(vo);
		////command 값이 delMember인 경우 ID를 가져와 SQL문으로 전달해서 삭제합니다.
		}else if(command!= null && command.equals("delMember")) {
			String id = request.getParameter("id");
			dao.delMember(id);
		}
		////다시 조회해줌.
		List list = dao.listMembers();
		out.print("<html><body>");
		out.print("<table border=1><tr align='center' "+ "bgcolor='lightgreen'>");
		out.print("<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td>"
				+ "<td>가입일</td><td>삭제</td></tr>");
		for(int i=0;i<list.size();i++) {
			
			MemberVO memberVO=(MemberVO) list.get(i);
			String id=memberVO.getId();
			//아이디 갖고옴
			String pwd = memberVO.getPwd();
			//비밀번호 갖고옴
			String name=memberVO.getName();
			//이름 갖고옴
			String email=memberVO.getEmail();
			//메일 갖고옴
			Date joinDate = memberVO.getJoinDate();
			//날짜 갖고옴
			out.print("<tr><td>" + id + "</td><td>" + pwd + "</td><td>" + name + "</td><td>" + email + "</td><td>"
		               + joinDate + "</td><td>" + "<a href='member2?command=delMember&id=" + id
		               ////삭제를 클릭하면 command 값과 회원 ID를 서블릿으로 전송합니다.
		               + "'> 삭제 </a></td><tr>");
		}
		out.print("</table></body></html>");
		out.print("<a href='memberForm.html'>새 회원 등록하기</a>");
	}

}


