package myBatisTest;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("sqlMapConfig.xml");
			SqlMapClient sqlmapclient = SqlMapClientBuilder.buildSqlMapClient(reader);
			List<MybatisTable> mybatistable = (List<MybatisTable>)sqlmapclient.queryForList("findMybatis", "조용근");
			for (MybatisTable mybatis : mybatistable) {
				System.out.println(mybatis.getName() + "("+mybatis.getAge()+")");
			}
			
			HashMap map = null;
			map = new HashMap();
			map.put("name", "강성조");
			map.put("age", 27);
			mybatistable = (List<MybatisTable>)sqlmapclient.queryForList("findMybatisMap", map);
			for (MybatisTable mybatismap : mybatistable) {
				System.out.println("mybatismap : "+mybatismap.getName() + "("+mybatismap.getAge()+")");
			}
			
			MybatisTable param = new MybatisTable();
			param.setName("이행엽");
			param.setAge(31);
			mybatistable = (List<MybatisTable>)sqlmapclient.queryForList("findMybatisBean", param);
			for (MybatisTable mybatisbean : mybatistable) {
				System.out.println("mybatisbean : "+mybatisbean.getName() + "("+mybatisbean.getAge()+")");
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				reader.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
