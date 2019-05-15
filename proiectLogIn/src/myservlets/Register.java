package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		
		String nume = request.getParameter("nume");
		String prenume = request.getParameter("prenume");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String cnp = request.getParameter("cnp");
		String datan = request.getParameter("datan");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String passwordc = request.getParameter("confirm_password");
		int idpac = 0;
		PrintWriter out = response.getWriter();
		
		if(!password.equals(passwordc)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('The passwords do not match!');");
			out.println("location='regform/index.jsp';");
			out.println("</script>");
		} else {
		
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oftadb","root","");
				Statement stat = conn.createStatement();
				String sql = "Select * from utilizatori where username='" + username + "' and password='" + password + "'";
				ResultSet result = stat.executeQuery(sql);
			
				if(result.next()) {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('This username and password have already been registered!');");
					out.println("location='regform/index.jsp';");
					out.println("</script>");
				} else {
					String sql1 = "Insert into pacienti (nume,prenume,cnp,datan,tel,email) values ('" + nume + "','" + prenume + "','" + cnp + "','" + datan + "','" + tel +  "','" + email + "')";
					stat.executeUpdate(sql1);
					String sql2 = "Select idpac from pacienti where nume='" + nume + "' and prenume='" + prenume + "'";
					ResultSet result2 = stat.executeQuery(sql2);
					while(result2.next()) {
						idpac=result2.getInt("idpac");
					}	
					String sql3 = "Insert into utilizatori (username,password,idpac) values ('" + username + "','" + password + "','" + idpac + "')";
					stat.executeUpdate(sql3);				
					response.sendRedirect("regform/login.jsp");
				}
			
				conn.close();
			
			} catch(Exception e) {
				System.out.println(e);
			}		
		}
	}

}
