package mem.wit.accounting;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ACC_ProjectsMain {

	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("mem/wit/accounting/Accounting.xml");
		ACC_ProjectsDAO dao = context.getBean("acc_ProjectsDAO", ACC_ProjectsDAO.class);
		/*ACC_ProjectsDTO dto = new ACC_ProjectsDTO(2, 50, "CM프로젝트", "산타페프로젝트", 100000000, "10002");
		dao.add(dto);*/
		
		ArrayList<ACC_ProjectsDTO> arr= (ArrayList<ACC_ProjectsDTO>) dao.getAll();
		for(int i=0; i<arr.size(); i++){
			System.out.println(arr.get(i).getpName());
		}
		ACC_ProjectsDTO dto = dao.get(1);
		System.out.println(dto.getpName());
	}
}
