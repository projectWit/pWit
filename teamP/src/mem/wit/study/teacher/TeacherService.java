package mem.wit.study.teacher;

import java.util.List;

public interface TeacherService {
	
	public List<Teacher> selectAll();
	
	public List<Teacher> select(Teacher teacher);
	
	public int insert(Teacher teacher);
	
	public int update(Teacher teacher);
	
	public void delete(Teacher teacher);
}
