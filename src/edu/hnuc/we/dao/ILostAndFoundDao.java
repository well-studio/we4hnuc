package edu.hnuc.we.dao;

import java.util.List;

import edu.hnuc.we.entity.LostAndFound;

/**
 * 失物招领持久层接口
 * @author Hallbow
 *
 */
public interface ILostAndFoundDao {
	
	/**
	 * 获取所有的失物招领信息(管理员)
	 * @return
	 */
	List<LostAndFound> getAllInfo();
	
	/**
	 * 获取所有的招领信息(管理员)
	 * @return
	 */
	List<LostAndFound> getLostInfo();
	
	/**
	 * 获取所有的寻物信息(管理员)
	 * @return
	 */
	List<LostAndFound> getFoundInfo();
	
	/**
	 * 获取所有的需要审核的信息(管理员)
	 * @return
	 */
	List<LostAndFound> getToCheckInfo();
	
	/**
	 * 通过审核(管理员)
	 * @return
	 */
	boolean letInfoBeTrue(Integer id);
	
	/**
	 * 审核失败 - 直接删除么?(管理员)
	 * @return
	 */
	boolean letInfoBeFalse(Integer id);
	
	/**
	 * 招领信息失效 - 直接删除么?(管理员)
	 * @return
	 */
	boolean letInfoBeTimeOut(Integer id);
	
	/**
	 * 根据id删除info(管理员)
	 * @return
	 */
	boolean delInfoById(Integer id);
	
	/**
	 * 获取所有有效的的失物招领信息
	 * @return
	 */
	List<LostAndFound> getAllValidInfo();
	
	/**
	 * 获取所有有效的招领信息
	 * @return
	 */
	List<LostAndFound> getLostValidInfo();
	
	/**
	 * 获取所有有效的寻物信息
	 * @return
	 */
	List<LostAndFound> getFoundValidInfo();
	
	/**
	 * 根据关键词搜索失物招领信息
	 * @param id
	 * @return
	 */
	List<LostAndFound> searchInfo(String keyWord);
	
	
	/**
	 * 根据id查询一个失物招领信息
	 * @param id
	 * @return
	 */
	LostAndFound getInfoById(Integer id);
	
	/**
	 * 发布一条新的信息(默认待审核状态)
	 * @return
	 */
	boolean releaseInfo(LostAndFound laf);
	
	/**
	 * 认领成功 or 寻物成功
	 * @return
	 */
	boolean letInfoBeSuc(Integer id);
	
	
}
