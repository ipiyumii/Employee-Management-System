package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Employee;

public class EmployeeDAO implements DAO<Employee>{
	Connection con;
	public EmployeeDAO() {
		con = new MySqlConnection().connectDB();
	}

	@Override
	public boolean insertEmployee(Employee t) {
		try {
			String query = "insert into employees(name,nic,department,designation,joinedDate) values(?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, t.getName());
			stmt.setString(2, t.getNic());
			stmt.setString(3, t.getDepartment());
			stmt.setString(4, t.getDesignation());
			stmt.setDate(5, java.sql.Date.valueOf(t.getJoinedDate().toLocalDate()));
	        int affected_rows = stmt.executeUpdate();
	        if (affected_rows > 0) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("can not execute query: "+e.getMessage());
			return false;
		}
	}

	@Override
	public boolean updateEmployee(Employee t) {
		try {
			String query = "update employees set name=?,nic=?,department=?,designation=?,joinedDate=? where id =?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, t.getName());
			statement.setString(2, t.getNic());
			statement.setString(3, t.getDepartment());
			statement.setString(4, t.getDesignation());
	        statement.setDate(5, java.sql.Date.valueOf(t.getJoinedDate().toLocalDate()));
			statement.setInt(6, t.getId());
			int records_effected = statement.executeUpdate();
			
			if (records_effected > 0) {
				return true;
			}else {
				return false;
			}
			
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean deleteEmployee(Employee t) {
		try {
	        String query = "DELETE FROM employees WHERE id=?";
	        try (PreparedStatement statement = con.prepareStatement(query)) {
	            statement.setInt(1, t.getId());
	            int affectedRows = statement.executeUpdate();
	            return affectedRows > 0;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.println("Cannot execute delete query: " + e.getMessage());
	        return false;
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("An unexpected error occurred during delete: " + e.getMessage());
	        return false;
	    }
	}

	@Override
	public List<Employee> selectAllEmployees() {
		 List<Employee> employees = new ArrayList<>();
		 
		 try {
			  String query = "SELECT * FROM employees";
		      PreparedStatement statement = con.prepareStatement(query);
		      ResultSet resultSet = statement.executeQuery();
		      
		      while (resultSet.next()) {
		            Employee employee = new Employee();
		            employee.setId(resultSet.getInt("id"));
		            employee.setName(resultSet.getString("name"));
		            employee.setNic(resultSet.getString("nic"));
		            employee.setDepartment(resultSet.getString("department"));
		            employee.setDesignation(resultSet.getString("designation"));
		            employee.setJoinedDate(resultSet.getDate("JoinedDate"));
		            employees.add(employee);
		        }
		      
		} catch (Exception e) {
	        System.out.println("Cannot execute selectAll query: " + e.getMessage());
		}
		    return employees;

	}

	@Override
	public Employee getEmployeeById(int id) {
		try {
			String query = "SELECT * FROM employees WHERE id=?";
	        PreparedStatement statement = con.prepareStatement(query);
	        statement.setInt(1, id);
	        ResultSet resultSet = statement.executeQuery();
	        
	        if (resultSet.next()) {
	            Employee employee = new Employee();
	            employee.setId(resultSet.getInt("id"));
	            employee.setName(resultSet.getString("name"));
	            employee.setNic(resultSet.getString("nic"));
	            employee.setDepartment(resultSet.getString("department"));
	            employee.setDesignation(resultSet.getString("designation"));
	            employee.setJoinedDate(resultSet.getDate("JoinedDate"));
	            return employee;
	        }
		} catch (Exception e) {
	        System.out.println("Cannot execute selectById query: " + e.getMessage());
		}
		return null;
	}
}
