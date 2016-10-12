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
	
	/**
	 * 管理员登录
	 * @param user
	 * @return
	 */
	public User adminLogin(User user);
	
	/**
	 * 管理员修改密码
	 * @param user
	 * @return
	 */
	public boolean changeAdmPse(User user);
	
}
