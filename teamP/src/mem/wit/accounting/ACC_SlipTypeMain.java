package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_SlipTypeMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_SlipTypeDAO dao = context.getBean("acc_SlipTypeDAO", ACC_SlipTypeDAO.class);
		ACC_SlipTypeDTO dto = new ACC_SlipTypeDTO(3, "일반", "일반전표");
		dao.add(dto);
		
		/*ArrayList<ACC_AccountsDTO> arr= (ArrayList<ACC_AccountsDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getaName());
		}
		ACC_AccountsDTO dto = dao.get(2);
		System.out.println(dto.getaName());*/
	}

}
