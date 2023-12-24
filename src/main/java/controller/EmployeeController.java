package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employeeServices.EmployeeServices;

//import services.EmployeeServices;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/Employee", loadOnStartup = 1)
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public EmployeeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String action = request.getServletPath();

        switch (action) {
        case "/list":
            request.getRequestDispatcher("/pages/list.jsp").forward(request, response);
            break;
        case "/add":
            request.getRequestDispatcher("/pages/add.jsp").forward(request, response);
            break;
        case "/edit":
        	request.getRequestDispatcher("/pages/edit.jsp").forward(request, response);
        	break;
        case "/delete":
        	request.getRequestDispatcher("/pages/list.jsp").forward(request, response); //*********************
        	break;
        default:
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            break;
    }

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		 String action = request.getParameter("action");
//	        if (action.equals("new")) {
//	        createEmployee(request, response);
//	        }
		
        String action = request.getServletPath();
        
        switch (action) {
        case "/add":
            createEmployee(request, response);
            break;
        case "/edit":
        	editEmployee(request,response);
        	break;
        case "/delete":
        	deleteEmployee(request,response);
        	break;
        default:
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            break;
    }
	}
	
	 public void createEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException {
	    	String name = request.getParameter("name");
	    	String nic = request.getParameter("nic");
	    	String department = request.getParameter("department");
	    	String designation = request.getParameter("designation");
	        String dateString = request.getParameter("dateJoined");
	        Date dateJoined = Date.valueOf(dateString);
			
			EmployeeServices e_serv = new EmployeeServices();
			boolean result = e_serv.insert(name,nic,department,designation,dateJoined);

		    response.sendRedirect(request.getContextPath() + "/list");
			
		}
	 
	 public void editEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
	        int id = Integer.parseInt(request.getParameter("id"));
	        String name = request.getParameter("name");
	    	String nic = request.getParameter("nic");
	    	String department = request.getParameter("department");
	    	String designation = request.getParameter("designation");
	        String dateString = request.getParameter("dateJoined");
	        Date dateJoined = Date.valueOf(dateString);
	        
			EmployeeServices e_serv = new EmployeeServices();
			boolean result = e_serv.update(id,name,nic,department,designation,dateJoined);
			
	        response.sendRedirect(request.getContextPath() + "/list");

	 }
	 
	 public void deleteEmployee(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
	        int id = Integer.parseInt(request.getParameter("id"));
			EmployeeServices e_serv = new EmployeeServices();
			boolean result = e_serv.delete(id);
			
	        response.sendRedirect(request.getContextPath() + "/list");
	 }

}
