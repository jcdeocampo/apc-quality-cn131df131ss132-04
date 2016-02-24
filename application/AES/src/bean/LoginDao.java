package bean;
import java.sql.*;
public class LoginDao {

	public static boolean validate(LoginBean bean) throws SQLException{
		boolean status=false;
		Connection con=ConnectionProvider.getCon();
		try{
			PreparedStatement ps=con.prepareStatement("select * from user where username=? and password=?");
			ps.setString(1,bean.getUsername());
			ps.setString(2,bean.getPassword());
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return status;
	}
	
	public static void closeCon(){
		ConnectionProvider.closeCon();
	}
}
