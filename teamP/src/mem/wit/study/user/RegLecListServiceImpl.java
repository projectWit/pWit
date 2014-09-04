package mem.wit.study.user;

import java.util.List;

import mem.wit.study.myBatis.RegLecListMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegLecListServiceImpl implements RegLecListService {
	
	@Autowired
	private RegLecListMapper regLecListMapper;
	
	public List<RegLecList> selectAll() {
		return regLecListMapper.selectAll();
	}
	
	public List<RegLecList> select(RegLecList regLecList) {
		return regLecListMapper.select(regLecList);
	}
	
	public int insert(RegLecList regLecList) {
		return regLecListMapper.insert(regLecList);
	}
	
	public int update(RegLecList regLecList) {
		return regLecListMapper.update(regLecList);
	}
	
	public void delete(RegLecList regLecList) {
		regLecListMapper.delete(regLecList);
	}
	
}
