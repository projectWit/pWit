package myBatisTest;

import java.util.List;

import gss.MyBatis;

public class DynamicMain2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyBatis mybatis = new MyBatis("sqlMapConfig.xml");
		
		// parameter
		MybatisTable mybatistable = new MybatisTable();
		mybatistable.setName("조용근");
		mybatistable.setAge(27);
		List<MybatisTable> list = (List<MybatisTable>)mybatis.queryForList("findMyBatisIsEqual", mybatistable);
		
		for (MybatisTable item : list) {
			System.out.println("출력 : "+item.getName());
		}
	}

}
