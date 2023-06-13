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
 * Servlet implementation class RemoveFromCart
 */
@WebServlet("/RemoveFromCart")
public class RemoveFromCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveFromCart() {
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
		ServletContext context=getServletContext();
		String phoneNumber=(String) context.getAttribute("phoneNumber");
	
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root"; 
		String pswrd="Shiva@9948";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd);
			 System.out.println("connected");
			 PreparedStatement ps=con.prepareStatement("delete from AddCart where phoneNumber=? and productId=?;");
			 ps.setString(1, phoneNumber);
			 ps.setString(2, productId);
			 ps.execute();
			 
			 ServletContext context1=getServletContext();  
				context1.setAttribute("output","removecart");
				 RequestDispatcher rd = request.getRequestDispatcher("viewOrder.jsp");
				  rd.forward(request, response);
			 
		}catch( Exception e) {
			System.out.println(e);
		}
		doGet(request, response);
	}

}
