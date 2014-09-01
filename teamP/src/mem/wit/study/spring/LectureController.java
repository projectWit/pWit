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
import mem.wit.study.codes.Subject;
import mem.wit.study.codes.SubjectService;
import mem.wit.study.codes.SuppLec;
import mem.wit.study.codes.SuppLecService;
import mem.wit.study.codes.Textbook;
import mem.wit.study.codes.TextbookService;
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
//	@Autowired private TeacherService teacherService;
	
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(Model model, HttpServletRequest request, HttpSession session) {
		System.out.println("search GET");
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
		System.out.println("search POST");
		doSelectCodes(model);
		String alIdTemp = request.getParameter("alIdText");
		String tIdTemp = request.getParameter("tIdText");
		if (tIdTemp != "") {
			lecture.settId(Integer.parseInt(tIdTemp));
		}
		if (alIdTemp != "") {
			lecture.setAlId(Integer.parseInt(alIdTemp));
		}
		// 초기 SEARCH에서는 DB에서 내용을 SELECT
//		List<Lecture> lecList = lectureService.selectAll();
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
		System.out.println("list POST");
		doSelectCodes(model);
		// 페이징에서는 SESSION에 저장된 리스트(검색 결과) 를 가져온다
		List<Lecture> lecList = (List<Lecture>)session.getAttribute("lecList");
		model.addAttribute("lecList", lecList);
		doListPaging(model, request, lecList.size());
		session.setAttribute("lecList", lecList);
		return "@Study_lecSearch";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String create(Model model) {
//		System.out.println("create GET");
		List<SuppLec> slList = suppLecService.selectAll();
		List<LecCate> lcList = lecCateService.selectAll();
		List<Subject> sbjList = subjectService.selectAll();
		List<ExamGrade> egList = examGradeService.selectAll();
		List<Textbook> tbList = textbookService.selectAll();
		model.addAttribute("slList", slList);
		model.addAttribute("lcList", lcList);
		model.addAttribute("sbjList", sbjList);
		model.addAttribute("egList", egList);
		model.addAttribute("tbList", tbList);
		return "@Study_lecCreate";
	}
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String create(Model model, Lecture lecture, String tIdText) throws Exception {
//		System.out.println("create POST");
		List<SuppLec> slList = suppLecService.selectAll();
		List<LecCate> lcList = lecCateService.selectAll();
		List<Subject> sbjList = subjectService.selectAll();
		List<ExamGrade> egList = examGradeService.selectAll();
		List<Textbook> tbList = textbookService.selectAll();
		model.addAttribute("slList", slList);
		model.addAttribute("lcList", lcList);
		model.addAttribute("sbjList", sbjList);
		model.addAttribute("egList", egList);
		model.addAttribute("tbList", tbList);
		
		if (tIdText != "") {
			lecture.settId(Integer.parseInt(tIdText));
		}
		int updateCount = lectureService.insert(lecture);
		System.out.println("updateCount : "+updateCount);
		System.out.println("updateKey : "+lecture.getAlId());
		return "@Study_lecCreate";
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
		model.addAttribute("slList", slList);
		model.addAttribute("lcList", lcList);
		model.addAttribute("sbjList", sbjList);
		model.addAttribute("egList", egList);
		model.addAttribute("tbList", tbList);
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
