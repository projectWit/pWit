package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_TaxMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext(
				"mem/wit/accounting/Accounting.xml");
		ACC_TaxDAO dao = context.getBean("acc_TaxDAO", ACC_TaxDAO.class);
		ACC_TaxDTO dto = new ACC_TaxDTO(2, "간이과세", "연간매출액 4,800이하", 0.07);
		dao.add(dto);
		/*ArrayList<ACC_TaxDTO> arr2 = (ArrayList<ACC_TaxDTO>) dao.getAll();
		for(int i=0; i<arr2.size(); i++){
			System.out.println(arr2.get(i).gettName());
		}
		ACC_TaxDTO dto = dao.get(1);
		System.out.println(dto.gettName());*/
	}
}
