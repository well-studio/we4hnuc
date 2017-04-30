package edu.hnuc.we.service.impl;

import edu.hnuc.we.dao.ILostAndFoundDao;
import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.entity.PageBean;
import edu.hnuc.we.service.ILostAndFoundService;
import edu.hnuc.we.util.ValidateUtil;

import java.util.List;

/**
 * 业务接口实现类
 * @author Hallbow
 *
 */
public class LostAndFoundServiceImpl implements ILostAndFoundService{
	
	ILostAndFoundDao lostAndFoundDao;
	public void setLostAndFoundDao(ILostAndFoundDao lostAndFoundDao) {
		this.lostAndFoundDao = lostAndFoundDao;
	}
	

	@Override
	public List<LostAndFound> getLostInfo() {
		return lostAndFoundDao.getLostInfo();
	}

	@Override
	public List<LostAndFound> getFoundInfo() {
		return lostAndFoundDao.getFoundInfo();
	}

	@Override
	public List<LostAndFound> getToCheckInfo() {
		return lostAndFoundDao.getToCheckInfo();
	}

	@Override
	public boolean letInfoBeTrue(Integer id) {
		return lostAndFoundDao.letInfoBeTrue(id);
	}

	@Override
	public boolean letInfoBeFalse(Integer id) {
		return lostAndFoundDao.letInfoBeFalse(id);
	}

	@Override
	public boolean letInfoBeTimeOut(Integer id) {
		return lostAndFoundDao.letInfoBeTimeOut(id);
	}

	@Override
	public boolean delInfoById(Integer id) {
		return lostAndFoundDao.delInfoById(id);
	}

	@Override
	public List<LostAndFound> getLostValidInfo() {
		return lostAndFoundDao.getLostValidInfo();
	}

	@Override
	public List<LostAndFound> getFoundValidInfo() {
		return lostAndFoundDao.getFoundValidInfo();
	}

	@Override
	public LostAndFound getInfoById(Integer id, boolean isAdmin) {
		LostAndFound laf = lostAndFoundDao.getInfoById(id, isAdmin);
		String str = laf.getLaf_detail();
		str = str.replaceAll("\r\n|\n", "<br>");
		laf.setLaf_detail(str);
		
		return laf;
	}

	@Override
	public boolean releaseInfo(LostAndFound laf) {
		
		// 校验信息
		if(ValidateUtil.isValidName(laf.getLaf_name())
			&& ValidateUtil.isValidPhone(laf.getLaf_phone())
			&& ValidateUtil.isValidQQ(laf.getLaf_qq())
			&& ValidateUtil.isValidWeChat(laf.getLaf_wechat())
			&& ValidateUtil.isValidDetail(laf.getLaf_detail())) {
			
			// 内容处理
//			String str = laf.getLaf_detail();
//			str =  str.replaceAll("\n|\r\n","<br>");
//			laf.setLaf_detail(str);
			
			return lostAndFoundDao.releaseInfo(laf);
		}
		
		return false;
	}

	@Override
	public boolean letInfoBeSuc(Integer id,String sucName,String sucPhone) {
		
		return lostAndFoundDao.letInfoBeSuc(id,sucName, sucPhone);
	}


	@Override
	public PageBean<LostAndFound> searchInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		lafPage = handleMainDetail(lostAndFoundDao.searchInfo(lafPage, keyWord));
		return lafPage;
	}
	

	@Override
	public PageBean<LostAndFound> searchValidInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		lafPage = handleMainDetail(lostAndFoundDao.searchValidInfo(lafPage, keyWord));
		return lafPage;
	}

	
	@Override
	public PageBean<LostAndFound> searchDoingInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		lafPage = handleMainDetail(lostAndFoundDao.searchDoingInfo(lafPage, keyWord));
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> searchToCheckInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		lafPage = handleMainDetail(lostAndFoundDao.searchToCheckInfo(lafPage, keyWord));
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> searchTimeOutInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		lafPage = handleMainDetail(lostAndFoundDao.searchTimeOutInfo(lafPage, keyWord));
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> searchSucInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		lafPage = handleMainDetail(lostAndFoundDao.searchSucInfo(lafPage, keyWord));
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> getLimitAllInfo(PageBean<LostAndFound> lafPage) {
		lafPage = handleMainDetail(lostAndFoundDao.getLimitAllInfo(lafPage));
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> getLimitToCheckInfo(PageBean<LostAndFound> lafPage) {
		lafPage = handleMainDetail(lostAndFoundDao.getLimitToCheckInfo(lafPage));
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> getLimitAllValidInfo(PageBean<LostAndFound> lafPage) {
		lafPage = handleMainDetail(lostAndFoundDao.getLimitAllValidInfo(lafPage));
		return lafPage; 
	}


	@Override
	public PageBean<LostAndFound> getLimitAllTimeOutInfo(
			PageBean<LostAndFound> lafPage) {
		lafPage = handleMainDetail(lostAndFoundDao.getLimitAllTimeOutInfo(lafPage));
		return lafPage; 
	}


	@Override
	public PageBean<LostAndFound> getLimitAllDoingInfo(
			PageBean<LostAndFound> lafPage) {
		lafPage = handleMainDetail(lostAndFoundDao.getLimitAllDoingInfo(lafPage));
		return lafPage; 
	}


	@Override
	public PageBean<LostAndFound> getLimitSucInfo(PageBean<LostAndFound> lafPage) {
		lafPage = handleMainDetail(lostAndFoundDao.getLimitSucInfo(lafPage));
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> getLimitLostInfo(
			PageBean<LostAndFound> lafPage) {
		lafPage = handleMainDetail(lostAndFoundDao.getLimitLostInfo(lafPage));
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> getLimitFindInfo(
			PageBean<LostAndFound> lafPage) {
		lafPage = handleMainDetail(lostAndFoundDao.getLimitFindInfo(lafPage));
		return lafPage;
	}
	
	/**
	 * 处理概要
	 * @param lafPage
	 * @return
	 */
	public PageBean<LostAndFound> handleMainDetail(PageBean<LostAndFound> lafPage) {
		for(LostAndFound laf : lafPage.getPageData()) {
			String con = laf.getLaf_detail();
			con = con.replaceAll("<br>", "\n");
			if(con.length() > 50) {
				laf.setLaf_mainDetail(con.substring(0,50)+"......");
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage;
	}


	@Override
	public boolean letInfoRelive(Integer id) {
		
		return lostAndFoundDao.letInfoRelive(id);
	}


	@Override
	public boolean updateInfo(LostAndFound laf) {
		
		return lostAndFoundDao.updateInfo(laf);
	}

	
}
