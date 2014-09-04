package mem.wit.study.user;

import java.util.List;

import mem.wit.study.myBatis.StudentMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentMapper studentMapper;
	
	public List<Student> selectAll() {
		return studentMapper.selectAll();
	}
	
	public List<Student> select(Student student) {
		return studentMapper.select(student);
	}
	
	public Student selectById(String mId) {
		return studentMapper.selectById(mId);
	}
	
	public int insert(Student student) {
		return studentMapper.insert(student);
	}
	
	public int update(Student student) {
		return studentMapper.update(student);
	}
	
	public void delete(Student student) {
		studentMapper.delete(student);
	}
	
}
