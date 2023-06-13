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
 * Servlet implementation class LogIn
 */
@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
		String phoneNumber=request.getParameter("phoneNumber");
		String pasword=request.getParameter("pasword");
		
		if(phoneNumber.equalsIgnoreCase("Admin")) {
			if(pasword.equalsIgnoreCase("Admin123")) {
				 ServletContext context=getServletContext();  
					context.setAttribute("phoneNumber",phoneNumber);
					RequestDispatcher rd1=request.getRequestDispatcher("ImageViewer.jsp");
					rd1.forward(request, response);
			}else {RequestDispatcher rd1;
				request.setAttribute("passswordWrong", pasword);
				  rd1 = request.getRequestDispatcher("loginPage.jsp");
				  rd1.forward(request, response);
			}
		}else {
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root";
		String pswrd="Shiva@9948";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd);
			 String pswrdDb="p";
			 PreparedStatement ps=con.prepareStatement("SELECT * FROM Customerdetails WHERE phoneNumber = ?");
			 ps.setString(1, phoneNumber);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()){
				 pswrdDb=rs.getString("passsword");
			 }
			 int flag=0;
			 RequestDispatcher rd;
			 if(pswrdDb.equals("p")) {
				  request.setAttribute("LoginNotExist", phoneNumber);
				  rd = request.getRequestDispatcher("loginPage.jsp");
				  rd.forward(request, response);
				  flag=1;
			 }
			 if(pasword.equals(pswrdDb)){
				 ServletContext context=getServletContext();  
					context.setAttribute("phoneNumber",phoneNumber);
					  rd = request.getRequestDispatcher("ImageViewer.jsp");
					  rd.forward(request, response);
		
		  }else if(flag==0){
			  request.setAttribute("passswordWrong", pasword);
			  rd = request.getRequestDispatcher("loginPage.jsp");
			  rd.forward(request, response);
			 }
			
		}catch( Exception e) {
			System.out.println(e);
		}}
		doGet(request, response);
	}

}
