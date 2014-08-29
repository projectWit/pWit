package mem.wit.MM;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class DbClose{	
	public static void close(PreparedStatement pstmt, Connection conn)
	{	
			 try
			 {
			      pstmt.close();
			      conn.close();
			  }
			 catch(SQLException e)
			 {   
			   e.printStackTrace();
			  }     			
	}
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn)
	{	
			 try
			 {
				 rs.close();
			     pstmt.close();
			     conn.close();
			  }
			 catch(SQLException e)
			 {   
			   e.printStackTrace();
			  }     			
	}
}

