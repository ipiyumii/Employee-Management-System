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
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css">

</head>
<body>
	<div class="container mt-5">
	    <h2>Employee List</h2>
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
	            <c:forEach var="employee" items="${employees}">
	                <tr>
	                    <td>${employee.id}</td>
	                    <td>${employee.name}</td>
	                    <td>${employee.nic}</td>
	                    <td>${employee.designation}</td>
	                    <td>${employee.department}</td>
	                    <td>${employee.dateJoined}</td>
	                    <td>
	                        <a href="edit?id=${employee.id}" class="btn btn-warning">Edit</a>
	                        <a href="delete?id=${employee.id}" class="btn btn-danger">Delete</a>
	                    </td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
	</div>
	
	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap4.min.js"></script>
	
	<script>
    $(document).ready(function() {
        $('#employeeTable').DataTable();
    });
</script>
</body>
</html>