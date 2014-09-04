package mem.wit.study.spring;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wit.member.Member;
import com.wit.member.Power;

@Controller
//@RequestMapping("/lecture")
public class MainController {
	
//	@Autowired private TeacherService teacherService;
	
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index(HttpSession session) {
		String url = "@Study_indexUser";
//		String url = "f_userIndex";
		Member member = (Member)session.getAttribute("member");
		boolean login = member==null ? false : true;
		Power power = (Power)session.getAttribute("power");
		boolean admin = power==null ? false : true;
		
		if (login) {	// 로그인 상태
			if (admin) {		// 관리자
				if (power.getaStudy() > 0) {	// 알파스터디 관리자
					url = "@Study_indexAdmin";
				}
			}
		}
		return url;
	}
	@RequestMapping(value="/index", method=RequestMethod.POST)
	public String index(int dummy) throws Exception {
		return "members/welcome";
	}
	
	@RequestMapping(value="/account", method=RequestMethod.GET)
	public String account() {
		return "@Study_userMain";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update() {
		return "members/register";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(int dummy) throws Exception {
		return "members/welcome";
	}
	
	
}
