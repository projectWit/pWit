package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_DeptorCreditorMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext(
				"mem/wit/accounting/Accounting.xml");
		ACC_DeptorCreditorDAO dao = context.getBean("acc_DeptorCreditorDAO", ACC_DeptorCreditorDAO.class);
		ACC_DeptorCreditorDTO dto = new ACC_DeptorCreditorDTO(2, "총 자산, 부채+자본", "대변");
		dao.add(dto);
		/*ArrayList<ACC_StateDTO> arr = (ArrayList<ACC_StateDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getsName());
		}
		ACC_StateDTO dto = dao.get(2);
		System.out.println(dto.getsName());*/
	}
}
