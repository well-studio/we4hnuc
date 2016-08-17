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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LostAndFound> getLostInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LostAndFound> getFoundInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LostAndFound> getToCheckInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean letInfoBeTrue(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean letInfoBeFalse(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean letInfoBeTimeOut(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delInfoById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<LostAndFound> getAllValidInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LostAndFound> getLostValidInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LostAndFound> getFoundValidInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LostAndFound getInfoById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean releaseInfo() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean letInfoBeSuc(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public List<LostAndFound> searchInfo(String keyWord) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
