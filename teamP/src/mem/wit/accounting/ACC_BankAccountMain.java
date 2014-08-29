package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_BankAccountMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_BankAccountDAO dao = context.getBean("acc_BankAccountDAO", ACC_BankAccountDAO.class);
		ACC_BankAccountDTO dto = new ACC_BankAccountDTO(2, "신한은행", 100000000, "신한은행계좌");
		dao.add(dto);
		
		/*ArrayList<ACC_BankAccountDTO> arr= (ArrayList<ACC_BankAccountDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getBaName());
		}
		ACC_BankAccountDTO dto = dao.get(1);
		System.out.println(dto.getBaName());*/
	}
}
