package edu.hnuc.we.dao.impl;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import edu.hnuc.we.dao.ILostAndFoundDao;
import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.entity.PageBean;
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
		Session s = sessionFactory.getCurrentSession();
		if(s != null) {
			return s;
		} else {
			return sessionFactory.openSession();
		}
	}

	/*------------获取信息start-------------*/
	
	/*------------分页获取start-------------*/
	@Override
	/**
	 * 分页获取所有的失物招领信息(管理员)
	 * @return
	 */
	public PageBean<LostAndFound> getLimitAllInfo(PageBean<LostAndFound> lafPage) {
		String hql = "from LostAndFound as laf order by laf.laf_pubtime";
//		String sql = "select count(*) as t from lostandfound";
		Integer totalCount = getAllInfo("").size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		lafPage.setPageData(getLimitInfo(hql, (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount()));
		return lafPage;
	}
	
	@Override
	/**
	 * 获取所有的需要审核的信息(管理员)
	 * @return
	 */
	public PageBean<LostAndFound>  getLimitToCheckInfo(PageBean<LostAndFound> lafPage) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 3 order by laf.laf_pubtime desc";
		Integer totalCount = getAllToCheckInfo("").size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		lafPage.setPageData(getLimitInfo(hql, (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount()));
		return lafPage;
	}
	
	@Override
	/**
	 * 获取所有的成功信息(管理员)
	 * @return
	 */
	public PageBean<LostAndFound>  getLimitSucInfo(PageBean<LostAndFound> lafPage) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 6 order by laf.laf_pubtime desc";
		Integer totalCount = getAllSucInfo("").size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		lafPage.setPageData(getLimitInfo(hql, (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount()));
		return lafPage;
	}

	@Override
	/**
	 * 
	 * 分页获取所有有效的的失物招领信息
	 * @return
	 */
	public PageBean<LostAndFound> getLimitAllValidInfo(PageBean<LostAndFound> lafPage){
		String hql = "from LostAndFound as laf where (laf.laf_stat = 1 or laf.laf_stat = 6) order by laf.laf_pubtime desc";
		Integer totalCount = getAllValidInfo("").size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		lafPage.setPageData(getLimitInfo(hql, (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount()));
		return lafPage;
	}
	
	
	@Override
	/**
	 * 
	 * 分页获取所有有效的的失物招领信息
	 * @return
	 */
	public PageBean<LostAndFound> getLimitAllDoingInfo(PageBean<LostAndFound> lafPage){
		String hql = "from LostAndFound as laf where (laf.laf_stat = 1) order by laf.laf_pubtime desc";
		Integer totalCount = getAllDoingInfo("").size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		lafPage.setPageData(getLimitInfo(hql, (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount()));
		return lafPage;
	}
	
	@Override
	public PageBean<LostAndFound> getLimitAllTimeOutInfo(
			PageBean<LostAndFound> lafPage) {
		String hql = "from LostAndFound as laf where (laf.laf_stat = 2) order by laf.laf_pubtime desc";
		Integer totalCount = getAllTimeOutInfo("").size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		lafPage.setPageData(getLimitInfo(hql, (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount()));
		return lafPage;
	}
	
	@Override
	public PageBean<LostAndFound> getLimitLostInfo(
			PageBean<LostAndFound> lafPage) {
		String hql = "from LostAndFound as laf where (laf.laf_stat = 1 or laf.laf_stat = 6) and laf.laf_type = 0 order by laf.laf_pubtime desc";
		Integer totalCount = getAllLostInfo("").size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		lafPage.setPageData(getLimitInfo(hql, (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount()));
		return lafPage;
	}

	@Override
	public PageBean<LostAndFound> getLimitFindInfo(
			PageBean<LostAndFound> lafPage) {
		String hql = "from LostAndFound as laf where (laf.laf_stat = 1 or laf.laf_stat = 6) and laf.laf_type = 1 order by laf.laf_pubtime desc";
		Integer totalCount = getAllFindInfo("").size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		lafPage.setPageData(getLimitInfo(hql, (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount()));
		return lafPage;
	}


	
	
	/*------------分页获取end-------------*/
	
	@Override
	/**
	 * 根据关键词搜索失物招领信息
	 * @param KeyWord
	 * @return
	 */
	public PageBean<LostAndFound> searchInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_detail like ?";
		Integer totalCount = getAllInfo(keyWord).size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		List<LostAndFound> lists = getLimitSearchInfo(hql,"%"+keyWord+"%", (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount());
		lafPage.setPageData(lists);
		return lafPage;
	}
	
	@Override
	public PageBean<LostAndFound>  searchValidInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		String hql = "from LostAndFound as laf where (laf.laf_stat = 1 or laf.laf_stat = 6) and laf.laf_detail like ?";
		Integer totalCount = getAllValidInfo(keyWord).size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		List<LostAndFound> lists = getLimitSearchInfo(hql,"%"+keyWord+"%", (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount());
		lafPage.setPageData(lists);
		return lafPage;
	}

	
	@Override
	public PageBean<LostAndFound> searchDoingInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 1 and laf.laf_detail like ?";
		Integer totalCount = getAllDoingInfo(keyWord).size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		List<LostAndFound> lists = getLimitSearchInfo(hql,"%"+keyWord+"%", (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount());
		lafPage.setPageData(lists);
		return lafPage;
	}

	@Override
	public PageBean<LostAndFound> searchToCheckInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 3 and laf.laf_detail like ?";
		Integer totalCount = getAllToCheckInfo(keyWord).size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		List<LostAndFound> lists = getLimitSearchInfo(hql,"%"+keyWord+"%", (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount());
		lafPage.setPageData(lists);
		return lafPage;
	}

	@Override
	public PageBean<LostAndFound> searchTimeOutInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 2 and laf.laf_detail like ?";
		Integer totalCount = getAllTimeOutInfo(keyWord).size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		List<LostAndFound> lists = getLimitSearchInfo(hql,"%"+keyWord+"%", (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount());
		lafPage.setPageData(lists);
		return lafPage;
	}

	@Override
	public PageBean<LostAndFound> searchSucInfo(PageBean<LostAndFound> lafPage, String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 6 and laf.laf_detail like ?";
		Integer totalCount = getAllSucInfo(keyWord).size();
		lafPage.setTotalCount(totalCount);
		lafPage.setTotalPage(lafPage.getTotalPage());
		if(lafPage.getCurrentPage() > lafPage.getTotalPage()) {
			lafPage.setCurrentPage(lafPage.getTotalPage());
		}
		List<LostAndFound> lists = getLimitSearchInfo(hql,"%"+keyWord+"%", (lafPage.getCurrentPage()-1)*lafPage.getPageCount()+1 , lafPage.getPageCount());
		lafPage.setPageData(lists);
		return lafPage;
	}

	
	@SuppressWarnings("unchecked")
	@Override
	/**
	 * 获取所有的招领信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getLostInfo() {
		String hql = "from LostAndFound as laf where laf.laf_type = 0";
		Operation op = new Operation(getSession());
		return op.hqlQuery(hql);
	}

	@SuppressWarnings("unchecked")
	@Override
	/**
	 * 获取所有的寻物信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getFoundInfo() {
		String hql = "from LostAndFound as laf where laf.laf_type = 1";
		Operation op = new Operation(getSession());
		return op.hqlQuery(hql);
	}
	
	/**
	 * 获取所有有效的招领信息
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<LostAndFound> getLostValidInfo() {
		String hql = "from LostAndFound as laf where laf.laf_type = 0 and (laf.laf_stat = 1 or laf.laf_stat = 6) order by laf.laf_pubtime desc";
		Operation op = new Operation(getSession());
		return op.hqlQuery(hql);
	}

	@SuppressWarnings("unchecked")
	@Override
	/**
	 * 获取所有有效的寻物信息，包括已认领的
	 * @return
	 */
	public List<LostAndFound> getFoundValidInfo() {
		String hql = "from LostAndFound as laf where laf.laf_type = 1 and (laf.laf_stat = 1 or laf.laf_stat = 6) order by laf.laf_pubtime desc";
		Operation op = new Operation(getSession());
		return op.hqlQuery(hql);
	}
	

	@Override
	/**
	 * 根据id查询一个有效的失物招领信息，包括已认领的
	 * @param id
	 * @return
	 */
	public LostAndFound getInfoById(Integer id, boolean isAdmin) {
		String hql = "";
		if(isAdmin) {
			hql = "from LostAndFound as laf where laf.laf_id = ?";
		} else {
			hql = "from LostAndFound as laf where laf.laf_id = ? and (laf.laf_stat = 1 or laf.laf_stat = 6)";
		}
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql,id);
		if(lists.size()==0) return null;
		return lists.get(0);
	}
	
	/*------------获取信息end-------------*/
	
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
	 * 发布一条新的信息(默认待审核状态)
	 * @return
	 */
	public boolean releaseInfo(LostAndFound laf) {
		Operation op = new Operation(getSession());
		laf.setLaf_laftime(null);
		laf.setLaf_suctime(null);
		return op.add(laf);
	}

	@Override
	
	/**
	 * 认领成功 or 寻物成功
	 * @return
	 */
	public boolean letInfoBeSuc(Integer id,String sucName,String sucPhone) {
//		String sql = "UPDATE `lostandfound` SET `laf_stat`='6' WHERE (`laf_id`= ?)";
		LostAndFound laf = getInfoById(id, false);
		Operation op = new Operation(getSession());
		laf.setLaf_suctime(new Timestamp(new Date().getTime())); // update sucTime
		laf.setLaf_stat(6); // suc
		if(sucName != null) {
			laf.setLaf_sucName(sucName);
		}
		if(sucPhone != null) {
			laf.setLaf_sucPhone(sucPhone);
		}
		
		return op.update(laf);
	}
	

	@Override
	public boolean updateInfo(LostAndFound laf) {
		Operation op = new Operation(getSession());
		return op.update(laf);
	}

	
	/**
	 * 从start位置获取length条信息
	 * @param start,length,hql
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<LostAndFound> getLimitInfo(String hql ,Integer start, Integer length) {
		//String hql1 = "from LostAndFound as laf where (laf.laf_stat = 1 or laf.laf_stat = 6) order by laf.laf_pubtime desc";
		List<LostAndFound> lists = null;
		Query query;
		Transaction tr = null;
		try{
			session = getSession();
			tr = session.beginTransaction();
			query = session.createQuery(hql).setFirstResult(start-1)
					.setMaxResults(length);
			lists = query.list();
			tr.commit();
		}catch(Exception e){
			return null;
		}
		return lists;
	}
	
	/**
	 * 从start位置获取length条信息
	 * @param start,length,hql
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<LostAndFound> getLimitSearchInfo(String hql,String keyWord, Integer start, Integer length) {
		//String hql1 = "from LostAndFound as laf where (laf.laf_stat = 1 or laf.laf_stat = 6) order by laf.laf_pubtime desc";
		List<LostAndFound> lists = null;
		Query query;
		Transaction tr = null;
		try{
			session = getSession();
			tr = session.beginTransaction();
			query = session.createQuery(hql).setString(0, keyWord).setFirstResult(start-1)
					.setMaxResults(length);
			lists = query.list();
			tr.commit();
		}catch(Exception e){
			return null;
		}
		return lists;
	}

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

	/**
	 * 获取所有有效的的失物招领信息
	 * @return
	 */
	public List<LostAndFound> getAllValidInfo(String keyWord) {
		String hql = "from LostAndFound as laf where (laf.laf_stat=1 or laf.laf_stat=6) and laf.laf_detail like ?";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql, "%"+keyWord+"%");
		return lists;
	}
	
	/**
	 * 根据发布时间获取所有的失物招领信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getAllInfo(String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_detail like ?";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql, "%"+keyWord+"%");
		return lists;
	}
	
	/**
	 * 根据发布时间获取所有的失物招领信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getAllDoingInfo(String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 1 and laf.laf_detail like ?";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql, "%"+keyWord+"%");
		return lists;
	}
	
	/**
	 * 根据发布时间获取所有的失物招领信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getAllTimeOutInfo(String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 2 and laf.laf_detail like ?";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql, "%"+keyWord+"%");
		return lists;
	}
	
	/**
	 * 根据发布时间获取所有的失物招领信息(管理员)
	 * @return
	 */
	public List<LostAndFound> getAllToCheckInfo(String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 3 and laf.laf_detail like ?";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql, "%"+keyWord+"%");
		return lists;
	}
	
	public List<LostAndFound> getAllSucInfo(String keyWord) {
		String hql = "from LostAndFound as laf where laf.laf_stat = 6 and laf.laf_detail like ? ";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql, "%"+keyWord+"%");
		return lists;
	}

	public List<LostAndFound> getAllLostInfo(String keyWord) {
		String hql = "from LostAndFound as laf where (laf.laf_stat = 1 or laf.laf_stat = 6) and laf.laf_type = 0";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}
	
	
	public List<LostAndFound> getAllFindInfo(String keyWord) {
		String hql = "from LostAndFound as laf where (laf.laf_stat = 1 or laf.laf_stat = 6) and laf.laf_type = 1";
		Operation op = new Operation(getSession());
		@SuppressWarnings("unchecked")
		List<LostAndFound> lists = op.hqlQuery(hql);
		return lists;
	}

	@Override
	public boolean letInfoRelive(Integer id) {
		String sql = "UPDATE `lostandfound` SET `laf_stat`='1' WHERE (`laf_id`= ?)";
		Operation op = new Operation(getSession());
		return op.sqlExecute(sql,id);
	}

}