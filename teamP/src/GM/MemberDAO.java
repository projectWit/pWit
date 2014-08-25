package GM;

import gss.MyBatis;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MemberDAO {
	@RequestMapping("/test.do")
	public ModelAndView memberList() {
		ModelAndView mv = new ModelAndView();
		// view 설정
		mv.setViewName("test"); // view의 이름을 제공
		MyBatis m = new MyBatis("TestSqlMapConfig.xml");
		List<MemberDTO> list = (List<MemberDTO>) m.select("selectMember", "select mId, mName, mMobile, mPost, mAddr, mJoindate from WitMember");
		mv.addObject("list", list);
		return mv;
	}
}
