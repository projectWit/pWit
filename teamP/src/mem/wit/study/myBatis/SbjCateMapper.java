package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.SbjCate;

public interface SbjCateMapper {
	
	public List<SbjCate> selectAll();
	
	public SbjCate select(int sbjCatCode);
	
	public int insert(SbjCate sbjCate);
	
	public int update(SbjCate sbjCate);
	
	public void delete(SbjCate sbjCate);
}
