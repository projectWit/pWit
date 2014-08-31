package mem.wit.study.teacher;

import java.util.List;

import mem.wit.study.myBatis.TeacherMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherServiceImpl implements TeacherService {
	
	@Autowired
	private TeacherMapper teacherMapper;
	
	public List<Teacher> selectAll() {
		return teacherMapper.selectAll();
	}
	
	public List<Teacher> select(Teacher teacher) {
		return teacherMapper.select(teacher);
	}
	
	public int insert(Teacher teacher) {
		return teacherMapper.insert(teacher);
	}
	
	public int update(Teacher teacher) {
		return teacherMapper.update(teacher);
	}
	
	public void delete(Teacher teacher) {
		teacherMapper.delete(teacher);
	}
	
}
