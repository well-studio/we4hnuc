package edu.hnuc.we.service.impl;

import java.util.List;

import edu.hnuc.we.dao.ILostAndFoundDao;
import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.entity.PageBean;
import edu.hnuc.we.service.ILostAndFoundService;

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
	public List<LostAndFound> getAllInfo() {
		return lostAndFoundDao.getAllInfo();
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
	public List<LostAndFound> getAllValidInfo() {
		return lostAndFoundDao.getAllValidInfo();
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
	public LostAndFound getInfoById(Integer id) {
		return lostAndFoundDao.getInfoById(id);
	}

	@Override
	public boolean releaseInfo(LostAndFound laf) {
		return lostAndFoundDao.releaseInfo(laf);
	}

	@Override
	public boolean letInfoBeSuc(Integer id) {
		return lostAndFoundDao.letInfoBeSuc(id);
	}


	@Override
	public List<LostAndFound> searchInfo(String keyWord) {
		List<LostAndFound> lafList = lostAndFoundDao.searchInfo(keyWord);
		for(LostAndFound laf : lafList) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafList;
	}
	
	@Override
	public List<LostAndFound> searchDoingInfo(String keyWord) {
		List<LostAndFound> lafList = lostAndFoundDao.searchDoingInfo(keyWord);
		for(LostAndFound laf : lafList) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafList;
	}


	@Override
	public List<LostAndFound> searchToCheckInfo(String keyWord) {
		List<LostAndFound> lafList = lostAndFoundDao.searchToCheckInfo(keyWord);
		for(LostAndFound laf : lafList) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafList;
	}


	@Override
	public List<LostAndFound> searchTimeOutInfo(String keyWord) {
		List<LostAndFound> lafList = lostAndFoundDao.searchTimeOutInfo(keyWord);
		for(LostAndFound laf : lafList) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafList;
	}


	@Override
	public List<LostAndFound> searchSucInfo(String keyWord) {
		List<LostAndFound> lafList = lostAndFoundDao.searchSucInfo(keyWord);
		for(LostAndFound laf : lafList) {
			String con = laf.getLaf_detail();
			if(con.length() > 40) {
				laf.setLaf_mainDetail(con.substring(0,40));
			} else {
				laf.setLaf_mainDetail(con);
			}
		}
		return lafList;
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
