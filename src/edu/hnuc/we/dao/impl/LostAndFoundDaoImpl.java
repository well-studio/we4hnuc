package edu.hnuc.we.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Transactional;

import edu.hnuc.we.dao.ILostAndFoundDao;
import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.util.Operation;

/**
 * 失物招领持久层实现
 * 
 * @author Hallbow&xxmodd
 * 
 */
public class LostAndFoundDaoImpl implements ILostAndFoundDao {
	private static Session session;

	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	/**
	 * 根据发布时间获取所有的失物招领信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getAllInfo() {
		String hql = "from LostAndFound as laf order by laf.laf_pubtime";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}
	

	@Override
	/**
	 * 获取所有的招领信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getLostInfo() {
		String hql = "from LostAndFound as laf where laf.laf_type = 0";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}

	@Override
	/**
	 * 获取所有的寻物信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getFoundInfo() {
		String hql = "from LostAndFound as laf where laf.laf_type = 1";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}

	@Override
	/**
	 * 获取所有的需要审核的信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getToCheckInfo() {
		String hql = "from LostAndFound as laf where laf.laf_stat = 3";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}

	@Override
	/**
	 * 通过审核(管理员)
	 * @return
	 */
	public boolean letInfoBeTrue(Integer id) {
		String sql = "UPDATE `lostandfound` SET `laf_stat`='1' WHERE (`laf_id`= ?)";
		Operation op = new Operation(getSession());
		return op.sqlExecute(sql,id);
	}

	@Override
	/**
	 * 审核失败(管理员)
	 * @return
	 */
	public boolean letInfoBeFalse(Integer id) {
		String sql = "UPDATE `lostandfound` SET `laf_stat`='4' WHERE (`laf_id`= ?)";
		Operation op = new Operation(getSession());
		return op.sqlExecute(sql,id);
	}

	@Override
	/**
	 * 招领信息失效 (管理员)
	 * @return
	 */
	public boolean letInfoBeTimeOut(Integer id) {
		String sql = "UPDATE `lostandfound` SET `laf_stat`='2' WHERE (`laf_id`= ?)";
		Operation op = new Operation(getSession());
		return op.sqlExecute(sql,id);
	}

	@Override
	/**
	 * 根据id删除info(管理员)
	 * @return
	 */
	public boolean delInfoById(Integer id) {
		String sql = "DELETE FROM `lostandfound` WHERE (`laf_id`= ?)";
		Operation op = new Operation(getSession());
		return op.sqlExecute(sql,id);
	}

	@Override
	/**
	 * 获取所有有效的的失物招领信息
	 * @return
	 */
	public List<LostAndFound> getAllValidInfo() {
		String hql = "from LostAndFound as laf where laf.laf_stat = 1";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}

	@Override
	/**
	 * 获取所有有效的招领信息
	 * @return
	 */
	public List<LostAndFound> getLostValidInfo() {
		String hql = "from LostAndFound as laf where laf.laf_stat = 1 and laf.laf_type = 0";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}

	@Override
	/**
	 * 获取所有有效的寻物信息
	 * @return
	 */
	public List<LostAndFound> getFoundValidInfo() {
		String hql = "from LostAndFound as laf where laf.laf_stat = 1 and laf.laf_type = 1";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}

	@Override
	/**
	 * 根据id查询一个失物招领信息
	 * @param id
	 * @return
	 */
	public LostAndFound getInfoById(Integer id) {
		String hql = "from LostAndFound as laf where laf.laf_id = ?";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql,id);
		return lists.get(0);
	}

	@Override
	/**
	 * 发布一条新的信息(默认待审核状态)
	 * @return
	 */
	public boolean releaseInfo(LostAndFound laf) {
		Operation op = new Operation(getSession());
		return op.add(laf);
	}

	@Override
	/**
	 * 认领成功 or 寻物成功
	 * @return
	 */
	public boolean letInfoBeSuc(Integer id) {
		String sql = "UPDATE `lostandfound` SET `laf_stat`='6' WHERE (`laf_id`= ?)";
		Operation op = new Operation(getSession());
		return op.sqlExecute(sql,id);
	}

	@Override
	/**
	 * 根据关键词搜索失物招领信息
	 * @param id
	 * @return
	 */
	public List<LostAndFound> searchInfo(String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_detail like ?";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql,"%"+keyWord+"%");
		return lists;
	}	

}
