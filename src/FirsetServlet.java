import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/first")
public class FirsetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse resp)
		throws ServletException,IOException {
		
		resp.setContentType("text/html");
		
		PrintWriter out=resp.getWriter();
		resp.sendRedirect("second"); 
		//다른 서블릿으로 second로 재요청한다.

	}
}
