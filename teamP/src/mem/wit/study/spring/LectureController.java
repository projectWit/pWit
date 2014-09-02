package mem.wit.study.spring;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mem.wit.study.codes.ExamGrade;
import mem.wit.study.codes.ExamGradeService;
import mem.wit.study.codes.LecCate;
import mem.wit.study.codes.LecCateService;
import mem.wit.study.codes.LecRoom;
import mem.wit.study.codes.LecRoomService;
import mem.wit.study.codes.LecStatus;
import mem.wit.study.codes.LecStatusService;
import mem.wit.study.codes.LecTime;
import mem.wit.study.codes.LecTimeService;
import mem.wit.study.codes.Subject;
import mem.wit.study.codes.SubjectService;
import mem.wit.study.codes.SuppLec;
import mem.wit.study.codes.SuppLecService;
import mem.wit.study.codes.Textbook;
import mem.wit.study.codes.TextbookService;
import mem.wit.study.lecture.LecDay;
import mem.wit.study.lecture.LecDayService;
import mem.wit.study.lecture.LecSchedule;
import mem.wit.study.lecture.LecScheduleService;
import mem.wit.study.lecture.Lecture;
import mem.wit.study.lecture.LectureService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wit.Paging;

@Controller
@RequestMapping("/lecture")
public class LectureController {
	
	@Autowired private LectureService lectureService;
	@Autowired private SuppLecService suppLecService;
	@Autowired private LecCateService lecCateService;
	@Autowired private SubjectService subjectService;
	@Autowired private ExamGradeService examGradeService;
	@Autowired private TextbookService textbookService;
	@Autowired private LecRoomService lecRoomService;
	@Autowired private LecTimeService lecTimeService;
	@Autowired private LecStatusService lecStatusService;
	@Autowired private LecScheduleService lecScheduleService;
	@Autowired private LecDayService lecDayService;
//	@Autowired private TeacherService teacherService;
	
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String create(Model model) {
//		System.out.println("create GET");
		doSelectCodes(model);
		return "@Study_lecCreate";
	}
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String create(Model model, Lecture lecture, String tIdText) throws Exception {
//		System.out.println("create POST");
		doSelectCodes(model);
		
		if (tIdText != "") {
			lecture.settId(Integer.parseInt(tIdText));
		}
		int updateCount = lectureService.insert(lecture);
		System.out.println("updateCount : "+updateCount);
		System.out.println("updateKey : "+lecture.getAlId());
		return "@Study_lecCreate";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(Model model, HttpServletRequest request, HttpSession session) {
//		System.out.println("search GET");
		doSelectCodes(model);
		// 초기 SEARCH에서는 DB에서 내용을 SELECT
		List<Lecture> lecList = lectureService.selectAll();
		model.addAttribute("lecList", lecList);
		doListPaging(model, request, lecList.size());
		session.setAttribute("lecList", lecList);
		return "@Study_lecSearch";
	}
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String search2(Model model, HttpServletRequest request, HttpSession session, Lecture lecture) throws Exception {
//		System.out.println("search POST");
		doSelectCodes(model);
		String alIdText = request.getParameter("alIdText");
		String tIdText = request.getParameter("tIdText");
		if (alIdText != "") {
			lecture.setAlId(Integer.parseInt(alIdText));
		}
		if (tIdText != "") {
			lecture.settId(Integer.parseInt(tIdText));
		}
		// 초기 SEARCH에서는 DB에서 내용을 SELECT
//		List<Lecture> lecList = lectureService.selectAll();
		if (lecture.geteKname() == null) {
			lecture.seteKname("");
		}
		List<Lecture> lecList = lectureService.select(lecture);
		model.addAttribute("lecList", lecList);
		doListPaging(model, request, lecList.size());
		session.setAttribute("lecList", lecList);
		return "@Study_lecSearch";
	}
	
	@RequestMapping(value="/search/list", method=RequestMethod.GET)
	public String list() {
		System.out.println("list GET");
		return "@Study_lecSearch";
	}
	@RequestMapping(value="/search/list", method=RequestMethod.POST)
	public String list(Model model, HttpServletRequest request, HttpSession session) throws Exception {
//		System.out.println("list POST");
		doSelectCodes(model);
		// 페이징에서는 SESSION에 저장된 리스트(검색 결과) 를 가져온다
		List<Lecture> lecList = (List<Lecture>)session.getAttribute("lecList");
		model.addAttribute("lecList", lecList);
		doListPaging(model, request, lecList.size());
		return "@Study_lecSearch";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(Model model) {
//		System.out.println("register GET");
		doSelectCodes(model);
		return "@Study_lecRegister";
	}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(Model model, LecSchedule lecSchedule,LecDay lecDay, HttpServletRequest request) throws Exception {
//		System.out.println("register POST");
		doSelectCodes(model);

// 강의 스케줄 생성 ------------------------------------------------------------------
		String alIdText = request.getParameter("alIdText");
		String lsCostText = request.getParameter("lsCostText");
		String lsMaxText = request.getParameter("lsMaxText");
		if (alIdText != "") {
			lecSchedule.setAlId(Integer.parseInt(alIdText));
		}
		if (lsCostText != "") {
			lecSchedule.setLsCost(Integer.parseInt(lsCostText));
		}
		if (lsMaxText != "") {
			lecSchedule.setLsMax(Integer.parseInt(lsMaxText));
		}
//		System.out.println("lsDescription : "+lecSchedule.getLsDescription());
		int updateCount = lecScheduleService.insert(lecSchedule);
		System.out.println("lecSchedule updateCount : "+updateCount);
		System.out.println("lecSchedule updateKey : "+lecSchedule.getLsId());
// -------------------------------------------------------------------------------------
		
// 강의 요일,타임 생성 -------------------------------------------------------------
		for (int i=0; i<7; i++) {
			int ltCode = lecDay.getLtCodeArray()[i];
//			System.out.println("ltCode : "+ltCode);
			if (ltCode > 0) {
				lecDay.setLsId(lecSchedule.getLsId());
				lecDay.setdCode(i+1);	// 요일 설정
				lecDay.setLtCode(ltCode);	// 타임 설정
				updateCount = lecDayService.insert(lecDay);
				System.out.println("lecDay updateCount : "+updateCount);
				System.out.println("lecDay updateKey : "+lecDay.getdId());
			}
		}
// -------------------------------------------------------------------------------------
		
		return "@Study_lecRegister";
	}
	
	@RequestMapping(value="/regSearch", method=RequestMethod.GET)
	public String regSearch(Model model) {
		System.out.println("regSearch GET");
		doSelectCodes(model);
		return "@Study_lecRegSearch";
	}
	@RequestMapping(value="/regSearch", method=RequestMethod.POST)
	public String regSearch(Model model, LecSchedule lecSchedule, Lecture lecture, LecDay lecDay) throws Exception {
		System.out.println("regSearch POST");
		doSelectCodes(model);
		
//		System.out.println(lecture.getSlCode());
		return "@Study_lecRegSearch";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete() {
		return "members/register";
	}
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(Lecture lecture) throws Exception {
		lectureService.delete(lecture);
		return "members/welcome";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update() {
		return "members/register";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(Lecture lecture) throws Exception {
		lectureService.update(lecture);
		return "members/welcome";
	}
	
	
	
	private void doSelectCodes(Model model) {
		List<SuppLec> slList = suppLecService.selectAll();
		List<LecCate> lcList = lecCateService.selectAll();
		List<Subject> sbjList = subjectService.selectAll();
		List<ExamGrade> egList = examGradeService.selectAll();
		List<Textbook> tbList = textbookService.selectAll();
		List<LecRoom> lrList = lecRoomService.selectAll();
		List<LecTime> ltList = lecTimeService.selectAll();
		List<LecStatus> lsList = lecStatusService.selectAll();
		model.addAttribute("slList", slList);
		model.addAttribute("lcList", lcList);
		model.addAttribute("sbjList", sbjList);
		model.addAttribute("egList", egList);
		model.addAttribute("tbList", tbList);
		model.addAttribute("lrList", lrList);
		model.addAttribute("ltList", ltList);
		model.addAttribute("lsList", lsList);
	}
	private void doListPaging(Model model, HttpServletRequest request, int tRecord) {
		int totalRecord = tRecord;
		String curPageTemp = request.getParameter("curPage");
		int curPage = (curPageTemp == null || curPageTemp == "") ? 1 : Integer.parseInt(curPageTemp);
		int numPerPage = request.getParameter("numPerPage") == null ? 10 : Integer.parseInt(request.getParameter("numPerPage"));
		int pagePerBlock = 10;
		Paging paging = new Paging(totalRecord, curPage, numPerPage, pagePerBlock);
		lectureService.setPaging(paging);
		Integer no = lectureService.getListNo();
		Integer prevLink = lectureService.getPrevLink();
		Integer nextLink = lectureService.getNextLink();
		Integer firstPage = lectureService.getFirstPage();
		Integer lastPage = lectureService.getLastPage();
		Integer startRecord = lectureService.getStartRecord();
		Integer endRecord = lectureService.getEndRecord();
		int[] pageLinks = lectureService.getPageLinks();
		
		// 모델 생성
		Map<String, Object> pagingModel = new HashMap<String, Object>();
		pagingModel.put("no", no);
		pagingModel.put("prevLink", prevLink);
		pagingModel.put("nextLink", nextLink);
		pagingModel.put("firstPage", firstPage);
		pagingModel.put("lastPage", lastPage);
		pagingModel.put("startRecord", startRecord);
		pagingModel.put("endRecord", endRecord);
		pagingModel.put("pageLinks", pageLinks);
		pagingModel.put("curPage", curPage);
		pagingModel.put("numPerPage", numPerPage);
		model.addAttribute("pagingModel", pagingModel);
	}
	
}
