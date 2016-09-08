package edu.hnuc.we.dao;

import edu.hnuc.we.entity.User;

/**
 * 用户持久接口
 * @author Hallbow
 *
 */
public interface IUserDao {
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	public User login(User user);
	
}
