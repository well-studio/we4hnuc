package edu.hnuc.we.util;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
/**
 * 增删改查封装类
 * @author xxmodd
 */
public class Operation {
	private static Session session;
	
	public Operation(Session session) {
		Operation.session = session;
	}
	
	// 添加对象
	public boolean add(Object obj) {
		Transaction tr = null;
		try {
			tr = session.beginTransaction();
			session.save(obj);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				tr.rollback();
			} catch (HibernateException e1) {
				e1.printStackTrace();
				return false;
			}
			return false;
		} 
	}

	// 修改对象,对象信息必须完整
	public boolean update(Object obj) {
		Transaction tr = null;
		try {
//			session = HibernateSessionFactory.getCurrentSession();
			tr = session.beginTransaction();
			session.update(obj);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				tr.rollback();
			} catch (HibernateException e1) {
				e1.printStackTrace();
				return false;
			}
			return false;
		}
	}
	
	// 删除对象，对象只需要传入主键信息
	public boolean delete(Object obj) {
		Transaction tr = null;
		try {
//			session = HibernateSessionFactory.getCurrentSession();
			tr = session.beginTransaction();
			session.delete(obj);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				tr.rollback();
			} catch (HibernateException e1) {
				e1.printStackTrace();
				return false;
			}
			return false;
		} 
		/* 需要关闭么
		 * finally {
			try {
				close();
			} catch (Exception e2) {
				return false;
			}
		}
		 */
	}

	// hql查询对象
	@SuppressWarnings("rawtypes")
	public List hqlQuery(String hql,Object ...parms) {
		List list;
		Transaction tr = null;
		Query query;
		try {
			tr = session.beginTransaction();
			query = session.createQuery(hql);
			//String 类型 ， int 类型 ，其他。
			for(int i=0;i<parms.length;i++){
				String classname = parms[i].getClass().getName();
				if(classname.equals("java.lang.String")){
					query.setString(i,(String)parms[i]);
				}else if(classname.equals("java.lang.Integer")){
					query.setInteger(i,(Integer)parms[i]);
				}else {
					query.setTimestamp(i,(Timestamp)parms[i]);
				}
			}
			list = query.list();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				tr.rollback();
			} catch (HibernateException e1) {
				e1.printStackTrace();
				return null;
			}
			return null;
		}
		return list;
	}

	
	// sql查询对象
	@SuppressWarnings("rawtypes")
	public List sqlQuery(String sql,Object obj,Object ...parms) {
		List list;
		Transaction tr = null;
		Query query;
		try {
			tr = session.beginTransaction();
			query = session.createSQLQuery(sql).addEntity(obj.getClass());
			for(int i=0;i<parms.length;i++){
				String classname = parms[i].getClass().getName();
				if(classname.equals("java.lang.String")){
					query.setString(i,(String)parms[i]);
				}else{
					query.setInteger(i,(Integer)parms[i]);
				}
			}
			list = query.list();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				tr.rollback();
			} catch (HibernateException e1) {
				e1.printStackTrace();
				return null;
			}
			return null;
		} 
		return list;
	}
	
	// sql执行更新或删除
	public boolean sqlExecute(String sql,Object ...parms) {
		int result;
		Transaction tr = null;
		SQLQuery  query;
		try {
			tr = session.beginTransaction();
			query = session.createSQLQuery(sql);
			for(int i=0;i<parms.length;i++){
				String classname = parms[i].getClass().getName();
				if(classname.equals("java.lang.String")){
					query.setString(i,(String)parms[i]);
				}else{
					query.setInteger(i,(Integer)parms[i]);
				}
			}
			result = query.executeUpdate();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				tr.rollback();
			} catch (HibernateException e1) {
				e1.printStackTrace();
				return false;
			}
			return false;
		} 
		if(result!=1){
			return false;
		}
		return true;
	}
	
	// 关闭session
	public static void close() {
//		HibernateSessionFactory.closeCurrentSession();
		session.close();
	}
}
