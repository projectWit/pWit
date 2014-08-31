package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.SbjCateMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SbjCateServiceImpl implements SbjCateService {
	
	@Autowired
	private SbjCateMapper sbjCateMapper;
	
	public List<SbjCate> selectAll() {
		return sbjCateMapper.selectAll();
	}
	
	public SbjCate select(int sbjCatCode) {
		return sbjCateMapper.select(sbjCatCode);
	}
	
	public int insert(SbjCate sbjCate) {
		return sbjCateMapper.insert(sbjCate);
	}
	
	public int update(SbjCate sbjCate) {
		return sbjCateMapper.update(sbjCate);
	}
	
	public void delete(SbjCate sbjCate) {
		sbjCateMapper.delete(sbjCate);
	}
	
}
