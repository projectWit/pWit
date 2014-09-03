package mem.wit.study.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
//@RequestMapping("/lecture")
public class MainController {
	
//	@Autowired private TeacherService teacherService;
	
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index() {
		return "@Study_indexAdmin";
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
