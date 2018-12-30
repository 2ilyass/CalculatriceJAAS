package ma.ensa.secu;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.security.auth.UserPrincipal;

import src.Calculate;


@WebServlet(name="ilyass" ,urlPatterns="*.html")
public class CalculeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@EJB(name = "bean1")
	Calculate calculate;
	
	
	private String operation;
	private double nb1;
	private double nb2;
	
	private double result ;	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = request.getServletPath();
		
					if(path.equals("/index.html"))
					{	

						request.getRequestDispatcher("index.jsp").forward(request, response);
						
					}else if(path.equals("/result.html")){
						
						request.getRequestDispatcher("result.jsp").forward(request, response);
						
					}else if (path.equals("/login.html"))
					{
						
						
						request.getRequestDispatcher("auth/login.jsp").forward(request, response);
			
					}else if (path.equals("/logout.html"))
					{
						request.logout();
						
						
						
						request.getRequestDispatcher("auth/login.jsp").forward(request, response);

					}
		
	}	
					
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

 
        String path = request.getServletPath();
		
	   	 if (path.equals("/calcule.html"))
	   		{	
   			
	   		operation = request.getParameter("operation");
		    String a = request.getParameter("nb1");
		    String b = request.getParameter("nb2");
		    nb1 = Integer.parseInt(a);
	        nb2 = Integer.parseInt(b);

	        if(operation.equalsIgnoreCase("plus"))
	            result = calculate.add(nb1, nb2);
	         else if(operation.equalsIgnoreCase("sous"))
	            result = calculate.sub(nb1,nb2);
	         else 
	        	 result=0;

   			
	        request.setAttribute("result", result);
	        request.getRequestDispatcher("result.jsp").forward(request,response);
   		 
	   		}else {
			
			String msg=" there is somrthing wrong try again";
			request.setAttribute("msg",msg);
			
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}

}
	
}
