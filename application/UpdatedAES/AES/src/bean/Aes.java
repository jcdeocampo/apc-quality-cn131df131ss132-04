package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import static bean.Provider.*;

public class Aes {
    public static void main(String[] args) throws Exception {
        Class.forName(DRIVER);
        Connection conn = DriverManager.getConnection(CONNECTION_URL);
        Statement stat = conn.createStatement();
        stat.executeUpdate("drop table if exists user;");
        stat.executeUpdate("create table user (username, password, firstName, lastName, designation, email);");
        PreparedStatement prep = conn.prepareStatement(
            "insert into user values (?, ?, ?, ?, ?, ?);");

        prep.setString(1, "user1");
        prep.setString(2, "user1");
        prep.setString(3, "Franz");
        prep.setString(4, "Catuncan");
        prep.setString(5, "BEI Chairman");
        prep.setString(6, "fccatuncan@gmail.com");
        prep.addBatch();
        prep.setString(1, "jvbarriga");
        prep.setString(2, "jvbarriga");
        prep.setString(3, "Jacques Vincent");
        prep.setString(4, "Barriga");
        prep.setString(5, "BOC Chairman");
        prep.setString(6, "RedRepublic01@yahoo.com");
        prep.addBatch();
        prep.setString(1, "dcabral");
        prep.setString(2, "dcabral");
        prep.setString(3, "Daren");
        prep.setString(4, "Cabral");
        prep.setString(5, "BEI Member");
        prep.setString(6, "franzcatuncan@yahoo.com");
        prep.addBatch();

        conn.setAutoCommit(false);
        prep.executeBatch();
        conn.setAutoCommit(true);

        ResultSet rs = stat.executeQuery("select * from user;");
        while (rs.next()) {
//            System.out.println("username = " + rs.getString("username"));
        }
        rs.close();
        conn.close();
    }
  }