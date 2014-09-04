package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.user.Student;

public interface StudentMapper {
	
	public List<Student> selectAll();
	
	public List<Student> select(Student student);
	
	public Student selectById(String mId);
	
	public int insert(Student student);
	
	public int update(Student student);
	
	public void delete(Student student);
}
