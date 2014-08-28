package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.LecCate;

public interface LecCateMapper {
	
	public List<LecCate> selectAll();
	
	public LecCate select(String lcCode);
	
	public int insert(LecCate lecCate);
	
	public int update(LecCate lecCate);
	
	public void delete(LecCate lecCate);
}
