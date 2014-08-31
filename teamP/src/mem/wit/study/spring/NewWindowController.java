package mem.wit.study.spring;

import java.util.List;

import mem.wit.study.codes.SbjCate;
import mem.wit.study.codes.SbjCateService;
import mem.wit.study.lecture.Lecture;
import mem.wit.study.lecture.LectureService;
import mem.wit.study.teacher.Teacher;
import mem.wit.study.teacher.TeacherService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/newWindow")
public class NewWindowController {
	
	@Autowired private TeacherService teacherService;
	@Autowired private SbjCateService sbjCateService;
	@Autowired private LectureService lectureService;
	
	@RequestMapping(value="/findTeacher", method=RequestMethod.GET)
	public String teacher(Model model) {
//		System.out.println("teacher GET");
		List<Teacher> tList = teacherService.selectAll();
		List<SbjCate> scList = sbjCateService.selectAll();
		model.addAttribute("tList", tList);
		model.addAttribute("scList", scList);
		return "p_findTeacher";
	}
	@RequestMapping(value="/findTeacher", method=RequestMethod.POST)
	public String teacher(Model model, Teacher teacher, String tIdText) throws Exception {
//		System.out.println("teacher POST");
		if (tIdText != "") {
			teacher.settId(Integer.parseInt(tIdText));
		}
		List<Teacher> tList = teacherService.select(teacher);
		List<SbjCate> scList = sbjCateService.selectAll();
		model.addAttribute("tList", tList);
		model.addAttribute("scList", scList);
		return "p_findTeacher";
	}
	
	@RequestMapping(value="/findLecture", method=RequestMethod.GET)
	public String lecture(Model model) {
		System.out.println("lecture GET");
		List<Lecture> lecList = lectureService.selectAll();
		model.addAttribute("lecList", lecList);
		/*List<Teacher> tList = teacherService.selectAll();
		List<SbjCate> scList = sbjCateService.selectAll();
		model.addAttribute("tList", tList);
		model.addAttribute("scList", scList);*/
		return "p_findLecture";
	}
	@RequestMapping(value="/findLecture", method=RequestMethod.POST)
	public String lecture(Model model, Teacher teacher, String tIdText) throws Exception {
		System.out.println("lecture POST");
		/*if (tIdText != "") {
			teacher.settId(Integer.parseInt(tIdText));
		}
		List<Teacher> tList = teacherService.select(teacher);
		List<SbjCate> scList = sbjCateService.selectAll();
		model.addAttribute("tList", tList);
		model.addAttribute("scList", scList);*/
		return "p_findLecture";
	}
	
}
