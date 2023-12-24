package models;

import java.sql.Date;

public class Employee {
	private int id;
    private String name;
    private String nic;
    private String department;
    private String designation;
    private Date joinedDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public Date getJoinedDate() {
        return joinedDate;
    }

    public void setJoinedDate(Date joinedDate) {
        this.joinedDate = joinedDate;
    }

	public Employee(int id, String name, String nic, String dept, String designation, Date joinedDate) {
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.department = dept;
		this.designation = designation;
		this.joinedDate = joinedDate;
		
	}
	public Employee() {
		this.id = 0;
		this.name = "";
		this.nic = "";
		this.department = "";
		this.designation = "";
		this.joinedDate = null ;
}
}
