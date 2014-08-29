package mem.wit.accounting;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_SERVICE {
	
	ACC_AccountsDTO dto;

	public void accounting() {
		dto = new ACC_AccountsDTO();
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_AccountsDAO dao = context.getBean("acc_AccountsDAO", ACC_AccountsDAO.class);
		dao.add(dto);
	}
}
