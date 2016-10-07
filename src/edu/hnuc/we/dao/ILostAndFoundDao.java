package edu.hnuc.we.dao;

import java.util.List;

import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.entity.PageBean;

/**
 * 失物招领持久层接口
 * @author Hallbow
 *
 */
public interface ILostAndFoundDao {
	
	
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
	 * 复活一条信息
	 * @return
	 */
	boolean letInfoRelive(Integer id);
	
	/**
	 * 编辑更新信息(管理员)
	 * @return
	 */
	boolean updateInfo(LostAndFound laf);
	
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
	PageBean<LostAndFound> searchInfo(PageBean<LostAndFound> lafPage, String keyWord);
	
	/**
	 * 根据关键词搜索失物招领信息
	 * @param id
	 * @return
	 */
	PageBean<LostAndFound> searchValidInfo(PageBean<LostAndFound> lafPage, String keyWord);
	
	
	/**
	 * 根据关键词搜索正在进行的失物招领信息
	 * @param id
	 * @return
	 */
	PageBean<LostAndFound> searchDoingInfo(PageBean<LostAndFound> lafPage, String keyWord);
	
	/**
	 * 根据关键词搜索待审核的失物招领信息
	 * @param id
	 * @return
	 */
	PageBean<LostAndFound> searchToCheckInfo(PageBean<LostAndFound> lafPage, String keyWord);
	
	/**
	 * 根据关键词搜索失效了的失物招领信息
	 * @param id
	 * @return
	 */
	PageBean<LostAndFound> searchTimeOutInfo(PageBean<LostAndFound> lafPage, String keyWord);
	
	/**
	 * 根据关键词搜索成功的失物招领信息
	 * @param id
	 * @return
	 */
	PageBean<LostAndFound> searchSucInfo(PageBean<LostAndFound> lafPage, String keyWord);
	
	/**
	 * 根据id查询一个失物招领信息
	 * @param id
	 * @return
	 */
	LostAndFound getInfoById(Integer id, boolean isAdmin);
	
	/**
	 * 发布一条新的信息(默认待审核状态)
	 * @return
	 */
	boolean releaseInfo(LostAndFound laf);
	
	/**
	 * 认领成功 or 寻物成功
	 * @return
	 */
	boolean letInfoBeSuc(Integer id,String sucName,String sucPhone);
	
	/**
	 * 分页查询所有信息(管理员)
	 * @param start
	 * @param length
	 * @return
	 */
	PageBean<LostAndFound> getLimitAllInfo(PageBean<LostAndFound> lafPage);

	/**
	 * 分页查询待审核的信息(管理员)
	 * @param start
	 * @param length
	 * @return
	 */
	PageBean<LostAndFound> getLimitToCheckInfo(PageBean<LostAndFound> lafPage);
	
	/**
	 * 分页查询失效的信息(用户)
	 * @param start
	 * @param length
	 * @return
	 */
	PageBean<LostAndFound> getLimitAllTimeOutInfo(PageBean<LostAndFound> lafPage);
	
	/**
	 * 分页查询正在进行的信息(用户)
	 * @param start
	 * @param length
	 * @return
	 */
	PageBean<LostAndFound> getLimitAllDoingInfo(PageBean<LostAndFound> lafPage);
	
	/**
	 * 分页查询有效的信息(用户)
	 * @param start
	 * @param length
	 * @return
	 */
	PageBean<LostAndFound> getLimitAllValidInfo(PageBean<LostAndFound> lafPage);
	
	/**
	 * 分页获取成功的信息
	 * @param lafPage
	 * @return
	 */
	PageBean<LostAndFound> getLimitSucInfo(PageBean<LostAndFound> lafPage);
	
	/**
	 * 分页获取所有的招领信息
	 * @param lafPage
	 * @return
	 */
	PageBean<LostAndFound> getLimitLostInfo(PageBean<LostAndFound> lafPage);
	
	/**
	 * 分页获取所有的寻物信息
	 * @param lafPage
	 * @return
	 */
	PageBean<LostAndFound> getLimitFindInfo(PageBean<LostAndFound> lafPage);
	
	
}
