package myBatisTest;

import java.util.List;

import gss.MyBatis;

public class AnyStringMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyBatis mybatis = new MyBatis("sqlMapConfig.xml");
		String strQuery = " where name='이행엽'";
		List<MybatisTable> results = (List<MybatisTable>)mybatis.queryForList("findMyBatisAnyStrings", strQuery);
		
		for(MybatisTable table : results) {
			System.out.println("이름 : "+table.getName()+"("+table.getAge()+")");
		}
	}

}
