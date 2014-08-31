package mem.wit.study.codes;

import java.util.List;

public interface SbjCateService {
	
	public List<SbjCate> selectAll();
	
	public SbjCate select(int sbjCatCode);
	
	public int insert(SbjCate sbjCate);
	
	public int update(SbjCate sbjCate);
	
	public void delete(SbjCate sbjCate);
}
