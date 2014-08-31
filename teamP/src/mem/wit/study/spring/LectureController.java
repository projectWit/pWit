package mem.wit.study.spring;

import java.util.List;

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
	public String search(Model model) {
//		System.out.println("search GET");
		List<SuppLec> slList = suppLecService.selectAll();
		List<LecCate> lcList = lecCateService.selectAll();
		List<Subject> sbjList = subjectService.selectAll();
		List<ExamGrade> egList = examGradeService.selectAll();
		List<Textbook> tbList = textbookService.selectAll();
		List<Lecture> lecList = lectureService.selectAll();
		model.addAttribute("slList", slList);
		model.addAttribute("lcList", lcList);
		model.addAttribute("sbjList", sbjList);
		model.addAttribute("egList", egList);
		model.addAttribute("tbList", tbList);
		model.addAttribute("lecList", lecList);
		return "@Study_lecSearch";
	}
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String search() throws Exception {
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
	
}
