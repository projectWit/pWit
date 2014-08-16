package myBatisTest;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class DynamicMain {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* init */
		Reader reader = null;
		SqlMapClient sqlMap = null;
		MybatisTable mybatistable = null;
		List<MybatisTable> list = null;
		
		try {
			// sqlMap instance
			reader = Resources.getResourceAsReader("sqlMapConfig.xml");
			sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
			
			/* isNotNull */
			// parameter
			mybatistable = new MybatisTable();
			mybatistable.setName("조용근");
			mybatistable.setAge(27);
			// select
			list = (List<MybatisTable>)sqlMap.queryForList("findMyBatisIsPropertyAvailable", mybatistable);
			// print
			for(MybatisTable item : list) {
				System.out.println("isNotNull : " + item.getName() + "("+ item.getAge() +")");
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("예외 : " + e.getMessage());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// end
			try {
				reader.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				System.out.println("예외 : " + e.getMessage());
			}
		}
		/* isNotNull */
	}
}