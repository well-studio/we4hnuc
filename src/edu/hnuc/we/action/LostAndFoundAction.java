package edu.hnuc.we.action;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.service.ILostAndFoundService;


/**
 * 失物招领控制类
 * @author Hallbow
 *
 */
@SuppressWarnings("serial")
public class LostAndFoundAction extends ActionSupport implements ModelDriven<LostAndFound>{
	
	ILostAndFoundService lostAndFoundService;
	public void setLostAndFoundService(ILostAndFoundService lostAndFoundService) {
		this.lostAndFoundService = lostAndFoundService;
	}
	private Map<String, Object> valueMap = new HashMap<String, Object>();
	public Map<String, Object> getValueMap() {
		return valueMap;
	}
	public void setValueMap(Map<String, Object> valueMap) {
		this.valueMap = valueMap;
	}
	private LostAndFound lostAndFound = new LostAndFound();
	@Override 
	public LostAndFound getModel() {
		return lostAndFound;
	} 
	
	private Integer laf_id; //id
	public Integer getLaf_id() {
		return laf_id;
	}
	public void setLaf_id(Integer laf_id) {
		this.laf_id = laf_id;
	}
	
	private String keyWord; // 关键词
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public String getKeyWord() {
		return keyWord;
	}
	
	
	/**
	 * 获取所有的失物招领信息(管理员)
	 * @return
	 */
	public String getAllInfo() {
		valueMap.put("Info", lostAndFoundService.getAllInfo());
		return "valueMap";
	}
	 
	/**
	 * 获取所有的招领信息(管理员)
	 * @return
	 */
	public String getLostInfo() {
		valueMap.put("Info", lostAndFoundService.getLostInfo());
		return "valueMap";
	}
	
	
	/**
	 * 获取所有的寻物信息(管理员)
	 * @return
	 */
	public String getFoundInfo() {
		valueMap.put("Info", lostAndFoundService.getFoundInfo());
		return "valueMap";
	}
	
	/**
	 * 获取所有的需要审核的信息(管理员)
	 * @return
	 */
	public String getToCheckInfo() {
		valueMap.put("Info", lostAndFoundService.getToCheckInfo());
		return "valueMap";
	}
	
	/**
	 * 通过审核(管理员)
	 * @return
	 */
	public String letInfoBeTrue() {
		valueMap.put("Msg", lostAndFoundService.letInfoBeTrue(laf_id));
		return "valueMap";
	}
	
	/**
	 * 审核失败 - 直接删除么?(管理员)
	 * @return
	 */
	public String letInfoBeFalse() {
		valueMap.put("Msg", lostAndFoundService.letInfoBeFalse(laf_id));
		return "valueMap";
	}
	
	/**
	 * 招领信息失效 - 直接删除么?(管理员)
	 * @return
	 */
	public String letInfoBeTimeOut() {
		valueMap.put("Msg", lostAndFoundService.letInfoBeTimeOut(laf_id));
		return "valueMap";
	}
	
	/**
	 * 根据id删除info(管理员)
	 * @return
	 */
	public String delInfoById() {
		valueMap.put("Msg", lostAndFoundService.delInfoById(laf_id));
		return "valueMap";
	}
	
	/**
	 * 获取所有有效的的失物招领信息
	 * @return
	 */
	public String getAllValidInfo() {
		valueMap.put("Info", lostAndFoundService.getAllValidInfo());
		return "valueMap";
	}
	
	/**
	 * 获取所有有效的招领信息
	 * @return
	 */
	public String getLostValidInfo() {
		valueMap.put("Info", lostAndFoundService.getLostValidInfo());
		return "valueMap";
	}
	
	/**
	 * 获取所有有效的寻物信息
	 * @return
	 */
	public String getFoundValidInfo() {
		valueMap.put("Info", lostAndFoundService.getFoundValidInfo());
		return "valueMap";
	}
	
	/**
	 * 根据id查询一个失物招领信息
	 * @param id
	 * @return
	 */
	public String getInfoById() {
		valueMap.put("Info", lostAndFoundService.getInfoById(laf_id));
		return "valueMap";
	}
	
	/**
	 * 根据关键词搜索失物招领信息
	 * @param id
	 * @return
	 */
	public String searchInfo() {
		valueMap.put("Info", lostAndFoundService.searchInfo(keyWord));
		return "valueMap";
	}
	
	/**
	 * 发布一条新的信息(默认待审核状态)
	 * @return
	 */
	public String releaseInfo() {
		valueMap.put("Msg", lostAndFoundService.releaseInfo(lostAndFound));
		return "valueMap";
	}
	
	/**
	 * 认领成功 or 寻物成功 (必须核对 二次登录是否是同一个学生所为,用学号judge)
	 * @return
	 */
	public String letInfoBeSuc() {
		valueMap.put("Msg", lostAndFoundService.letInfoBeSuc(laf_id));
		return "valueMap";
	}
	
}
