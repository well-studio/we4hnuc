package edu.hnuc.we.action;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.hnuc.we.entity.LostAndFound;
import edu.hnuc.we.entity.PageBean;
import edu.hnuc.we.entity.User;
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
	private PageBean<LostAndFound> lafPage = new PageBean<LostAndFound>();
	
	@Override 
	public LostAndFound getModel() {
		return lostAndFound;
	}
	
	private Integer lafId; //id
	public Integer getLafId() {
		return lafId;
	}
	public void setLafId(Integer lafId) {
		this.lafId = lafId;
	}
	
	private String keyWord; // 关键词
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public String getKeyWord() {
		return keyWord;
	}
	
	public PageBean<LostAndFound> getLafPage() {
		return lafPage;
	}
	public void setLafPage(PageBean<LostAndFound> lafPage) {
		this.lafPage = lafPage;
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
//		valueMap.put("Info", lostAndFoundService.getToCheckInfo());
		return "valueMap";
	}
	
	
	/**
	 * 跳转到首页
	 * @return
	 */
	public String index() {
		// 获取信息
		
		return "indexPage";
	}
	
	/**
	 * 通过审核(管理员)
	 * @return
	 */
	public String letInfoBeTrue() {
		valueMap.put("Msg", lostAndFoundService.letInfoBeTrue(lafId));
		return "valueMap";
	}
	
	/**
	 * 审核失败 - 直接删除么?(管理员)
	 * @return
	 */
	public String letInfoBeFalse() {
		valueMap.put("Msg", lostAndFoundService.letInfoBeFalse(lafId));
		return "valueMap";
	}
	
	/**
	 * 招领信息失效 - 直接删除么?(管理员)
	 * @return
	 */
	public String letInfoBeTimeOut() {
		valueMap.put("Msg", lostAndFoundService.letInfoBeTimeOut(lafId));
		return "valueMap";
	}
	
	/**
	 * 跳转到后台管理页面
	 * @return
	 */
	public String goToManage() {
		
		return "managePage";
	}
	
	/**
	 * 根据id删除info(管理员)
	 * @return
	 */
	public String delInfoById() {
//		boolean res = lostAndFoundService.delInfoById(lafId);
//		Map<String, Object> request = ActionContext.getContext().getContextMap();
		return "detail";
	}
	
	/**
	 * 分页获取所有有效的的失物招领信息(用户)
	 * @return
	 */
	public String getAllValidInfo() {
		
		lafPage = lostAndFoundService.getLimitAllValidInfo(lafPage);
//		lafPage.setPageData(lostAndFoundService.getAllInfo());
		Map<String, Object> request = ActionContext.getContext().getContextMap();
//		Map<String, Object> session = ActionContext.getContext().getSession();
//		session.remove("soso");
		request.remove("keyWord");
		request.put("lafPage", lafPage);
		return "lostAndFound";
	}
	
	
	/**
	 * 分页获取所有正在进行的的失物招领信息(管理员)
	 * @return
	 */
	public String getAllDoingInfoAdmin() {
		lafPage = lostAndFoundService.getLimitAllDoingInfo(lafPage);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.remove("keyWord");
		return "allDoingList";
	}
	
	/**
	 * 分页获取所有失效的的失物招领信息(管理员)
	 * @return
	 */
	public String getAllTimeOutInfoAdmin() {
		lafPage = lostAndFoundService.getLimitAllTimeOutInfo(lafPage);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.remove("keyWord");
		return "allTimeOutList";
	}
	
	/**
	 * 分页获取所有待审核的失物招领信息(管理员)
	 * @return
	 */
	public String getAllToCheckInfoAdmin() {
		lafPage = lostAndFoundService.getLimitToCheckInfo(lafPage);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.remove("keyWord");
		return "allToCheckList";
	}
	
	/**
	 * 分页获取所有成功的失物招领信息(管理员)
	 * @return
	 */
	public String getAllSucInfoAdmin() {
		lafPage = lostAndFoundService.getLimitSucInfo(lafPage);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.remove("keyWord");
		return "allSucList";
	}
	
	/**
	 * 分页获取所有有效的的失物招领信息(管理员)
	 * @return
	 */
	public String getAllValidInfoAdmin() {
		lafPage = lostAndFoundService.getLimitAllValidInfo(lafPage);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.remove("keyWord");
		return "allValidList";
	}
	
	/**
	 * 分页获取所有有效的招领信息(弃)
	 * @return
	 */
	public String getLostValidInfo() {
		valueMap.put("Info", lostAndFoundService.getLostValidInfo());
		return "valueMap";
	}
	
	/**
	 * 分页获取所有有效的寻物信息(弃)
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
//		valueMap.put("Info", lostAndFoundService.getInfoById(lafId));
		
		Map<String, Object> session = ActionContext.getContext().getSession();
		User admin = (User) session.get("admin");
		boolean isAdmin = false;
		if(admin != null) {
			isAdmin = true;
		}
		LostAndFound laf = lostAndFoundService.getInfoById(lafId, isAdmin);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("laf", laf);
		
		return "detail";
	}
	
	/**
	 * 根据关键词搜索失物招领信息
	 * @param id
	 * @return
	 */
	public String searchInfo() {
//		valueMap.put("Info", lostAndFoundService.searchInfo(keyWord));
		handleKeyWord(keyWord);
		lafPage = lostAndFoundService.searchInfo(lafPage, keyWord);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.put("keyWord", keyWord);
		return "allDoingList";
	}
	
	
	/**
	 * 根据关键词搜索有效的失物招领信息(用户)
	 * @param id
	 * @return
	 */
	public String searchValidInfo() {
//		valueMap.put("Info", lostAndFoundService.searchInfo(keyWord));
		handleKeyWord(keyWord);
		lafPage = lostAndFoundService.searchValidInfo(lafPage, keyWord);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.put("keyWord", keyWord);
		return "lostAndFound";
	}
	
	/**
	 * 根据关键词搜索正在进行的失物招领信息
	 * @param id
	 * @return
	 */
	public String searchDoingInfo() {
//		valueMap.put("Info", lostAndFoundService.searchInfo(keyWord));
		handleKeyWord(keyWord);
		lafPage = lostAndFoundService.searchDoingInfo(lafPage, keyWord);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.put("keyWord", keyWord);
		return "allDoingList";
	}
	
	
	/**
	 * 根据关键词搜索成功的失物招领信息
	 * @param id
	 * @return
	 */
	public String searchSucInfo() {
//		valueMap.put("Info", lostAndFoundService.searchInfo(keyWord));
		handleKeyWord(keyWord);
		lafPage = lostAndFoundService.searchSucInfo(lafPage, keyWord);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.put("keyWord", keyWord);
		return "allSucList";
	}
	
	
	/**
	 * 根据关键词搜索失效失物招领信息
	 * @param id
	 * @return
	 */
	public String searchTimeOutInfo() {
//		valueMap.put("Info", lostAndFoundService.searchInfo(keyWord));
		handleKeyWord(keyWord);
		lafPage = lostAndFoundService.searchTimeOutInfo(lafPage, keyWord);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.put("keyWord", keyWord);
		return "allTimeOutList";
	}
	
	
	/**
	 * 根据关键词搜索待审核失物招领信息
	 * @param id
	 * @return
	 */
	public String searchToCheckInfo() {
//		valueMap.put("Info", lostAndFoundService.searchInfo(keyWord));
		handleKeyWord(keyWord);
		lafPage = lostAndFoundService.searchToCheckInfo(lafPage, keyWord);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("lafPage", lafPage);
		request.put("keyWord", keyWord);
		return "allToCheckList";
	}
	
	public void handleKeyWord(String keyWord) {
		if(keyWord == null) {
			keyWord = "";
		}
		try {
			keyWord = new String(keyWord.getBytes("ISO-8859-1"),"UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.keyWord = keyWord;
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
		valueMap.put("Msg", lostAndFoundService.letInfoBeSuc(lafId));
		return "valueMap";
	}
	
}
