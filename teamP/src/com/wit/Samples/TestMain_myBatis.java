package com.wit.Samples;

import com.wit.MyBatis;
import com.wit.member.Member;
import com.wit.myBatis.MemberMapper;

public class TestMain_myBatis {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String resource = "com/wit/myBatis/myBatisConfig.xml";
		
		// 세션 생성
		MyBatis myBatis = new MyBatis(resource);	
		
		// 맵퍼에서 필요한 쿼리 실행
		MemberMapper memberMapper = myBatis.getMapper(MemberMapper.class);
		Member member = memberMapper.login("test001", "1111");
		System.out.println("mId : "+member.getmId()+", mPwd : "+member.getmPwd());
		
		// 커밋, 세션 종료
		myBatis.closeSession();
		
	}

}
