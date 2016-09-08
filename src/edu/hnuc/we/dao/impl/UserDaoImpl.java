package edu.hnuc.we.dao.impl;

import org.hibernate.SessionFactory;

import edu.hnuc.we.dao.IUserDao;
import edu.hnuc.we.entity.User;

/**
 * 用户持久实现
 * @author Hallbow
 *
 */
public class UserDaoImpl implements IUserDao{

	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return null;
	}

}
