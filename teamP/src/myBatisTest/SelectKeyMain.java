package myBatisTest;

import gss.MyBatis;

public class SelectKeyMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyBatis mybatis = new MyBatis("sqlMapConfig.xml");
		MybatisTable input = new MybatisTable();
//		input.setName("전달값");
		Object innerSelect = mybatis.insert("insertSelectKey", input);
		System.out.println("innerSelect : "+innerSelect);
	}

}
