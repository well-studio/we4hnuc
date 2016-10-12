package edu.hnuc.we.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import edu.hnuc.we.dao.IAdminConfigDao;
import edu.hnuc.we.entity.AdminConfig;
import edu.hnuc.we.util.Operation;
/**
 * 首页定制持久实现
 * @author xxmodd
 * 
 */
public class AdminConfigDaoImpl implements IAdminConfigDao{

	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Override
	public String getValueByKey(String key) {
		String hql = "from AdminConfig as ac where ac.confKey = '" + key +"'";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<AdminConfig> lists = op.hqlQuery(hql);
		if(lists.size()>0){
			return lists.get(0).getConfValue();
		}
		return null;
		
	}
	@Override
	public boolean updateIndexBtnInfo(String conf_key , String json) {
		String sql = "UPDATE `adminconfig` SET `conf_value`= ? WHERE (`conf_key`= ? ) ";
		Operation op = new Operation(getSession());
		return op.sqlExecute(sql, json , conf_key);
	}
	
}
