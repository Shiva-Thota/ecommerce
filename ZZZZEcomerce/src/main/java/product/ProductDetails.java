package product;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class ProductDetails
 */
@MultipartConfig
@WebServlet("/ProductDetails")
public class ProductDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetails() {
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
		Part file1=request.getPart("img1");
		Part file2=request.getPart("img2");
		Part file3=request.getPart("img3");
		
		String namee=request.getParameter("name");
		String cost=request.getParameter("cost");
		String type=request.getParameter("featured");
		String noOfproducts=request.getParameter("quantity");
		String brand=request.getParameter("brand");
		String additionalInformation=request.getParameter("additional_info");
		String offer=request.getParameter("offer");
		
		
		int sellerId=0;
		ServletContext context=getServletContext();
		String SellerphoneNumber=(String) context.getAttribute("SellerphoneNumber");
		
	 	
		String category=request.getParameter("category");
		
		
		String red=request.getParameter("red");
		String blue=request.getParameter("blue");
		String white=request.getParameter("white");
		String black=request.getParameter("black");
		String green=request.getParameter("green");
		String orange=request.getParameter("orange");
		String pink=request.getParameter("pink");
		String yellow=request.getParameter("yellow");
		String color=red+"--"+blue+"--"+white+"--"+black+"--"+green+"--"+orange+"--"+pink+"--"+yellow;

		
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root";
		String pswrd="Shiva@9948";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd);
			
			 PreparedStatement ps1=con.prepareStatement("Select * from sellerDetails where phoneNumber=?;");
			 ps1.setString(1 , SellerphoneNumber);
			 ResultSet rs1=ps1.executeQuery();
			 while(rs1.next()) {
				 sellerId=rs1.getInt("sellerId");
			 }
			 String sellersid=String.valueOf(sellerId);
			 
			 InputStream inputStream1 = file1.getInputStream();
			 InputStream inputStream2 = file2.getInputStream();
			 InputStream inputStream3 = file3.getInputStream();
			PreparedStatement ps=con.prepareStatement(" insert into productDetails(Namee,"
		+"colours,cost,typee,noOfProducts,category,brand,additionalInformation,offer,sellerId,image1,image2,image3) values(?,?,?,?,?,?,?,?,?,?,?,?,?);");
			 ps.setString(1, namee);
			 ps.setString(2, color);
			 ps.setString(3, cost);
			 ps.setString(4, type);
			 ps.setString(5, noOfproducts);
			 ps.setString(6, category);
			 ps.setString(7, brand);
			 ps.setString(8, additionalInformation);
			 ps.setString(9, offer);
			 ps.setString(10, sellersid);
			 ps.setBinaryStream(11, inputStream1, inputStream1.available());
			 ps.setBinaryStream(12, inputStream2, inputStream2.available());
			 ps.setBinaryStream(13, inputStream3, inputStream3.available());
			 ps.execute();
			 
			 
			 ServletContext context1=getServletContext();  
				context1.setAttribute("output","productEntry");
				 RequestDispatcher rd = request.getRequestDispatcher("output.jsp");
				  rd.forward(request, response);
		}catch( Exception e) {
			System.out.println(e); 
		}
		doGet(request, response);
	}
			
}
