package edu.hnuc.we.test;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import edu.hnuc.we.dao.impl.LostAndFoundDaoImpl;
import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.entity.PageBean;

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
	
	@Test
	public void testE() {
		String keyWord = "";
		try {
			keyWord = java.net.URLDecoder.decode("æµè¯", "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		System.out.println(keyWord);
		
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
	public void getLostValidInfoTest() {
		System.out.println(lad.getLostValidInfo().size());
	}

	@Test //true
	public void getFoundValidInfoTest() {
		System.out.println(lad.getFoundValidInfo().size());
	}
	

	@Test //true
	public void getInfoByIdTest() {
		System.out.println(lad.getInfoById(10, true).toString());
	}
	
	@Test //true
	public void releaseInfoTest() {
		LostAndFound laf = new LostAndFound();
		laf.setLaf_detail("测试1111....");
		laf.setLaf_name("曾胡洪11");
		laf.setLaf_phone("15211183722");
		laf.setLaf_stuid("140930021");
		laf.setLaf_pubtime(new Timestamp(new Date().getTime()));
		laf.setLaf_wechat("愤怒的小荔枝");
		System.out.println(lad.releaseInfo(laf));
	}
	
	@Test //true
	public void letInfoBeSucTest() {
		System.out.println(lad.letInfoBeSuc(1));
	}
	
	@Test //true
	public void getLimitAllInfoTest() {
		System.out.println(lad.getLimitAllInfo(new PageBean<LostAndFound>()).getPageData().size());
	}
	
	@Test //true
	public void getLimitToCheckInfo() {
		System.out.println(lad.getLimitToCheckInfo(new PageBean<LostAndFound>()).getPageData().size());
	}
	
	@Test //true
	public void getLimitAllValidInfo() {
		System.out.println(lad.getLimitAllValidInfo(new PageBean<LostAndFound>()).getPageData().size());
	}
	
	
}
