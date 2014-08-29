package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.LecCateMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LecCateServiceImpl implements LecCateService {
	
	@Autowired
	private LecCateMapper lecCateMapper;
	
	public List<LecCate> selectAll() {
		return lecCateMapper.selectAll();
	}
	
	public LecCate select(int lcCode) {
		return lecCateMapper.select(lcCode);
	}
	
	public int insert(LecCate lecCate) {
		return lecCateMapper.insert(lecCate);
	}
	
	public int update(LecCate lecCate) {
		return lecCateMapper.update(lecCate);
	}
	
	public void delete(LecCate lecCate) {
		lecCateMapper.delete(lecCate);
	}
	
}
