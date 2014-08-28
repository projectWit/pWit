package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_AccountsMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_AccountsDAO dao = context.getBean("acc_AccountsDAO", ACC_AccountsDAO.class);
		ACC_AccountsDTO dto = new ACC_AccountsDTO(5, "미수금", "미수금계정", "10001");
		dao.add(dto);
		
		/*ArrayList<ACC_AccountsDTO> arr= (ArrayList<ACC_AccountsDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getaName());
		}
		ACC_AccountsDTO dto = dao.get(2);
		System.out.println(dto.getaName());*/
	}

}
