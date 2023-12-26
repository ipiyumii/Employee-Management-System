<%@page import="employeeServices.EmployeeServices"%>
<%@ page import="java.util.List" %>
<%@ page import="models.Employee" %>
<%@ page import="DAO.EmployeeDAO" %>
<%@ page import="DAO.DAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
    
    <style>
    	h2 {
     		 font-size: 90px;
            font-weight: 720;
            background-image: linear-gradient(to left,black,#191970);
            color: transparent;
            background-clip: text;
            -webkit-background-clip: text;
    	}
    	
    	.btn-primary {
    		background-color: Black;
    		color: #fff;
		} 	
    </style>
</head>
<body>
	<div class="container mt-5">
	    <h2 class="display-4">EMPLOYEE LIST</h2>
	    <br><br><br>
	    <table id="employeeTable" class="table table-bordered">
	        <thead>
	            <tr>
	                <th>ID</th>
	                <th>Name</th>
	                <th>NIC</th>
	                <th>Designation</th>
	                <th>Department</th>
	                <th>Date Joined</th>
	                <th>Actions</th>
	            </tr>
	        </thead>
           
	        <tbody>
	         <% EmployeeServices employeeServices = new EmployeeServices();
	         
                   List<Employee> employees = employeeServices.selectAll();
                   for (Employee employee : employees){
                %>
                	<tr>
                		<td><%= employee.getId() %></td>
                		<td><%= employee.getName() %></td>
                		<td><%= employee.getNic() %></td>
                		<td><%= employee.getDepartment() %></td>
                		<td><%= employee.getDesignation() %></td>
                		<td><%= employee.getJoinedDate() %></td>
                		<td>
	                        <a href="edit?id=<%= employee.getId() %>" class="btn btn-warning">Edit</a>
	                        <a href="delete?id=<%= employee.getId() %>" class="btn btn-danger">Delete</a>
	                    </td>
                	</tr> 
                
                <% } %>
	        </tbody> 
	    </table>
	    	<a href="index.jsp" class="btn btn-primary mb-3">Back</a>
	    
	</div>
	
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
	
	<script>
	    $(document).ready(function() {
	        $('#employeeTable').DataTable();
	    });
	</script> 
</body>
</html>