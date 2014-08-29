package mem.wit.study.codes;

import java.util.List;

import mem.wit.study.myBatis.TextbookMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TbookJoinServiceImpl implements TbookJoinService {
	
	@Autowired
	private TextbookMapper textbookMapper;
	
	public List<TbookJoin> selectJoinAll() {
		return textbookMapper.selectJoinAll();
	}
	
/*	public Textbook select(int tbCode) {
		return textbookMapper.select(tbCode);
	}
	
	public int insert(Textbook textbook) {
		return textbookMapper.insert(textbook);
	}
	
	public int update(Textbook textbook) {
		return textbookMapper.update(textbook);
	}
	
	public void delete(Textbook textbook) {
		textbookMapper.delete(textbook);
	}
	*/
}
