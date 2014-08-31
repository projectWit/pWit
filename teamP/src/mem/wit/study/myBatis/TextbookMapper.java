package mem.wit.study.myBatis;

import java.util.List;

import mem.wit.study.codes.Textbook;

public interface TextbookMapper {
	
	public List<Textbook> selectAll();
	
	public Textbook select(int tbCode);
	
	public int insert(Textbook textbook);
	
	public int update(Textbook textbook);
	
	public void delete(Textbook textbook);
}
