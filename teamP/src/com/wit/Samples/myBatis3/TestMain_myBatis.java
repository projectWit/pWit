package com.wit.Samples.myBatis3;

import com.wit.MyBatis3;
import com.wit.member.Member;
import com.wit.member.Power;
import com.wit.myBatis.MemberMapper;

public class TestMain_myBatis {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String resource = "com/wit/myBatis/myBatisConfig.xml";
		
		// 세션 생성
		MyBatis3 myBatis = new MyBatis3(resource);	
		
		// 맵퍼에서 필요한 쿼리 실행
		MemberMapper memberMapper = myBatis.getMapper(MemberMapper.class);
		Member member = memberMapper.login("admin", "admin");
		Power power = memberMapper.getPower(member);
		System.out.println("mId : "+member.getmId()+", mPwd : "+member.getmPwd());
		System.out.println("mId : "+power.getmId()+", aStudy : "+power.getaStudy());
		
		// 커밋, 세션 종료
		myBatis.closeSession();
		
	}

}
