package DAO;

import java.util.List;

import models.Employee;


public interface DAO<T> {
	public boolean insertEmployee(T t);
	public boolean updateEmployee(T t);
	public boolean deleteEmployee(T t);
	public List<T> selectAllEmployees();
	Employee getEmployeeById(int id);

}
