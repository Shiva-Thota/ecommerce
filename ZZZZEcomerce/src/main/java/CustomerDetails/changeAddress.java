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
 * Servlet implementation class changeAddress
 */
@WebServlet("/changeAddress")
public class changeAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeAddress() {
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
		String Mainaddress=request.getParameter("address");
		ServletContext context=getServletContext(); 
		String phoneNumber=(String) context.getAttribute("phoneNumber");
		
		String address2=null;
		String address3=null;
		String address4=null;
		String address5=null;
		String address6=null;
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root";
		String pswrd="Shiva@9948";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd);
			 
			 PreparedStatement ps=con.prepareStatement("select *from Customerdetails where phoneNumber=?;");
			 ps.setString(1, phoneNumber);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 address2=rs.getString("address2");
				 address3=rs.getString("address3");
				 address4=rs.getString("address4");
				 address5=rs.getString("address5");
				 address6=rs.getString("address6");
			 }
			 System.out.println("Change address");
			 String flag=null;
			 if(address2==null) {
				 flag="Address2";
			 }else if(address3==null) {
				 flag="Address3";
			 }else if(address4==null) {
				 flag="Address4";
			 }else if(address5==null) {
				 flag="Address5";
			 }else if(address6==null) {
				 flag="Address6";
			 }
			 
			 if(flag!=null) {
			 PreparedStatement ps3=con.prepareStatement("update Customerdetails set "+flag+"=? where phoneNumber=?;");
			 ps3.setString(1, Mainaddress);
			 ps3.setString(2, phoneNumber);
			 ps3.execute();
			 
			  RequestDispatcher rd;
			  rd = request.getRequestDispatcher("ImageViewer.jsp");
			  rd.forward(request, response);
			 }else {
				 System.out.println("Address are full");
			 }
		}
		catch( Exception e) {
			System.out.println(e);
		}
		doGet(request, response);
	}

}
