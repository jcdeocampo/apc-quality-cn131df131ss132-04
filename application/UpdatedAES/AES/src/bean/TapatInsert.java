package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import static bean.Provider.*;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TapatInsert {
    public static void main(String[] args) throws Exception {
    	
    	InetAddress ip = null;
    	StringBuilder sb = new StringBuilder();
    	Date myDate = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String myDateString = sdf.format(myDate);
    	
    	try {
			
    		ip = InetAddress.getLocalHost();
//    		System.out.println("Current IP address : " + ip.getHostAddress());
    		
    		NetworkInterface network = NetworkInterface.getByInetAddress(ip);
    		
    		//byte[] mac = 
    		
    		byte[] mac = network.getHardwareAddress();
    			
//    		System.out.print("Current MAC address : ");
    			
    		for (int i = 0; i < mac.length; i++) {
    			sb.append(String.format("%02X%s", mac[i], (i < mac.length - 1) ? "-" : ""));		
    		}
//   		System.out.println(sb.toString());
    			
    	} catch (UnknownHostException e) {
    		
    		e.printStackTrace();
    		
    	} catch (SocketException e){
    			
    		e.printStackTrace();
    			
    	}
    	
        Class.forName(DRIVER);
        Connection conn = DriverManager.getConnection(CONNECTION_URL);
        PreparedStatement prep = conn.prepareStatement(
            "insert into tapat values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
        
        prep.setString(1, "Vice Mayor");
        prep.setString(2, "Evelyn Martinez");
        prep.setString(3, "20");
        prep.setString(4, "Precinct");
        prep.setString(5, "0026B");
        prep.setString(6, "Cabia-an");
        prep.setString(7, "Candoni");
        prep.setString(8, "Sixth District");
        prep.setString(9, "Negros Occidental");
        prep.setString(10, "XVIII");
        prep.setString(11, ip.toString());
        prep.setString(12, sb.toString());
        prep.setString(13, "76.7693121300002");
        prep.setString(14, "69.8351232199939");
        prep.setString(15, myDateString);
        prep.addBatch();

        conn.setAutoCommit(false);
        prep.executeBatch();
        conn.setAutoCommit(true);
        conn.close();
    }
  }