package gss;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class MyBatis {
	Reader reader = null;
	SqlMapClient sqlMap = null;
	
	public MyBatis(String sqlMapConfig) {
		try {
			this.reader = Resources.getResourceAsReader(sqlMapConfig);
			this.sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Resources.getResourceAsReader 예외 : "+e.getMessage());
		}
	}
	
	/* 쿼리와 파라미터를 전달받아 결과셋을 리턴 */
	public Object queryForList(String selectId, Object parameter) {
		Object objReturn = null;
		try {
			objReturn = sqlMap.queryForList(selectId, parameter);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Resources.queryForList 예외 : "+e.getMessage());
		}
		return objReturn;
	}
	
	/* insert : 쿼리와 파라미터를 전달받아 insert 실행*/
	public Object insert(String selectId, Object parameter) {
		Object objReturn = null;
		try {
			objReturn = sqlMap.insert(selectId, parameter);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return objReturn;
	}
	
	/* select : 사용자정의 select */
	public Object select(String query) {
		Object objReturn = null;
		try {
			objReturn = sqlMap.queryForList("userDefinedSQL", query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return objReturn;
	}
	
	/* select : 사용자정의 select */
	public Object select(String selectId, String query) {
		Object objReturn = null;
		try {
			objReturn = sqlMap.queryForList(selectId, query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return objReturn;
	}

	
}
