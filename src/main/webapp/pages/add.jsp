<%@ page import="models.Employee" %>
<%@ page import="DAO.EmployeeDAO" %>
<%@ page import="DAO.DAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add employee</title>
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css">
	
</head>
<body>
	<div class="container mt-5">
	    <h2>Add Employee</h2>
	    <form action="add" method="post">
	        <div class="form-group">
	            <label for="name">Name:</label>
	            <input type="text" class="form-control" id="name" name="name" required>
	        </div>
	        <div class="form-group">
	            <label for="nic">NIC:</label>
	            <input type="text" class="form-control" id="nic" name="nic" required>
	        </div>
	         <div class="form-group">
	            <label for="department">Department:</label>
	            <input type="text" class="form-control" id="department" name="department" required>
	        </div>
	        <div class="form-group">
	            <label for="designation">Designation:</label>
	            <input type="text" class="form-control" id="designation" name="designation" required>
	        </div>
	        <div class="form-group">
	            <label for="dateJoined">Date Joined:</label>
	            <input type="date" class="form-control" id="dateJoined" name="dateJoined" required>
	        </div>
	        <button type="submit" class="btn btn-primary">Add Employee</button>
	    </form>
	</div>

	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
</body>
</html>