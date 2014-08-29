package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_CustomersMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");

		ACC_CustomersDAO dao = context.getBean("acc_CustomersDAO", ACC_CustomersDAO.class);
		ACC_CustomersDTO dto = new ACC_CustomersDTO(5, "도비", "02-0000", 231,
				"서울 강동구", "휴대폰");
		dao.add(dto);
		/*ACC_CustomersDTO dto = new ACC_CustomersDTO(2, "다산", "02-0000", 231,
				"미국 미주리주 734", "휴대폰");
		dao.add(dto);
		ArrayList<ACC_CustomersDTO> arr = (ArrayList<ACC_CustomersDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getcAddr());
		}		
		ACC_CustomersDTO dto = dao.get(1);
		System.out.println(dto.getcName());*/
	}
}
