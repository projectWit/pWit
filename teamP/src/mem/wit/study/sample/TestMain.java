package mem.wit.study.sample;

import java.util.List;

import mem.wit.study.codes.SuppLec;
import mem.wit.study.codes.Textbook;
import mem.wit.study.myBatis.SuppLecMapper;
import mem.wit.study.myBatis.TextbookMapper;

import com.wit.MyBatis3;
import com.wit.member.Member;
import com.wit.member.Power;
import com.wit.myBatis.MemberMapper;

public class TestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*String resource = "com/wit/myBatis/myBatisConfig.xml";
		// 세션 생성
		MyBatis3 myBatis = new MyBatis3(resource);	
		
		// 맵퍼에서 필요한 쿼리 실행
		MemberMapper memberMapper = myBatis.getMapper(MemberMapper.class);
		Member member = memberMapper.login("admin", "admin");
		Power power = memberMapper.getPower(member);
		System.out.println("mId : "+member.getmId()+", mPwd : "+member.getmPwd());
		System.out.println("mId : "+power.getmId()+", aStudy : "+power.getaStudy());*/
		
		/*String resource = "mem/wit/study/myBatis/myBatisConfig.xml";
		// 세션 생성
		MyBatis3 myBatis = new MyBatis3(resource);	
		SuppLecMapper suppLecMapper = myBatis.getMapper(SuppLecMapper.class);
		List<SuppLec> slList = suppLecMapper.selectAll();
		for (SuppLec suppLec : slList) {
			System.out.println("slCode : "+suppLec.getSlCode()+", slName : "+suppLec.getSlName());
		}*/
		
		String resource = "mem/wit/study/myBatis/myBatisConfig.xml";
		// 세션 생성
		MyBatis3 myBatis = new MyBatis3(resource);	
		TextbookMapper textbookMapper = myBatis.getMapper(TextbookMapper.class);
		List<Textbook> tbList = textbookMapper.selectAll();
		for (Textbook tbookJoin : tbList) {
			System.out.println("tbCode : "+tbookJoin.getTbCode()+", tbName : "+tbookJoin.getTbName());
		}
		
		// 커밋, 세션 종료
		myBatis.closeSession();
	}

}
