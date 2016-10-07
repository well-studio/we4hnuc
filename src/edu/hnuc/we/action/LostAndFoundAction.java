package edu.hnuc.we.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.ejb.FinderException;

import org.apache.struts2.ServletActionContext;

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
	private File[] images;
	private String[] imagesFileName;
	private String[] imagesContentType;
	
	public File[] getImages() {
		return images;
	}
	public void setImages(File[] images) {
		this.images = images;
	}
	public String[] getImagesFileName() {
		return imagesFileName;
	}
	public void setImagesFileName(String[] imagesFileName) {
		this.imagesFileName = imagesFileName;
	}
	public String[] getImagesContentType() {
		return imagesContentType;
	}
	public void setImagesContentType(String[] imagesContentType) {
		this.imagesContentType = imagesContentType;
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
//		valueMap.put("Msg", lostAndFoundService.letInfoBeTrue(lafId));
		
		lostAndFoundService.letInfoBeTrue(lafId);
		
		return "refreshCheck";
	}
	
	/**
	 * 审核失败 - 直接删除么?(管理员)
	 * @return
	 */
	public String letInfoBeFalse() {
		lostAndFoundService.letInfoBeFalse(lafId);
		
		return "refreshDoing";
	}
	
	/**
	 * 招领信息失效 - 直接删除么?(管理员)
	 * @return
	 */
	public String letInfoBeTimeOut() {
		lostAndFoundService.letInfoBeTimeOut(lafId);
		return "refreshDoing";
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
		@SuppressWarnings("unused")
		boolean res = lostAndFoundService.delInfoById(lafId);
//		Map<String, Object> request = ActionContext.getContext().getContextMap();
		return "refreshCheck";
	}
	
	/**
	 * 跳转至编辑事物招领信息(管理员)
	 * @return
	 */
	public String editInfo() {
		
		LostAndFound laf = lostAndFoundService.getInfoById(lafId, true);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.put("laf", laf);
		
		return "editInfo";
	}
	
	/**
	 * 编辑事物招领信息(管理员)
	 * @return
	 */
	public String updateInfo() {
		lostAndFoundService.updateInfo(lostAndFound);
//		Map<String, Object> request = ActionContext.getContext().getContextMap();
//		request.put("laf", laf);
		lafId = lostAndFound.getLaf_id();
		return getInfoById();
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
		request.remove("lostMark");
		request.remove("findMark");
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
	 * 分页获取所有有效的的招领信息(用户)
	 * @return
	 */
	public String getAllLostInfo() {
		
		lafPage = lostAndFoundService.getLimitLostInfo(lafPage);
//		lafPage.setPageData(lostAndFoundService.getAllInfo());
		Map<String, Object> request = ActionContext.getContext().getContextMap();
//		Map<String, Object> session = ActionContext.getContext().getSession();
//		session.remove("soso");
		request.remove("keyWord");
		request.remove("findMark");
		request.put("lafPage", lafPage);
		request.put("lostMark", "lostMark");
		return "lostAndFound";
	}
	
	/**
	 * 分页获取所有有效的的寻物信息(用户)
	 * @return
	 */
	public String getAllFindInfo() {
		
		lafPage = lostAndFoundService.getLimitFindInfo(lafPage);
//		lafPage.setPageData(lostAndFoundService.getAllInfo());
		Map<String, Object> request = ActionContext.getContext().getContextMap();
//		Map<String, Object> session = ActionContext.getContext().getSession();
//		session.remove("soso");
		request.remove("keyWord");
		request.remove("lostMark");
		request.put("lafPage", lafPage);
		request.put("findMark", "findMark");
		return "lostAndFound";
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
//		handleKeyWord(keyWord);
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
//		handleKeyWord(keyWord);
		lafPage = lostAndFoundService.searchValidInfo(lafPage, keyWord);
		Map<String, Object> request = ActionContext.getContext().getContextMap();
		request.remove("lostMark");
		request.remove("findMark");
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
//		handleKeyWord(keyWord);
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
//		handleKeyWord(keyWord);
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
//		handleKeyWord(keyWord);
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
//		handleKeyWord(keyWord);
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
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		User admin = (User) session.get("admin");
		if(user != null || admin != null) {
			if(images != null && images.length > 0) {
				Long tsmp = new Date().getTime();
				imagesFileName[0] = tsmp + " " + imagesFileName[0];
				savePic(); // 保存图片
				lostAndFound.setLaf_pic("/upload/lafImgs/" + imagesFileName[0]);
			}
			boolean res = lostAndFoundService.releaseInfo(lostAndFound);
			if(res) {
				session.put("info", "恭喜提交成功<br>请等待审核通过~ヽ(=^･ω･^=)丿");
			} else {
				session.put("info", "发布失败<br>请稍后再试~ヾ(Ő∀Ő๑)ﾉ");
			}
		} else {
			session.put("info", "登录后方可发布ヽ(=^･ω･^=)丿");
		}
		
		return "reToIndex";
	}
	
	/**
	 * 保存上传的图片
	 */
	public void savePic() {
		String picPath = ServletActionContext.getServletContext().getRealPath(File.separator) + "/upload/lafImgs/";
		picPath += imagesFileName[0];
		FileOutputStream fot = null;
		FileInputStream fit = null;
		try {
			fit = new FileInputStream(images[0]);
			fot = new FileOutputStream(picPath);
			byte[] b = new byte[1024];
			while(fit.read(b) != -1) {
				fot.write(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(fit != null) {
				try {
					fit.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(fot != null) {
				try {
					fot.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	/**
	 * 认领成功 or 寻物成功 (必须核对 二次登录是否是同一个学生所为,用学号judge)
	 * @return
	 */
	public String letInfoBeSuc() {
		boolean res = lostAndFoundService.letInfoBeSuc(lafId,sucName,sucPhone);
		Map<String, Object> session = ActionContext.getContext().getSession();
		if(res) {
			session.put("info", "认领成功 恭喜恭喜ヽ(=^･ω･^=)丿");
		} else {
			session.put("info", "认领失败 请稍后再试ヾ(×× ) ﾂ");
		}
		return "reToIndex";
	}
	
	/**
	 * 复活一条信息
	 * @return
	 */
	public String letInfoRelive() {
		
		lostAndFoundService.letInfoRelive(lafId);
		
		return "refreshTimeOut";
	}
	
	/**
	 * 复活一条信息
	 * @return
	 */
	public String gotoGetInfo() {
		Map<String, Object> req = ActionContext.getContext().getApplication();
		req.put("lafId", lafId);
		
		return "gotoGetInfo";
	}
	
	
	
	
	private String sucName;
	private String sucPhone;
	public String getSucName() {
		return sucName;
	}
	public void setSucName(String sucName) {
		this.sucName = sucName;
	}
	public String getSucPhone() {
		return sucPhone;
	}
	public void setSucPhone(String sucPhone) {
		this.sucPhone = sucPhone;
	}
	
}
