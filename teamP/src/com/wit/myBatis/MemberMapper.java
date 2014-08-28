package com.wit.myBatis;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wit.member.Member;
import com.wit.member.Power;

public interface MemberMapper {
	
	public int insert(Member member);
	
	public Member login(@Param("mId") String mId, @Param("mPwd") String mPwd);
	
	public int update(Member member);
	
	public void changePwd(Member member);
	
	public void delete(Member member);

	public List<Member> getAllMembers();
	
	public Member getMemberById(String pId);
	
	public List<Member> getMembersByKeyword(String keyword);
	
	public Power getPower(Member member);

}
