package CustomerDetails;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddCustomerdetails
 */
@WebServlet("/AddCustomerdetails")
public class AddCustomerdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomerdetails() {
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
		String namee=request.getParameter("name");
		String phoneNumber=request.getParameter("phoneNumber");
		String pasword=request.getParameter("pasword");
		String address=request.getParameter("address");
		String gender=request.getParameter("gender");
		System.out.println("DETAIls Entered");
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root";
		String pswrd="Shiva@9948";
		System.out.println(" phone "+namee+"        "+phoneNumber);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd);
			 System.out.println("connected");
			 PreparedStatement ps=con.prepareStatement(" insert into Customerdetails(phoneNumber,namee,gender,Address,passsword) values(?,?,?,?,?);");
			 ps.setString(1, phoneNumber);
			 ps.setString(2, namee);
			 ps.setString(3, gender);
			 ps.setString(4, address);
			 ps.setString(5, pasword);
			 ps.execute();
			 
			 	RequestDispatcher rd;
				rd=request.getRequestDispatcher("loginPage.jsp");
				rd.forward(request, response);
			 
		}catch( Exception e) {
			System.out.println(e);
		}
		
		doGet(request, response);
	}

}
