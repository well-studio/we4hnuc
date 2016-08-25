package edu.hnuc.we.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import edu.hnuc.we.dao.impl.LostAndFoundDaoImpl;
import edu.hnuc.we.entity.LostAndFound;

/**
 * @author xxmodd 失物招领持久层测试
 * 
 */
public class LostAndFoundTest {

	

	
	private static ApplicationContext context = null;
	private static LostAndFoundDaoImpl lad = null;
	static {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		lad = context.getBean(LostAndFoundDaoImpl.class);
	}
	
	@Test //true
	public void getAllInfoTest() {
		System.out.println(lad.getAllInfo().size());
	}

	@Test //true
	public void getLostInfoTest() {
		System.out.println(lad.getLostInfo().size());
	}
	
	@Test //true
	public void getFoundInfoTest() {
		System.out.println(lad.getFoundInfo().size());
	}
	
	@Test //true
	public void getToCheckInfoTest() {
		System.out.println(lad.getToCheckInfo().size());
	}
	
	@Test //true
	public void letInfoBeTrueTest() {
		System.out.println(lad.letInfoBeTrue(1));
	}
	
	@Test //true
	public void letInfoBeFalseTest() {
		System.out.println(lad.letInfoBeFalse(1));
	}
	
	@Test //true
	public void letInfoBeTimeOutTest() {
		System.out.println(lad.letInfoBeTimeOut(1));
	}
	
	@Test //true
	public void delInfoByIdTest() {
		System.out.println(lad.delInfoById(2));
	}
	
	@Test //true
	public void getAllValidInfoTest() {
		System.out.println(lad.getAllValidInfo().size());
	}
	
	@Test //true
	public void getLostValidInfoTest() {
		System.out.println(lad.getLostValidInfo().size());
	}

	@Test //true
	public void getFoundValidInfoTest() {
		System.out.println(lad.getFoundValidInfo().size());
	}
	

	@Test //true
	public void getInfoByIdTest() {
		System.out.println(lad.getInfoById(1).toString());
	}
	
	@Test //true
	public void releaseInfoTest() {
		System.out.println(lad.releaseInfo(new LostAndFound()));
	}
	
	@Test //true
	public void letInfoBeSucTest() {
		System.out.println(lad.letInfoBeSuc(1));
	}
	
	@Test //true
	public void searchInfoTest() {
		System.out.println(lad.searchInfo("啦"));
	}
	
}
