package myBatisTest;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.wit.MyBatis;
import com.wit.member.Member;
import com.wit.myBatis.MemberMapper;

public class TestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String resource = "com/wit/myBatis/myBatisConfig.xml";
		MyBatis myBatis = new MyBatis(resource);
		
		MemberMapper memberMapper = myBatis.getMapper(MemberMapper.class);
		Member member = memberMapper.login("test001", "1111");

		System.out.println("mId : "+member.getmId()+"mPwd : "+member.getmPwd());
		
		myBatis.closeSession();
		
		/*InputStream inputStream;
		SqlSessionFactory sqlSessionFactory;
		SqlSession session = null;
		
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			session = sqlSessionFactory.openSession();
			
			MemberMapper memberMapper = session.getMapper(MemberMapper.class);
			Member member = memberMapper.login("test001", "1111");

			System.out.println("mId : "+member.getmId()+"mPwd : "+member.getmPwd());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.commit();
			session.close();
		}*/
	}

}
