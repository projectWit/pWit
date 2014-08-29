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
import mem.wit.study.codes.TbookJoin;
import mem.wit.study.codes.TbookJoinService;
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
	@Autowired private TbookJoinService tbookJoinService;
//	@Autowired private TeacherService teacherService;
	
	@RequestMapping(value="/select", method=RequestMethod.GET)
	public String select() {
		return "members/register";
	}
	@RequestMapping(value="/select", method=RequestMethod.POST)
	public String select(String alId) throws Exception {
		lectureService.select(alId);
		return "members/welcome";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String insert(Model model) {
		System.out.println("insert GET");
		List<SuppLec> slList = suppLecService.selectAll();
		List<LecCate> lcList = lecCateService.selectAll();
		List<Subject> sbjList = subjectService.selectAll();
		List<ExamGrade> egList = examGradeService.selectAll();
		List<TbookJoin> tbList = tbookJoinService.selectJoinAll();
		model.addAttribute("slList", slList);
		model.addAttribute("lcList", lcList);
		model.addAttribute("sbjList", sbjList);
		model.addAttribute("egList", egList);
		model.addAttribute("tbList", tbList);
		return "@Study_lecGenerate";
	}
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insert(Lecture lecture) throws Exception {
//		lectureService.insert(lecture);
		System.out.println("insert POST");
		return "@Study_lecGenerate";
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
