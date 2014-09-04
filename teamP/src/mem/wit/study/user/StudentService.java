package mem.wit.study.user;

import java.util.List;

public interface StudentService {
	
	public List<Student> selectAll();
	
	public List<Student> select(Student student);
	
	public Student selectById(String mId);
	
	public int insert(Student student);
	
	public int update(Student student);
	
	public void delete(Student student);
}
