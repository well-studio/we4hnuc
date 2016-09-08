package edu.hnuc.we.service;

import edu.hnuc.we.entity.User;

/**
 * 用户业务接口
 * @author Hallbow
 *
 */
public interface IUserService {
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	public User login(User user);
	
	
}
