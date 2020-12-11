
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginTT")
public class LoginTest2 extends HttpServlet {
   private static final long serialVersionUID = 1L;
      ServletContext context = null;
      List user_list = new ArrayList();
      

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      response.setContentType("text/html;charset=utf-8");
      context = getServletContext();
      PrintWriter out = response.getWriter();
      HttpSession session = request.getSession();
      String user_id = request.getParameter("user_id");
      String user_pw = request.getParameter("user_pw");
      LoginImpl3 loginUser = new LoginImpl3(user_id,user_pw);
      //로그인 임플리언트 객체 만듬 
      if(session.isNew()) {
         session.setAttribute("loginUser", loginUser);
         //세션 설정해줌
         user_list.add(user_id);
         //user_list에 user_id에 추가해줌
         context.setAttribute("user_list", user_list);
         //context에 user_list의 값을 추가해줌 
      }
      out.println("<html><body>");
      out.println("아이디는 "+loginUser.user_id+ "<br>");
      out.println("총 접속자수는 "+LoginImpl3.total_user + "<br><br>");
      out.println("접속 아이디:<br>");
      List list = (ArrayList) context.getAttribute("user_list");
      //리스트값을 넣음
      for(int i=0; i<list.size();i++) {
         out.println(list.get(i) +"<br>");
         
      }
	  out.println("<a href='logout?user_id=" +user_id+"'>로그아웃</a>");
      out.println("</body></html>");
      
   }

}