package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogIn
 */
@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static HttpSession session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogIn() {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oftadb","root","");
				Statement stat = conn.createStatement();
				String sql = "Select * from utilizatori where username='" + username + "' and password='" + password + "'";
				ResultSet result = stat.executeQuery(sql);
			
				if(result.next()) {
					session = request.getSession();
					session.setAttribute("username",username);
					session.setAttribute("password",password);
					session.setAttribute("loggedIn",true);
					response.sendRedirect("index.jsp");
				} else {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('User or password incorrect');");
					out.println("location='regform/login.jsp';");
					out.println("</script>");
				}
			
				conn.close();
			
			} catch(Exception e) {
				System.out.println(e);
		}		
	}
}

