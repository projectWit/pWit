package com.wit.member.spring;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wit.member.Member;
import com.wit.member.MemberService;

@Controller
//@RequestMapping("/members")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String signUp() {
		return "members/register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String signUp(Member member) throws Exception {
		memberService.insert(member);
		return "members/welcome";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "members/login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(String mId, String mPwd, HttpSession session) throws Exception {
		System.out.println("pId : "+mId+", pPwd : "+mPwd);
		Member loginMember = memberService.login(mId, mPwd);
		if (loginMember != null) {
			session.setAttribute("member", loginMember);
//			return "members/changePwd";
			return "WIT_Main_index";
		} else {
//			return "members/login";
			return "WIT_Main_register";
		}
		
//		return "WIT_Main_register";
	}
	/*@RequestMapping("/login.do")
	public String login() {
		System.out.println("/login 진입");
		return "WIT_Main_index";
	}
	@RequestMapping("/login2")
	public String login2() {
		return "WIT_Main_register";
	}*/
		
	@RequestMapping(value="/editAccount", method=RequestMethod.GET)
	public String editAccount() {
		return "members/editAccount";
	}
	
	@RequestMapping(value="/editAccount", method=RequestMethod.POST)
	public String editAccount(Member member, HttpSession session) throws Exception {
		Member loginMember = (Member) session.getAttribute("member");
		String mId = loginMember.getmId(); //세션에 저장된 사용자 정보로부터 이메일을 알아낸다.
		
		if (member.getmName() == null) {
			member.setmName(loginMember.getmName());
		}
		if (member.getmMobile() == null) {
			member.setmMobile(loginMember.getmMobile());
		}
		
		member.setmId(mId);
		int check = memberService.update(member);
		if (check == 1) {
			session.setAttribute("member",member);
		}
		
		return "member/changePwd";
		
	}
	
	@RequestMapping(value="/changePwd", method=RequestMethod.GET)
	public String changePwd() {
		return "members/changePwd";
	}
	
	@RequestMapping(value="/changePasswd", method=RequestMethod.POST)
	public String changePwd(String pPwd, HttpSession session) throws Exception {
		String mId = ((Member)session.getAttribute("member")).getmId();
		
		Member member = new Member();
		member.setmId(mId);
		member.setmPwd(pPwd);
		
		memberService.changePwd(member);
		
		return "members/confirm";
	}
	
	@RequestMapping(value="/member", method=RequestMethod.GET)
	public String delete(HttpSession session) {
		Member member = (Member)session.getAttribute("member");
		memberService.delete(member);
		session.invalidate();
		
		return "members/login";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("member");

		return "members/login";

	}

	//TODO getAllUsers(),getUserByEmail() getUsersByKeyword() 메소드 추가(사용자 관리 페이지)
}
