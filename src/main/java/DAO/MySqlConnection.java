package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConnection implements Connector  {

	@Override
	public Connection connectDB() {
        Connection con = null;        
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String URL = "jdbc:mysql://localhost:3306/Employee_crud_db";
            String USER = "root";
            String PASSWORD = "root";
            
            con = DriverManager.getConnection(URL,USER,PASSWORD);
            
            return con;

		} catch (Exception e) {
			  System.out.println("Something Went Wrong");
	          return null;
		}
	}
	
}
