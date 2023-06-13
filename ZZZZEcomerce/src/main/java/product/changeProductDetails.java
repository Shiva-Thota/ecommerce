package product;

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
 * Servlet implementation class changeProductDetails
 */
@WebServlet("/changeProductDetails")
public class changeProductDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeProductDetails() {
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
		
String productId=request.getParameter("productId");

ServletContext context=getServletContext();
String phoneNumber=(String) context.getAttribute("phoneNumber");


		String removeProduct=request.getParameter("remove");
		String Add=request.getParameter("Add");
		String Price=request.getParameter("Price");
	
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root";
		String pswrd="Shiva@9948"; 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd); 
			if(removeProduct!=null){
				
			 PreparedStatement ps2=con.prepareStatement("delete from productDetails where productId=?;");
			 ps2.setString(1, productId);
			 ps2.execute();
			 
			 if(phoneNumber!=null) {
			 if(phoneNumber.equalsIgnoreCase("Admin")) {
				 RequestDispatcher rd1=request.getRequestDispatcher("ImageViewer.jsp");
				rd1.forward(request, response);
			 }else {
				 RequestDispatcher rd = request.getRequestDispatcher("zProductssearcher.jsp");
				  rd.forward(request, response);
			 }
			 }else {
			 RequestDispatcher rd = request.getRequestDispatcher("zProductssearcher.jsp");
			  rd.forward(request, response);
			  }
			}
			if(Add!=null){
				String productqty=request.getParameter("productqty");
				
				 PreparedStatement ps3=con.prepareStatement("update productDetails set noOfProducts=noOfProducts+? where productId=?;");
				 ps3.setString(1, productqty);
				 ps3.setString(2, productId);
				 ps3.execute();
				 
				 RequestDispatcher rd = request.getRequestDispatcher("zProductssearcher.jsp");
				  rd.forward(request, response);
			}
			if(Price!=null){
				String productPrice=request.getParameter("productPrice");
				 PreparedStatement ps3=con.prepareStatement("update productDetails set cost=? where productId=?;");
				 ps3.setString(1, productPrice);
				 ps3.setString(2, productId);
				 ps3.execute();
				 RequestDispatcher rd = request.getRequestDispatcher("zProductssearcher.jsp");
				  rd.forward(request, response);
			}
			
		
		}catch( Exception e) {
			System.out.println(e);
		}
		
		
		
		doGet(request, response);
	}

}
