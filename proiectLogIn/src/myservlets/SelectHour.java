package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SelectHour
 */
@WebServlet("/SelectHour")
public class SelectHour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectHour() {
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
		HashMap <String, Boolean> hours = new HashMap<>();
		hours.put("09:00", true);
		hours.put("09:30", true);
		hours.put("10:00", true);
		hours.put("10:30", true);
		hours.put("11:00", true);
		hours.put("11:30", true);
		hours.put("12:00", true);
		hours.put("12:30", true);
		hours.put("13:00", true);
		hours.put("13:30", true);
		hours.put("14:00", true);
		hours.put("14:30", true);
		hours.put("15:00", true);
		hours.put("15:30", true);
		hours.put("16:00", true);
		hours.put("16:30", true);
		
		
		PrintWriter out = response.getWriter();
		String chosenHour = request.getParameter("memoOra");
		String chosenDate = request.getParameter("datap");
		String username = request.getParameter("user");
		
		if(chosenDate == "" || chosenDate == null) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Va rugam sa selectati intai o data!');");
			out.println("location='programari.jsp';");
			out.println("</script>");
		}
		
		try {
			int idpac = 0;
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oftadb","root","");
			Statement stat = conn.createStatement();
			String sql = "Select idpac from utilizatori where username='" + username + "'";
			ResultSet result = stat.executeQuery(sql);
			while(result.next()) {
				idpac=result.getInt("idpac");
			}
			String sql1 = "Select ora from programari where data='" + chosenDate + "'";	
			ResultSet result1 = stat.executeQuery(sql1);
			while(result1.next()) {
				String hour = result1.getString("ora");
				hours.replace(hour, false);
			}
			
			if(hours.get(chosenHour) == false) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Intervalul orar este deja ocupat!');");
				out.println("location='programari.jsp';");
				out.println("</script>");
			}
			else {
				String sql2 = "Insert into programari (idpac,data,ora) values ('" + idpac + "','" + chosenDate + "','" + chosenHour+ "')";
				stat.executeUpdate(sql2);
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Programarea a fost efectuata cu succes!');");
				out.println("location='programari.jsp';");
				out.println("</script>");
			}
			
			conn.close();
		
		} catch(Exception e) {
			System.out.println(e);
		} 
	}
}
