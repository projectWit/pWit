package com.wit.member;

import java.util.List;

public interface MemberService {
	
	public int insert(Member member);
	
	public Member login(String mId, String mPwd);
	
	public int update(Member member);
	
	public void changePwd(Member member);
	
	public void delete(Member member);

	public List<Member> getAllMembers();
	
	public Member getMemberById(String pId);
	
	public List<Member> getMembersByKeyword(String keyword);
}
