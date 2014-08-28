package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_StateMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext(
				"mem/wit/accounting/Accounting.xml");
		ACC_StateDAO dao = context.getBean("acc_StateDAO", ACC_StateDAO.class);
		/*ACC_StateDTO dto = new ACC_StateDTO(2, "매각", "해당 자산을 매각");
		dao.add(dto);*/
		ArrayList<ACC_StateDTO> arr = (ArrayList<ACC_StateDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getsName());
		}
		ACC_StateDTO dto = dao.get(2);
		System.out.println(dto.getsName());
	}
}
