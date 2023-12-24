package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
			String query = "insert into employees(name,nic,department,designation,dateJoined) values(?,?,?,?,?)";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, t.getName());
			statement.setString(2, t.getNic());
			statement.setString(3, t.getDepartment());
			statement.setString(4, t.getDesignation());
	        statement.setDate(5, java.sql.Date.valueOf(t.getJoinedDate().toLocalDate()));
	        int effectedRows = statement.executeUpdate();
	        if (effectedRows > 0) {
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
			String query = "update employees set name=?,nic=?,department=?,designation=?,dateJoined=? where id =?";
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
			System.out.println("can not update employee");
			return false;
		}
	}

	@Override
	public boolean deleteEmployee(Employee t) {
		try {
	        String query = "DELETE FROM employees WHERE id=?";
	        PreparedStatement statement = con.prepareStatement(query);
	        statement.setInt(1, t.getId());
	        int affectedRows = statement.executeUpdate();
	        return affectedRows > 0;
	        
		} catch (Exception e) {
			 System.out.println("Cannot execute delete query: " + e.getMessage());
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
		            employee.setJoinedDate(resultSet.getDate("dateJoined"));
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
	            employee.setJoinedDate(resultSet.getDate("dateJoined"));
	            return employee;
	        }
		} catch (Exception e) {
	        System.out.println("Cannot execute selectById query: " + e.getMessage());
		}
		return null;
	}
}
