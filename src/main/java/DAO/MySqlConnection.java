package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConnection implements Connector {

    @Override
    public Connection connectDB() {
        Connection con = null;        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/Employee_crud_db";
            con = DriverManager.getConnection(url, "root", "root");
            if (con == null) {
				throw new Exception("con is null");
			}
            return con;
        } catch (Exception ex) {
            System.out.println(ex);
            return null;
        } 
    }
}