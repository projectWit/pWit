package gss;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Spring {
	public static ApplicationContext context;
	static ConfigurableApplicationContext confContext;
	
	public static Object getBean(String xml, String beanId) {
		context = new ClassPathXmlApplicationContext(xml);
		return context.getBean(beanId);
	}
	
	public static Object getBeanConf(String xml, String beanId) {
		confContext = new ClassPathXmlApplicationContext(xml);
		return confContext.getBean(beanId);
	}
	
	public static void closeConf() {
		confContext.close();
	}
}
