package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.LecStatusMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LecStatusServiceImpl implements LecStatusService {
	
	@Autowired
	private LecStatusMapper lecStatusMapper;
	
	public List<LecStatus> selectAll() {
		return lecStatusMapper.selectAll();
	}
	
	public LecStatus select(int lsCode) {
		return lecStatusMapper.select(lsCode);
	}
	
	public int insert(LecStatus lecStatus) {
		return lecStatusMapper.insert(lecStatus);
	}
	
	public int update(LecStatus lecStatus) {
		return lecStatusMapper.update(lecStatus);
	}
	
	public void delete(LecStatus lecStatus) {
		lecStatusMapper.delete(lecStatus);
	}
	
}
