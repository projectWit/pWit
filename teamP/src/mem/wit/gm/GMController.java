package mem.wit.gm;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.wit.MyBatis;
import com.wit.member.Member;

@Controller
public class GMController {
	ModelAndView mv = new ModelAndView();
	MyBatis m = new MyBatis("mem/wit/gm/GMSqlMapConfig.xml");


	@RequestMapping("/clublist.gm")
	public ModelAndView clublist() {
		// view 설정
		mv.setViewName("clublist"); // view의 이름을 제공
		List<ClubDTO> clist = (List<ClubDTO>) m
				.select("selectClub",
						"select c.cId, c.sId, c.cName, w.mName, w.MMOBILE , s.sName, c.cJoinDay, g.GNAME from GM_Club c, GM_Member m, C_Sport s, C_Grade g, WitMember w "
						+ "where c.sId=s.sId and c.gId=g.gId and m.mId=c.cPresident and m.mId=w.mId order by c.cId desc");
		mv.addObject("clist", clist);
		return mv;
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
						"select f.fName,f.pId,f.fAddr,p.place,f.fObject,f.fPay,f.fTel from GM_Facil f, C_Place p where f.pId=p.pId");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("/questionlist.gm")
	public ModelAndView questionList() {
		mv.setViewName("questionlist");
		String query = "select qId,mName,qTitle,qCont,qDate,qIp,stateName from GM_QBoard q, GM_Member m, WitMember w, C_State s "
				+ "where q.qMId=m.mId and m.mId=w.mId and q.stateId=s.stateId";
		List<QBoardDTO> list = (List<QBoardDTO>) m.select("selectQboard", query);
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
		sdto.settNum(sdto.tNum);
		m.insert("insertLec", dto);
		m.insert("insertSche", sdto);
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/WIT_GM_worker.jsp?url=/teamP/lecturelist.gm");
	}

	@RequestMapping("/lecturelist.gm")
	public ModelAndView leclist(HttpServletRequest request) {
		mv.setViewName("lecturelist");
		String query = "select s.sNum, l.lecId, l.lecName, e.eKName, ty.tName, p.place, sp.sName, s.sSDay, s.sEDay, l.lecPay, e.eTel "
				+ "from GM_Lecture l, GM_Sche s, GM_Teacher t, Employee e, C_PTime pt, C_Place p, C_Sport sp, C_Type ty "
				+ "where l.lecId=s.lecId and p.pId=l.pId and e.eId=t.eId and t.tNum=s.tNum and s.pId=pt.pId"
				+ " and sp.sId=l.sId and ty.tId=l.tId order by l.lecId DESC";
		List<LecDTO> list = (List<LecDTO>) m.select("selectLecList", query);
		request.setAttribute("alist", list);
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/memberLectureConfirm.gm")
	public ModelAndView memberLectureConfirm(HttpServletRequest request, HttpSession session) {
		mv.setViewName("memberLectureConfirm");
		Member member = (Member)session.getAttribute("member");
		System.out.println(member.getmId());
		String query = "select lr.rNum as sNum,l.lecId, l.lecName, e.eKName, ty.tName, p.place, "
				+ "sp.sName, s.sSDay, s.sEDay, l.lecPay, st.stateName as eTel "
				+ "from GM_Lecture l, GM_Sche s, GM_Teacher t, Employee e, C_PTime pt, C_Place p, "
				+ "C_Sport sp, C_Type ty, GM_LReq lr, GM_Member m, C_State st "
				+ "where l.lecId=s.lecId and p.pId=l.pId and e.eId=t.eId and t.tNum=s.tNum "
				+ "and s.pId=pt.pId and sp.sId=l.sId "
				+ "and ty.tId=l.tId and lr.mId=m.mId and lr.stateId=st.stateId and lr.sNum=s.sNum and"
				+ " lr.mId='"+member.getmId()+"' order by st.stateId asc, lr.rNum desc ";
		List<LecDTO> list = (List<LecDTO>) m.select("selectLecList", query);
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/adminLectureConfirm.gm")
	public ModelAndView adminLectureConfirm(HttpServletRequest request, HttpSession session) {
		mv.setViewName("adminLectureConfirm");
		Member member = (Member)session.getAttribute("member");
		String query = "select lr.rNum as sNum,l.lecId, l.lecName, w.mName as eKName, ty.tName, p.place, sp.sName, s.sSDay, s.sEDay, l.lecPay, st.stateName as eTel"
				+ " from GM_Lecture l, GM_Sche s, C_PTime pt, C_Place p, C_Sport sp, C_Type ty, GM_LReq lr, GM_Member m, WitMember w, C_State st "
				+ "where l.lecId=s.lecId and p.pId=l.pId and w.mId=m.mId and s.pId=pt.pId and sp.sId=l.sId "
				+ " and ty.tId=l.tId and lr.mId=m.mId and lr.stateId=st.stateId and lr.sNum=s.sNum and st.stateId=1 order by st.stateId asc,lr.rNum desc";
		List<LecDTO> list = (List<LecDTO>) m.select("selectLecList", query);
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/rentCheck.gm")
	public ModelAndView rentCheck(HttpSession session) {
		mv.setViewName("rentCheck");
		Member member = (Member) session.getAttribute("member");
		String query = "select r.rId, c.cId, c.cName, sp.sName, r.rCause, r.rDay, s.stateName , f.fName, p.place"
				+ " from GM_Rent r, C_State s, GM_Club c, C_Sport sp, C_place p, GM_Facil f "
				+ " where s.stateId = r.stateId and r.cId = c.cId and c.sId=sp.sId and "
				+ " f.fId=r.fId and f.pId=p.pId and c.cPresident='"+member.getmId()+"' "
				+ " order by s.stateId desc, r.rId desc";
		List<RentDTO> list = (List<RentDTO>) m.select("rentCheck", query);
		mv.addObject("list",list);
		return mv;
	}
	@RequestMapping("/updateLReq.gm") 
	public ModelAndView updateLReq(HttpServletRequest request) {
		mv.setViewName("adminLectureConfirm");
		int rNum = Integer.parseInt(request.getParameter("rNum"));
		String chk = request.getParameter("chk");
		String query ="";
		if(chk.equals("in")) {	
			query = "update GM_LReq set stateId=10 where rNum="+rNum;
		} else {
			query = "update GM_LReq set stateId=2 where rNum="+rNum; 
		}
		m.update("updateLReq", query);
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/WIT_GM_worker.jsp?url=/teamP/adminLectureConfirm.gm");
	}
	@RequestMapping("/memberlist.gm")
	public ModelAndView memberlist(HttpServletRequest request) {
		mv.setViewName("memberlist"); // view의 이름을 제공
		List<MemberDTO> list = (List<MemberDTO>) m
				.select("selectMember",	"select mId, mName, mMobile, mJoindate from WitMember order by mJoindate desc");
		request.setAttribute("alist", list);
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/question.gm") 
	public ModelAndView qSetInsert(HttpSession session) {
		mv.setViewName("question");
		Member member = (Member) session.getAttribute("member");
		List<QBoardDTO> list = (List<QBoardDTO>) m
				.select("searchName",	"select mId, mName from WitMember where mId='"+member.getmId()+"'");
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/questionInsert.gm")
	public ModelAndView qInsert(HttpServletRequest request, QBoardDTO dto, HttpSession session) {
		Member member = (Member) session.getAttribute("member");
		mv.setViewName("question");
		dto.setqMId(member.getmId());
		dto.setqTitle(dto.qTitle);
		dto.setqCont(dto.qCont);
		dto.setqIp(request.getRemoteAddr());
		m.insert("insertQBoard", dto);
		
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/WIT_GM_index.jsp");
	}
	// 대관신청 폼
	@RequestMapping("/rentApplyForm.gm") 
	public ModelAndView rentApplyForm(HttpSession session) {
		Member member = (Member) session.getAttribute("member");
		mv.setViewName("rentApplyForm");
		List<MemberDTO> list = (List<MemberDTO>) m
				.select("searchName",	"select mId, mName from WitMember where mId='"+member.getmId()+"'");
		mv.addObject("list", list);
		return mv;
	}
	//이용 현황 
	@RequestMapping("/facilitiesuselist.gm")
	public ModelAndView useList() {
		mv.setViewName("facilitiesuselist");
		
		String query="select s.sNum,l.lecId, l.lecName, e.eKName, ty.tName, p.place, sp.sName, s.sSDay, s.sEDay, l.lecPay, e.eTel "
				+ "from GM_Lecture l, GM_Sche s, GM_Teacher t, Employee e, C_PTime pt, C_Place p, C_Sport sp, C_Type ty "
				+ "where l.lecId=s.lecId and p.pId=l.pId and e.eId=t.eId and t.tId=s.tId and s.pId=pt.pId and sp.sId=l.sId and ty.tId=l.tId and sEDay<=sysdate";
		List<LecDTO> list = (List<LecDTO>) m.select("selectLecList", query);
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/rentInsert.gm")
	public ModelAndView rentInsert(RentDTO dto) {
		mv.setViewName("rentApplyForm");
		System.out.println(dto.fId);
		System.out.println(dto.cId);
		dto.setcId(dto.cId);
		dto.setfId(dto.fId);
		dto.setsId(dto.sId);
		dto.setrDay(dto.rDay);
		dto.setrCause(dto.rCause);
		m.insert("insertRent", dto);
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/Member_GM_Rent.jsp?url=/teamP/rentCheck.gm");
	}
	@RequestMapping("/searchLectureList.gm")
	public ModelAndView searchLectureList(HttpServletRequest request) {
		mv.setViewName("ListSearch");
		int sId = Integer.parseInt(request.getParameter("sId"));
		String query="select s.sNum,l.lecId, l.lecName, e.eKName, ty.tName, p.place, sp.sName, s.sSDay, s.sEDay, l.lecPay, e.eTel "
				+ "from GM_Lecture l, GM_Sche s, GM_Teacher t, Employee e, C_PTime pt, C_Place p, C_Sport sp, C_Type ty "
				+ "where l.lecId=s.lecId and p.pId=l.pId and e.eId=t.eId and t.tNum=s.tNum and s.pId=pt.pId "
				+ "and sp.sId=l.sId and ty.tId=l.tId and sp.sId="+sId+" order by lecId desc";
		List<LecDTO> list = (List<LecDTO>) m.select("selectLecList", query);
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/insertLReq.gm")
	public ModelAndView insertLReq(HttpServletRequest request, HttpSession session) {
		mv.setViewName("insertLReq");
		Member member = (Member) session.getAttribute("member");
		System.out.println(member.getmId());
		int sNum = Integer.parseInt(request.getParameter("sNum"));
		System.out.println(sNum);
		String query = "insert into GM_LReq values(seq_rNum.nextval,'"+member.getmId()+"',"+sNum+",1)";
		m.insert("insertLReq",query);
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/Member_GM_Lecture.jsp?url=/teamP/memberLectureConfirm.gm");
	}
	@RequestMapping("/detail.gm")
	public ModelAndView detail(HttpServletRequest request) {
		String id = request.getParameter("id");
		int lecId = Integer.parseInt(request.getParameter("lecId"));
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/"+id+".jsp?url=/teamP/detailLecture.gm?lecId="+lecId);
	}
	@RequestMapping("/detailLecture.gm")
	public ModelAndView detailLecture(HttpServletRequest request) {
		mv.setViewName("detailLecture");	
		String id = request.getParameter("id");
		System.out.println(id);
		System.out.println(request.getParameter("lecId"));
		int lecId = Integer.parseInt(request.getParameter("lecId"));
		
		String query="select l.lecId,l.lecCnt, l.lecName, l.lecCont, e.eKName, ty.tName, p.place, sp.sName, s.sSDay, s.sEDay, l.lecPay,  pt.pTime"
				+ " from GM_Lecture l, GM_Sche s, C_PTime pt, C_Place p, C_Sport sp, C_Type ty, Employee e, GM_TEACHER t "
				+ "where l.lecId=s.lecId and p.pId=l.pId and e.eId=t.eId and t.tNum=s.tNum and s.pId=pt.pId and sp.sId=l.sId "
				+ "and ty.tId=l.tId and l.lecId="+lecId;
		List<LecDTO> list = (List<LecDTO>) m.select("detail", query);
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/detailcl.gm")
	public ModelAndView detailcl(HttpServletRequest request) {
		int cId = Integer.parseInt(request.getParameter("cId"));
		return new ModelAndView(
				"redirect:http:/teamP/cooperation/_GM/Member_GM_Club.jsp?url=/teamP/detailclub.gm?cId="+cId);
	}
	@RequestMapping("/detailclub.gm")
	public ModelAndView detailclub(HttpServletRequest request) {
		mv.setViewName("detailclub");	

		int cId = Integer.parseInt(request.getParameter("cId"));
		System.out.println(cId);
		String query="select c.cId, c.cName, w.mName as cPresident, w.mMobile as cPTel, w1.mMobile as cMTel, w1.mName as cManager, s.sName, c.cHomepage, c.cEmblem, c.cJoinDay from "
				+ "GM_Club c, C_Sport s, GM_Member m, GM_Member m1, WitMember w, WitMember w1 "
				+ "where c.sId=s.sId and c.cPresident=m.mId and c.cManager=m1.mId and m.mId=w.mId and m1.mId=w1.mId "
				+ "and c.cId = "+cId;
		List<ClubDTO> list = (List<ClubDTO>) m.select("detailclub", query);
		mv.addObject("alist", list);
		return mv;
	}

}
