package edu.hnuc.we.service.impl;

import java.util.List;

import edu.hnuc.we.dao.ILostAndFoundDao;
import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.entity.PageBean;
import edu.hnuc.we.service.ILostAndFoundService;
import edu.hnuc.we.util.ValidateUtil;

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
		return lostAndFoundDao.getInfoById(id, isAdmin);
	}

	@Override
	public boolean releaseInfo(LostAndFound laf) {
		
		// 校验信息
		if(ValidateUtil.isValidName(laf.getLaf_name())
			&& ValidateUtil.isValidPhone(laf.getLaf_phone())
			&& ValidateUtil.isValidQQ(laf.getLaf_qq())
			&& ValidateUtil.isValidStuId(laf.getLaf_stuid())
			&& ValidateUtil.isValidWeChat(laf.getLaf_wechat())
			&& ValidateUtil.isValidDetail(laf.getLaf_detail())) {
			
			return lostAndFoundDao.releaseInfo(laf);
		}
		
		return false;
	}

	@Override
	public boolean letInfoBeSuc(Integer id) {
		return lostAndFoundDao.letInfoBeSuc(id);
	}


	@Override
	public PageBean<LostAndFound> searchInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		PageBean<LostAndFound> lafPage2 = lostAndFoundDao.searchInfo(lafPage, keyWord);
		for(LostAndFound laf : lafPage2.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage2;
	}
	

	@Override
	public PageBean<LostAndFound> searchValidInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		PageBean<LostAndFound> lafPage2 = lostAndFoundDao.searchValidInfo(lafPage, keyWord);
		for(LostAndFound laf : lafPage2.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage2;
	}

	
	@Override
	public PageBean<LostAndFound> searchDoingInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		PageBean<LostAndFound> lafPage2 = lostAndFoundDao.searchDoingInfo(lafPage, keyWord);
		for(LostAndFound laf : lafPage2.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage2;
	}


	@Override
	public PageBean<LostAndFound> searchToCheckInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		PageBean<LostAndFound> lafPage2 = lostAndFoundDao.searchToCheckInfo(lafPage, keyWord);
		for(LostAndFound laf : lafPage2.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage2;
	}


	@Override
	public PageBean<LostAndFound> searchTimeOutInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		PageBean<LostAndFound> lafPage2 = lostAndFoundDao.searchTimeOutInfo(lafPage, keyWord);
		for(LostAndFound laf : lafPage2.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage2;
	}


	@Override
	public PageBean<LostAndFound> searchSucInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		PageBean<LostAndFound> lafPage2 = lostAndFoundDao.searchSucInfo(lafPage, keyWord);
		for(LostAndFound laf : lafPage2.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage2;
	}


	@Override
	public PageBean<LostAndFound> getLimitAllInfo(PageBean<LostAndFound> lafPage) {
		lafPage = lostAndFoundDao.getLimitAllInfo(lafPage);
		for(LostAndFound laf : lafPage.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> getLimitToCheckInfo(PageBean<LostAndFound> lafPage) {
		lafPage = lostAndFoundDao.getLimitToCheckInfo(lafPage);
		for(LostAndFound laf : lafPage.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage;
	}


	@Override
	public PageBean<LostAndFound> getLimitAllValidInfo(PageBean<LostAndFound> lafPage) {
		lafPage = lostAndFoundDao.getLimitAllValidInfo(lafPage);
		for(LostAndFound laf : lafPage.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage; 
	}


	@Override
	public PageBean<LostAndFound> getLimitAllTimeOutInfo(
			PageBean<LostAndFound> lafPage) {
		
		lafPage = lostAndFoundDao.getLimitAllTimeOutInfo(lafPage);
		for(LostAndFound laf : lafPage.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage; 
	}


	@Override
	public PageBean<LostAndFound> getLimitAllDoingInfo(
			PageBean<LostAndFound> lafPage) {
		lafPage = lostAndFoundDao.getLimitAllDoingInfo(lafPage);
		for(LostAndFound laf : lafPage.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage; 
	}


	@Override
	public PageBean<LostAndFound> getLimitSucInfo(PageBean<LostAndFound> lafPage) {
		lafPage = lostAndFoundDao.getLimitSucInfo(lafPage);
		for(LostAndFound laf : lafPage.getPageData()) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafPage;
	}


	
}
