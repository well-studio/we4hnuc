package edu.hnuc.we.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;

import edu.hnuc.we.dao.ILostAndFoundDao;
import edu.hnuc.we.entity.LostAndFound;


/**
 * 失物招领持久层实现
 * @author Hallbow
 *
 */
public class LostAndFoundDaoImpl implements ILostAndFoundDao {
	
	SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
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
