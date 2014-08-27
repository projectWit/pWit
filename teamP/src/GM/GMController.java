package GM;

import gss.MyBatis;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GMController {
	ModelAndView mv = new ModelAndView();
	MyBatis m = new MyBatis("TestSqlMapConfig.xml");
	@RequestMapping("/clublist.gm")
	public ModelAndView clublist() {
		// view 설정
		mv.setViewName("clublist"); // view의 이름을 제공
		List<MemberDTO> list = (List<MemberDTO>) m
				.select("selectMember",
						"select mId, mName, mMobile, mPost, mAddr, mJoindate from WitMember");
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping("/clubInsert.gm")
	public ModelAndView clubInsert() {		
		mv.setViewName("clubInsert"); // view의 이름을 제공
		List<C_SportDTO> sport = (List<C_SportDTO>) m
				.select("searchSport",
						"select * from C_Sport");
		mv.addObject("sport", sport);
		return mv;
	}
	@RequestMapping("/facilities.gm")
	public ModelAndView placeInsert() {
		mv.setViewName("facilities");
		List<C_PlaceDTO> place = (List<C_PlaceDTO>) m.select("searchPlace", "select * from C_Place");
		mv.addObject("place", place);
		return mv;
	}
	
	/*@RequestMapping(value = "/sendInsert", method = RequestMethod.POST)   
    public String addClubDTO(@ModelAttribute("clublist")   
                        Contact contact, BindingResult result) {       
        System.out.println("First Name:" + contact.getFirstname() +            
                        "Last Name:" + contact.getLastname());       
        return "redirect:contacts.html";      
    }     */
}
