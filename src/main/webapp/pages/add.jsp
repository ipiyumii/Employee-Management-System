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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">    
    
    <style>
    	h2 {
     		font-size: 90px;
            font-weight: 720;
            background-image: linear-gradient(to left,#00008B,#1E90FF);
            color: transparent;
            background-clip: text;
            -webkit-background-clip: text;
    	}
    	
    	.form-group {
    		margin-bottom: 20px;
		}
		label {
    		font-weight: bold;
		}
		
		.btn-primary {
    		background-color: #000080;
    		color: #fff;
		}
		.btn-primary:hover {
    		background-color: #0056b3;
		}		
		.error-message {
    		color: #FF0000;
   			font-size: 14px;
		}
		@media (max-width: 576px) {
    		.container {
        		padding: 0 15px;
			}
		}
		.form-control {
    		border-radius: 5px;
		}
		.container mt-5 {
    		margin-bottom: 50px;
		}
    </style>
</head>

<body>
	<div class="container mt-5">
	
	    <h2 class="display-4">ADD EMPLOYEES</h2>
	    <br><br>
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
	        <br>
	        <button type="submit" class="btn btn-primary">Add Employee</button>
	    </form>
	    <br>
	    		<a href="index.jsp" class="btn btn-primary mb-3"><-</a>
	    
	</div>
	
	    

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
	<script>
	    document.addEventListener('DOMContentLoaded', function() {
	        const form = document.querySelector('form');
	
	        form.addEventListener('submit', function(event) {
	            const nameInput = form.querySelector('#name');
	            const nicInput = form.querySelector('#nic');
	            const departmentInput = form.querySelector('#department');
	            const designationInput = form.querySelector('#designation');
	            const dateJoinedInput = form.querySelector('#dateJoined');
	
	            if (nameInput.value.trim() === '' || nicInput.value.trim() === '' || departmentInput.value.trim() === '' || designationInput.value.trim() === '' || dateJoinedInput.value.trim() === '') {
	                event.preventDefault();
	                alert('Please fill in all fields.');
	            }
	        });
	    });
	</script>
	
	
</body>
</html>