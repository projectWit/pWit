package mem.wit.gm;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wit.MyBatis;
import com.wit.member.Member;

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
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/WIT_GM_index.jsp");
	}

	@RequestMapping("/facilities.gm")
	public ModelAndView placeInsert(HttpServletRequest request) {

		mv.setViewName("facilities");
		FacilDTO dto = new FacilDTO();
		dto.setfName(request.getParameter("fName"));
		dto.setfObject(request.getParameter("fObject"));
		dto.setpId(Integer.parseInt(request.getParameter("pId")));
		dto.setfPay(Integer.parseInt(request.getParameter("fPay")));
		dto.setfAddr(request.getParameter("fAddr"));
		List<CdTelAreaDTO> telCode = (List<CdTelAreaDTO>) m.select(
				"selectTel",
				"select tanum from cdtelarea where tacode="
						+ Integer.parseInt(request.getParameter("telCode")));
		dto.setfTel(telCode.get(0).taNum + "-" + request.getParameter("fTel1")
				+ "-" + request.getParameter("fTel2"));
		m.insert("insertFacil", dto);
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/WIT_GM_index.jsp");
	}

	@RequestMapping("/facilitieslist.gm")
	public ModelAndView facilList() {
		mv.setViewName("facilitieslist");
		List<FacilDTO> list = (List<FacilDTO>) m
				.select("selectFacil",
						"select f.fName,p.place,f.fObject,f.fPay,f.fTel from GM_Facil f, C_Place p where f.pId=p.pId");
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping("/questionlist.gm")
	public ModelAndView questionList() {
		mv.setViewName("questionlist");
		String query = "select qId,mName,qTitle,qCont,qDate,qIp,stateName from GM_QBoard q, GM_Member m, WitMember w, C_State s "
				+ "where q.qMId=m.mId and m.mId=w.mId and q.stateId=s.stateId";
		List<QBoardDTO> list = (List<QBoardDTO>) m
				.select("selectQboard", query);
		return mv;
	}

	@RequestMapping("/lectureInsert.gm")
	public ModelAndView lecandScheInsert(LecDTO dto, ScheDTO sdto) {
		mv.setViewName("lectureInsert");
		dto.setLecName(dto.lecName);
		dto.setLecCnt(dto.lecCnt);
		dto.setLecCont(dto.lecCont);
		dto.setLecPay(dto.lecPay);
		sdto.setpId(sdto.pId);
		sdto.setsSDay(sdto.sSDay);
		sdto.setsEDay(sdto.sEDay);
		m.insert("insertLec", dto);
		m.insert("insertSche", sdto);
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/WIT_GM_index.jsp");
	}

	@RequestMapping("/lecturelist.gm")
	public ModelAndView leclist() {
		mv.setViewName("lecturelist");
		String query = "select l.lecName, e.eKName, p.place, sp.sName, s.sSDay, s.sEDay, l.lecPay, e.eTel "
				+ "from GM_Lecture l, GM_Sche s, GM_Teacher t, Employee e, C_PTime pt, C_Place p, C_Sport sp "
				+ "where l.lecId=s.lecId and p.pId=l.pId and e.eId=t.eNum and t.tId=s.tId and s.pId=pt.pId and sp.sId=l.sId";
		List<LecDTO> list = (List<LecDTO>) m.select("selectLecList", query);
		mv.addObject("list", list);
		return mv;
	}

}
