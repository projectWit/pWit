package com.wit;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ibatis.common.resources.Resources;

public class MyBatis {

	InputStream inputStream = null;
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession session = null;
	
	public MyBatis(String resource) {
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			session = sqlSessionFactory.openSession();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public SqlSession getSession() {
		return session;
	}
	
	public void closeSession() {
		session.commit();
		session.close();
	}
	
	public <Object> Object getMapper(Class<Object> classname) {
		return session.getMapper(classname);
	}
	
	/* select : 사용자정의 select */
	/*public Object select(String selectId, String query) {
		Object objReturn = null;
		try {
			objReturn = sqlMap.queryForList(selectId, query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return objReturn;
	}*/

	
}
