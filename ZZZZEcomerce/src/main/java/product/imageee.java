package product;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class imageee
 */
@MultipartConfig
@WebServlet("/imageee")
public class imageee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public imageee() {
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
	            String url="jdbc:mysql://localhost:3306/Ecommercee";
	     		String usrname="root";
	     		String pswrd="Shiva@9948";
	     		
	     		Part filePart = request.getPart("image");
	     		InputStream inputStream = filePart.getInputStream();
	          
	           
         Connection con=null;
 		try {
 			Class.forName("com.mysql.jdbc.Driver");
 			 con = DriverManager.getConnection(url, usrname, pswrd);
 			PreparedStatement ps = con.prepareStatement("INSERT INTO imagee1 (IMG_DATA) VALUES (?)");
 				ps.setBinaryStream(1, inputStream, inputStream.available());
	            ps.executeUpdate();
	            System.out.println("Executed");
 			
 			 System.out.println("details inserted");
 		}catch( Exception e) {
 			System.out.println(e);
 		}
	        
	    
		
		doGet(request, response);
	}	
}
