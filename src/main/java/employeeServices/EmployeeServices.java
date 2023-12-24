package employeeServices;

import java.sql.Date;
import java.util.List;

import DAO.EmployeeDAO;
import models.Employee;

public class EmployeeServices {
	private Employee employee;
	private EmployeeDAO employeeDAO;
	
	public EmployeeServices() {
		employee = new Employee();
		employeeDAO = new EmployeeDAO();
	}
	
	public boolean insert(String name, String nic, String department, String designation, Date dateJoined) {
		employee.setName(name);
		employee.setNic(nic);
		employee.setDepartment(department);
		employee.setDesignation(designation);
		employee.setJoinedDate(dateJoined);
		
		return employeeDAO.insertEmployee(employee);
	}
	
	public boolean update(int id,String name, String nic, String department, String designation, Date dateJoined ) {
		employee.setId(id);
		employee.setName(name);
		employee.setNic(nic);
		employee.setDepartment(department);
		employee.setDesignation(designation);
		employee.setJoinedDate(dateJoined);
		
		return employeeDAO.updateEmployee(employee);
	}
	
	public boolean delete(int id) {
		employee.setId(id);
		return employeeDAO.deleteEmployee(employee);
	}
	
	public Employee selectById(int id) {
		employee.setId(id);
		return employeeDAO.getEmployeeById(id);
	}
	
	public List<Employee> selectAll(){
		return employeeDAO.selectAllEmployees();
	}
}
