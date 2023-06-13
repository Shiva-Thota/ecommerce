package product;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class carousel
 */
@MultipartConfig
@WebServlet("/carousel")
public class carousel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public carousel() {
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
		
		String sellerId=request.getParameter("sellerId");
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/Ecommercee";
		String usrname="root";
		String pswrd="Shiva@9948";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, usrname, pswrd);
			 System.out.println("connected");
			 
			 InputStream inputStream1 = file1.getInputStream();
			 InputStream inputStream2 = file2.getInputStream();
			 InputStream inputStream3 = file3.getInputStream();
			 PreparedStatement ps=con.prepareStatement(" insert into carousel(image1,image2,image3,sellerId) values(?,?,?,?);");
							 ps.setBinaryStream(1, inputStream1, inputStream1.available());
							 ps.setBinaryStream(2, inputStream2, inputStream2.available());
							 ps.setBinaryStream(3, inputStream3, inputStream3.available());
							 ps.setString(4, sellerId);
							 ps.execute();
			 
			 
		}catch( Exception e) {
			System.out.println(e); 
		}
		
		
		doGet(request, response);
	}

}
