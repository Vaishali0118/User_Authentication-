package example.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import example.model.User;

public class UserDao {
	
	Connection con;	
	//Connection Established
	public Connection getCon() {
		String Driverclassname= "com.mysql.cj.jdbc.Driver";
		String DriverUrl= "jdbc:mysql://localhost:3306/advance_java";
		String Username= "root";
		String password= "VAPr@1234";
		try {
			Class.forName(Driverclassname);
			con = DriverManager.getConnection(DriverUrl,Username,password);				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
		
	//Insert
	public int saveUser(User u) {
	
		String sql="insert into user(firstname,lastname,mobileno,email,password) values(?,?,?,?,?)";
		con=getCon();
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getFirstname());
			ps.setString(2, u.getLastname());
			ps.setLong(3, u.getMobileno());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getPassword());
			i=ps.executeUpdate();
			con.close();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	//Update
		public int updateUser(User u) {
			int i=0;
			String sql="update user set password=? where email=?";
			con=getCon();
			try {
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, u.getPassword());
				ps.setString(2, u.getEmail());
				ps.executeUpdate();
				con.close();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return i;
		}
}
