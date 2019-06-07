import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Servlet_02")
public class Servlet_02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Servlet_02() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext cont = getServletContext();
		String str = (String)cont.getAttribute("mydata");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("THE GIVEN DATA IS " + str);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
