package myservlets;

import java.time.*;
import java.util.Date;
import java.text.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SelectDate
 */
@WebServlet("/SelectDate")
public class SelectDate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectDate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String chosenDate = request.getParameter("dataprog");
		LocalDate parsedDate = LocalDate.parse(chosenDate);
		LocalDate currentDate = LocalDate.now();
		if(parsedDate.isBefore(currentDate)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Va rugam sa selectati o data valida!');");
			out.println("location='programari.jsp';");
			out.println("</script>");
		}
		else {
			 HttpSession session = request.getSession();
			 session.setAttribute("chosenDate", parsedDate.toString());
			 response.sendRedirect("programari.jsp");
		}
	}

}
