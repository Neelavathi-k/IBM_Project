import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Servlet_01")
public class Servlet_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Servlet_01() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String d = request.getParameter("data");
		ServletContext context = getServletContext();
		context.setAttribute("mydata", d);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("YOUR DATA IS STORED SUCCESSFULLY <br> YOUR DATA IS " + d);		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
