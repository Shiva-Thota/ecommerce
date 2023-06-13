package Seller;

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
 * Servlet implementation class addseller
 */
@WebServlet("/addseller")
public class addseller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addseller() {
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
		String phoneNumber=request.getParameter("phoneNumber");
		String pasword=request.getParameter("pasword");
		String address=request.getParameter("address");
		String companyName=request.getParameter("companyName");
		String additionalDetails=request.getParameter("additionalDetails");
		String GSTNo=request.getParameter("GSTNo");
		System.out.println("DETAIls Entered");
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root";
		String pswrd="Shiva@9948";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd);
			 System.out.println("connected");
			 PreparedStatement ps=con.prepareStatement("insert into sellerDetails(phoneNumber,GSTNo,companyName,Address,passsword,additionalDetails) values(?,?,?,?,?,?);");
			 ps.setString(1, phoneNumber);
			 ps.setString(2, GSTNo);
			 ps.setString(3, companyName);
			 ps.setString(4, address);
			 ps.setString(5, pasword);
			 ps.setString(6, additionalDetails);
			 ps.execute();
			
			 	RequestDispatcher rd;
				rd=request.getRequestDispatcher("SellerLogIn.jsp");
				rd.forward(request, response);
			 
		}catch( Exception e) {
			System.out.println(e);
		}
		System.out.println("InSErted");
		doGet(request, response);
	}

}
