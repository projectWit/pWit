package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.teacher.Teacher;

public interface TeacherMapper {
	
	public List<Teacher> selectAll();
	
	public List<Teacher> select(Teacher teacher);
	
	public int insert(Teacher teacher);
	
	public int update(Teacher teacher);
	
	public void delete(Teacher teacher);
}
