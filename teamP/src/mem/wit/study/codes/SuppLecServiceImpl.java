package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.SuppLecMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SuppLecServiceImpl implements SuppLecService {
	
	@Autowired
	private SuppLecMapper suppLecMapper;
	
	public List<SuppLec> selectAll() {
		return suppLecMapper.selectAll();
	}
	
	public SuppLec select(String slCode) {
		return suppLecMapper.select(slCode);
	}
	
	public int insert(SuppLec suppLec) {
		return suppLecMapper.insert(suppLec);
	}
	
	public int update(SuppLec suppLec) {
		return suppLecMapper.update(suppLec);
	}
	
	public void delete(SuppLec suppLec) {
		suppLecMapper.delete(suppLec);
	}
	
}
