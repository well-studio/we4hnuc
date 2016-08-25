package edu.hnuc.we.service.impl;

import java.util.List;

import edu.hnuc.we.dao.ILostAndFoundDao;
import edu.hnuc.we.entity.LostAndFound;
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
		return lostAndFoundDao.searchInfo(keyWord);
	}
	
	
}
