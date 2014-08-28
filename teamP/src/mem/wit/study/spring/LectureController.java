package mem.wit.study.spring;

import mem.wit.study.lecture.Lecture;
import mem.wit.study.lecture.LectureService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/lecture")
public class LectureController {
	
	@Autowired
	private LectureService lectureService;
	
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
	public String insert() {
		return "@Study_lecGenerate";
	}
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insert(Lecture lecture) throws Exception {
//		lectureService.insert(lecture);
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
