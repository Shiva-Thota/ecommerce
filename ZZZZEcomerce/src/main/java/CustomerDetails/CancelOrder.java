package CustomerDetails;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CancelOrder
 */
@WebServlet("/CancelOrder")
public class CancelOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelOrder() {
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
		String productId=request.getParameter("cardId");
		String qty1=request.getParameter("qty");
		System.out.println("ProductId "+productId);
		ServletContext context=getServletContext();
		String phoneNumber=(String) context.getAttribute("phoneNumber");
		
		
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root";
		String pswrd="Shiva@9948";
		try {
			int qty=Integer.parseInt(qty1);
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd);
			 System.out.println("connected");
			 PreparedStatement ps=con.prepareStatement("delete from ordertable where phoneNumber=? and productId=?;");
			 ps.setString(1, phoneNumber);
			 ps.setString(2, productId);
			 ps.execute();
			 PreparedStatement ps1=con.prepareStatement("update productDetails set noOfProducts=noOfProducts+?;");
			 ps1.setInt(1, qty);
			 ps1.execute();
			 
			 ServletContext context1=getServletContext();  
				context1.setAttribute("output","cancelOrder");
				 RequestDispatcher rd = request.getRequestDispatcher("output.jsp");
				  rd.forward(request, response);
			 
		}catch( Exception e) {
			System.out.println(e);
		}
		
		
		doGet(request, response);
	}

}
