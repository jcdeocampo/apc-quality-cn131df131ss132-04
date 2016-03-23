package bean;
import java.sql.*;

import static bean.Provider.*;

public class ConnectionProvider {
	static Connection con=null;
	static{
		try{
			Class.forName(DRIVER);
			con=DriverManager.getConnection(CONNECTION_URL);
			}catch(Exception e){}
	}
	public static Connection getCon(){
		return con;
	}
	public static void closeCon(){
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
