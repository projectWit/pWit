package com.wit.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wit.myBatis.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	public MemberMapper getMemberMapper() {
		return memberMapper;
	}

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}

	public int insert(Member member) {
		return memberMapper.insert(member);
	}
	
	public Member login(String mId, String mPwd) {
		return memberMapper.login(mId, mPwd);
	}
	
	public int update(Member member) {
		return memberMapper.update(member);
	}
	
	public void changePwd(Member member) {
		memberMapper.changePwd(member);
	}
	
	public void delete(Member member) {
		memberMapper.delete(member);
	}

	public List<Member> getAllMembers() {
		return memberMapper.getAllMembers();
	}
	
	public Member getMemberById(String pId) {
		return memberMapper.getMemberById(pId);
	}
	
	public List<Member> getMembersByKeyword(String keyword) {
		return memberMapper.getMembersByKeyword(keyword);
	}
	
	public Power getPower(Member member) {
		return memberMapper.getPower(member);
	}
}
