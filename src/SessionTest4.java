

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login2")
public class SessionTest4 extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public SessionTest4() {
      super();
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      doHandle(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      doHandle(request, response);
   }

   private void doHandle(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      // 한글 인코딩
      response.setContentType("text/html;charset=utf-8");
      // 응답할 데이터 종류 설정
      PrintWriter out = response.getWriter();
      // getWriter()를 이용해 출력 스트림 PrintWriter 객체를 받아옴
      HttpSession session = request.getSession();
      String user_id = request.getParameter("user_id");
      String user_pw = request.getParameter("user_pw");
      if (session.isNew()) {
    	 //세션을 새로 생성
         if (user_id != null) {
        	// user_id값이 널값이 아닐때
            session.setAttribute("user_id", user_id);
            // user_id를 키로,user_id를 벨류로 하는 session.setAttribute를 통해
            // 세션에 user_id값을 입력
            String url=response.encodeURL("login");
            out.println("<a href='login'>로그인 상태 확인</a>");
         } else {
        	//user_id가 널값일 경우 실행
            out.print("<a href='login2.html'>다시 로그인 하세요!!</a>");
            session.invalidate();
         }
      } else {
    	 //새로운 새션이 아니고 기존에 생성된 세션이 있을경우 실행 
         user_id = (String) session.getAttribute("user_id");
         //session.getAttribute를 통해 기존에 세션에 입력된 user_id 값을 가져옴
         if (user_id != null && user_id.length() != 0) {
        	// user_id 값을 성공적으로 불러와 널값이 아니고 user_id의 길이가 0이 아닐대 실행
            out.print("안녕하세요" + user_id + "님!!!");
            // 정상적ㅇ니 출력문
         } else {
        	//불러온 user_id가 널값일 경우 실행
            out.print("<a href='login2.html'>다시 로그인 하세요!!</a>");
            session.invalidate();
         }
      }
   }
}