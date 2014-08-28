package mem.wit.study.codes;

import java.util.List;

public interface LecCateService {
	
	public List<LecCate> selectAll();
	
	public LecCate select(String lcCode);
	
	public int insert(LecCate lecCate);
	
	public int update(LecCate lecCate);
	
	public void delete(LecCate lecCate);
}
