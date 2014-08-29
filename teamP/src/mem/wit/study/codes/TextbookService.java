package mem.wit.study.codes;

import java.util.List;

public interface TextbookService {
	
	public List<Textbook> selectAll();
	
	public Textbook select(int tbCode);
	
	public int insert(Textbook textbook);
	
	public int update(Textbook textbook);
	
	public void delete(Textbook textbook);
}
