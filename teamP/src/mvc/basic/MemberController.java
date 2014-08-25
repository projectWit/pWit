package mvc.basic;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	ModelAndView mv;
	
	public MemberController() {
		mv = new ModelAndView();
	}
	
	@RequestMapping("/hi.do")
	public ModelAndView hi2() {	// 이름은 상관없음을 알 수 있다.
		// view 설정
		// view의 이름을 제공. xxx-servlet.xml 에서 prefix, suffix 추가
		mv.setViewName("hi");
		Member member = new Member();
		member.setName("홍길동");
		member.setJob("개발자");
		mv.addObject("member", member);
		return mv;
	}
	
	@RequestMapping("/loginController.do")
	public ModelAndView hi() {
		// view 설정
		// view의 이름을 제공. xxx-servlet.xml 에서 prefix, suffix 추가
		mv.setViewName("loginContent");
		HttpSession httpSession = request.getSession();

		return mv;
	}
}
