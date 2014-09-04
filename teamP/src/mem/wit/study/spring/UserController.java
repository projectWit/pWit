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
import mem.wit.study.lecture.LecDayService;
import mem.wit.study.lecture.LecSchedule;
import mem.wit.study.lecture.LecScheduleService;
import mem.wit.study.lecture.LectureService;
import mem.wit.study.user.RegLecList;
import mem.wit.study.user.RegLecListService;
import mem.wit.study.user.Student;
import mem.wit.study.user.StudentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wit.Paging;
import com.wit.member.Member;


@Controller
@RequestMapping("/user")
public class UserController {
	
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
	@Autowired private RegLecListService regLecListService;
	@Autowired private StudentService studentService;;
//	@Autowired private TeacherService teacherService;
	
	
	@RequestMapping(value="/account", method=RequestMethod.GET)
	public String account() {
		return "@Study_userMain";
	}
	
	@RequestMapping(value="/lecture", method=RequestMethod.GET)
	public String lecture(Model model, HttpServletRequest request, HttpSession session) {
		System.out.println("lecture GET");
		doSelectCodes(model);
		List<LecSchedule> lschduleList = lecScheduleService.selectAll();
		model.addAttribute("lschduleList", lschduleList);
		doListPaging(model, request, lschduleList.size());
		session.setAttribute("lschduleList", lschduleList);
		return "@Study_userLecture";
	}
	
	@RequestMapping(value="/applying", method=RequestMethod.POST)
	public String applying(Model model, HttpServletRequest request, HttpSession session, RegLecList regLecList) {
		String chkSbjts[] = request.getParameterValues("chkSbjt");
		if (chkSbjts != null) {
			System.out.println("length : "+chkSbjts.length);
			for (int i=0; i<chkSbjts.length; i++) {
				System.out.println("chkSbjts["+i+"] : "+chkSbjts[i]);
				regLecList.setLsId(Integer.parseInt(chkSbjts[i]));
				
				Member member = (Member)session.getAttribute("member");
				if (member != null) {
					Student student = studentService.selectById(member.getmId());
					if (student != null) {
						regLecList.setsId(student.getsId());
						regLecList.setRsCode(1);
						int updateCount = regLecListService.insert(regLecList);
						int updateKey = regLecList.getRegId();
						System.out.println("updateCount : "+updateCount);
						System.out.println("updateKey : "+updateKey);
					}
					
				}
			}
		}
		/*Member member = (Member)session.getAttribute("member");
		if (member != null) {
			Student student = studentService.selectById(member.getmId());
			if (student != null) {
				regLecList.setsId(student.getsId());
				regLecList.setRsCode(1);
				int updateCount = regLecListService.insert(regLecList);
				System.out.println("updateCount : "+updateCount);
			}
			
		}*/
		
		
		doSelectCodes(model);
		List<LecSchedule> lschduleList = lecScheduleService.selectAll();
		model.addAttribute("lschduleList", lschduleList);
		doListPaging(model, request, lschduleList.size());
		session.setAttribute("lschduleList", lschduleList);
		return "@Study_userLecture";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update() {
		return "members/register";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(int dummy) throws Exception {
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
