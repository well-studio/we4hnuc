package edu.hnuc.we.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import edu.hnuc.we.dao.IUserDao;
import edu.hnuc.we.entity.User;
import edu.hnuc.we.jwgl.GetStuCookie;
import edu.hnuc.we.jwgl.LoginCheck;
import edu.hnuc.we.util.Operation;

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
		if(LoginCheck.check(GetStuCookie.getCookie(user.getUsr_stuId(), user.getUsr_pwd()))){
			return user;
		}
		return null;

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

}
