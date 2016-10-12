package edu.hnuc.we.service.impl;

import edu.hnuc.we.dao.IUserDao;
import edu.hnuc.we.entity.User;
import edu.hnuc.we.service.IUserService;
import edu.hnuc.we.util.ValidateUtil;

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
		// 校验
		if(ValidateUtil.isValidStuId(user.getUsr_stuId()) && ValidateUtil.isValidPass(user.getUsr_pwd())) {
			return userDao.login(user);
		}
		return null;
	}

	@Override
	public User adminLogin(User user) {
		
		return userDao.adminLogin(user);
	}

	@Override
	public boolean changeAdmPse(User user) {
		
		return userDao.changeAdmPse(user);
	}

}
