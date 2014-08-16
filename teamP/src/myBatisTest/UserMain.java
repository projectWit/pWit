package myBatisTest;

import java.util.ArrayList;

import gss.MyBatis;

public class UserMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyBatis mybatis = new MyBatis("sqlMapConfig.xml");
		String query = "SELECT M.mCode AS mCode, M.mName AS mName, C.mName AS mJob FROM MyBatisMember M INNER JOIN MyBatisCode C ON M.mJob = C.mCode";
		ArrayList<UserTable> alist = (ArrayList<UserTable>)mybatis.select(query);
		
		for (UserTable table : alist) {
			System.out.println(table.getmCode()+"."+table.getmName()+"("+table.getmJob()+")");
		}
	}

}
