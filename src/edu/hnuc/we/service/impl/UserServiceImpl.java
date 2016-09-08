package edu.hnuc.we.service.impl;

import edu.hnuc.we.dao.IUserDao;
import edu.hnuc.we.entity.User;
import edu.hnuc.we.service.IUserService;

/**
 * 用户业务实现
 * @author Hallbow
 *
 */
public class UserServiceImpl implements IUserService{
	
	private IUserDao userDao;
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public User login(User user) {
		
		return userDao.login(user);
	}

}
