

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/GetAttribute")
public class GetAttribute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GetAttribute() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		ServletContext ctx = getServletContext(); // 전역 스코프
		HttpSession sess = request.getSession(); // 브라우저 스코프

		String ctxMesg = (String)ctx.getAttribute("context");
		String sesMesg = (String)sess.getAttribute("session");
		String reqMesg = (String)request.getAttribute("request");
		
		out.println("context값: " + ctxMesg + "<br>");
		out.println("session값: " + sesMesg + "<br>");
		out.println("request값: " + reqMesg + "<br>");

		
	}


}
