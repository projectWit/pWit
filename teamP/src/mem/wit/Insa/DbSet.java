package mem.wit.Insa;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbSet
{
	public static Connection getConnection(){
		Connection conn = null;
		String url ="jdbc:oracle:thin:@192.168.18.235:1521:XE";
		//String url ="jdbc:oracle:thin:@localhost:1521:XE";
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");		
			conn = DriverManager.getConnection(url, "pwit", "asdf");
			//conn = DriverManager.getConnection(url, "media", "happyday");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
	catch(SQLException e){
		e.printStackTrace();
		}
	return conn;
	}	
}