package com.wit.member.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wit.member.Employee;
import com.wit.member.EmployeeService;
import com.wit.member.Member;
import com.wit.member.MemberService;
import com.wit.member.Power;

@Controller
//@RequestMapping("/members")
public class MemberController {
	
	@Autowired private MemberService memberService;
	@Autowired private EmployeeService employeeService;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String signUp() {
		return "members/register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String signUp(Member member) throws Exception {
		memberService.insert(member);
		return "members/welcome";
	}
	
	@RequestMapping(value="/loginAjax", method=RequestMethod.GET)
	public String loginAjax(Model model, HttpServletRequest request, HttpSession session) {
		String username = request.getParameter("username");
		String password_text = request.getParameter("password_text");
		Member member = memberService.login(username, password_text);
		Employee employee = employeeService.login(username, password_text);
		
		
		//result 0 : id 불일치
		// result 1 : id 일치, pwd 불일치
		// result 2 : id, pwd 모두 일치
		int result = 0;
		if (member == null) {	
			// id와 일치하는 레코드가 없음. id 불일치
		} else {
			if (member.getmPwd().equals(password_text)) { 
				result = 2;	// id, pwd 전부 일치
				Power power = memberService.getPower(member);
				session.setAttribute("member", member);		// 세션 생성
				if (power != null) {
					session.setAttribute("power", power);
				}
			} else {	
				result = 1;	// id일치, pwd불일치
			}
		} // end if member
		
		if (employee == null) {	
			// id와 일치하는 레코드가 없음. id 불일치
		} else {
			System.out.println("eId : "+employee.geteId()+", ePwd : "+employee.getePwd());
			if (employee.getePwd().equals(password_text)) { 
				result = 2;	// id, pwd 전부 일치
				session.setAttribute("employee", employee);		// 세션 생성
			} else {	
				result = 1;	// id일치, pwd불일치
			}
		} // end if employee
		
		model.addAttribute("result", result);
		return "loginJSON";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "WIT_Main_index";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(int dummy) throws Exception {
		return "WIT_Main_index";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("member");
		session.removeAttribute("power");
		session.removeAttribute("employee");
		return "WIT_Main_index";

	}
		
	@RequestMapping(value="/editAccount", method=RequestMethod.GET)
	public String editAccount() {
		return "members/editAccount";
	}
	
	@RequestMapping(value="/editAccount", method=RequestMethod.POST)
	public String editAccount(Member member, HttpSession session) throws Exception {
		Member loginMember = (Member) session.getAttribute("member");
		String mId = loginMember.getmId();
		
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
	
	

	//TODO getAllUsers(),getUserByEmail() getUsersByKeyword() 메소드 추가(사용자 관리 페이지)
}
