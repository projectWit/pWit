package myBatisTest;

import java.util.ArrayList;
import java.util.List;

import gss.MyBatis;

public class IteratorMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyBatis mybatis = new MyBatis("sqlMapConfig.xml");
		
		List list = new ArrayList();
		list.add("조용근");
		list.add("슈퍼맨");
		List<MybatisTable> results = (List<MybatisTable>)mybatis.queryForList("findMyBatisDynamicIterator", list);
		
		for (MybatisTable table : results) {
			System.out.println("이름 : "+table.getName()+"("+table.getAge()+")");
		}
	}

}
