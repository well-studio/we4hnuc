package edu.hnuc.we.dao.impl;

import edu.hnuc.we.dao.IUserDao;
import edu.hnuc.we.entity.User;
import edu.hnuc.we.util.Operation;
import edu.hnuc.we.util.getStuUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

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
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public User login(User user) {
//		String cookie = GetStuCookie.getCookie(user.getUsr_stuId(), user.getUsr_pwd());
		String cookie = getStuUtil.getCookie(user.getUsr_stuId(), user.getUsr_pwd());
		if(cookie == null) {
			return null;
		}
		// 为什么需要验证？
/*		if(LoginCheck.check(cookie)){
			return user;
		}*/
		return user;
	}
	
	@Override
	public User adminLogin(User user) {
		String hql = "from User as u where u.usr_stuId = ? and u.usr_pwd = ?";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<User> userList = op.hqlQuery(hql, user.getUsr_stuId(), user.getUsr_pwd());
		if(userList.size()==0) return null;
		return userList.get(0);
	}
	
	@Override
	public boolean changeAdmPse(User user) {
		Operation op = new Operation(getSession());
		return op.update(user);
	}

}
