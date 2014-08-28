package mem.wit.gm;

import gss.MyBatis;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GMController {
	ModelAndView mv = new ModelAndView();
	MyBatis m = new MyBatis("mem/wit/gm/GMSqlMapConfig.xml");
	@RequestMapping("/memberlist.gm")
	public ModelAndView memberlist() {
		// view 설정
		mv.setViewName("memberlist"); // view의 이름을 제공
		List<MemberDTO> list = (List<MemberDTO>) m
				.select("selectMember",
						"select mId, mName, mMobile, mPost, mAddr, mJoindate from WitMember");
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/clublist.gm")
	public ModelAndView clublist() {
		// view 설정
		mv.setViewName("clublist"); // view의 이름을 제공
		List<ClubDTO> clist = (List<ClubDTO>) m
				.select("selectClub",
						"select c.cName, w.mName, w.MMOBILE , s.sName, c.cJoinDay, g.GNAME from GM_Club c, GM_Member m, C_Sport s, C_Grade g, WitMember w where c.sId=s.sId and c.gId=g.gId and m.mId=c.cPresident and m.mId=w.mId order by c.cJoinDay asc");
		mv.addObject("clist", clist);
		return mv;
	}
	
	@RequestMapping("/clubInsert.gm")
	public ModelAndView clubInsert(HttpServletRequest request) {
		mv.setViewName("clubInsert"); // view의 이름을 제공
		ClubDTO dto = new ClubDTO();
		dto.setcName(request.getParameter("cName"));
		dto.setsId(request.getParameter("sId"));
		dto.setcPost(request.getParameter("cPost"));
		dto.setcAddr(request.getParameter("cAddr"));
		dto.setcHomepage(request.getParameter("cHomepage"));
		dto.setcEmblem(request.getParameter("cEmblem"));
		dto.setcPresident(request.getParameter("cPresident"));
		dto.setcManager(request.getParameter("cManager"));
		m.insert("insertClub", dto);
		return new ModelAndView("redirect:http:/teamP/cooperation/_GM/WIT_GM_index.jsp");
	}
	@RequestMapping("/facilities.gm")
	public ModelAndView placeInsert(HttpServletRequest request) {
		System.out.println(request.getParameter("pId"));
		System.out.println(request.getParameter("fName"));
		mv.setViewName("facilities");
		FacilDTO dto = new FacilDTO();
		dto.setfName(request.getParameter("fName"));
		dto.setfObject(request.getParameter("fObject"));
		dto.setpId(Integer.parseInt(request.getParameter("pId")));
		dto.setfPay(Integer.parseInt(request.getParameter("fPay")));
		dto.setfAddr(request.getParameter("fAddr"));
		dto.setfTel(request.getParameter("telCode")+"-"+request.getParameter("fTel1")+"-"+request.getParameter("fTel2"));
		m.insert("insertFacil", dto);
		return new ModelAndView("redirect:http:/teamP/cooperation/_GM/WIT_GM_index.jsp");
	}
	
	
	
}
