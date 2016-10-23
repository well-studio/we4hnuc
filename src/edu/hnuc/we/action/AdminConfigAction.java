package edu.hnuc.we.action;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.hnuc.we.entity.AdminConfig;
import edu.hnuc.we.service.IAdminConfigService;
import edu.hnuc.we.util.AdminImgs;
/**
 * @author xxmodd
 *
 */
@SuppressWarnings("serial")
public class AdminConfigAction extends ActionSupport implements ModelDriven<AdminConfig>,SessionAware {

	IAdminConfigService adminConfigService;
	private static final String[] INDEXKEYS = {"indexBtn","indexPic","indexItem"};
	private AdminConfig adminConfig = new AdminConfig();
	private Map<String, Object> valueMap = new HashMap<String, Object>();
	private Map<String, Object> session;
	private File[] images;
	private String[] imagesFileName;
	private String[] imagesContentType;
	private String delImgName;
	/* 九宫格参数*/
	private String[] indexbtn_title;
	private String[] indexbtn_icon;
	private String[] indexbtn_href;
	//用于预览
	private String indexbtn_titleJson;
	private String indexbtn_iconJson;
	private String indexbtn_hrefJson;
	
	/* 图片轮播参数*/
	private String[] indexpic_picaddress;
	private String[] indexpic_href;
	//用于预览
	private String indexpic_picaddressJson;
	private String indexpic_hrefJson;
	





	public String getIndexbtn_titleJson() {
		return indexbtn_titleJson;
	}

	public void setIndexbtn_titleJson(String indexbtn_titleJson) {
		this.indexbtn_titleJson = indexbtn_titleJson;
	}

	public String getIndexbtn_iconJson() {
		return indexbtn_iconJson;
	}

	public void setIndexbtn_iconJson(String indexbtn_iconJson) {
		this.indexbtn_iconJson = indexbtn_iconJson;
	}

	public String getIndexbtn_hrefJson() {
		return indexbtn_hrefJson;
	}

	public void setIndexbtn_hrefJson(String indexbtn_hrefJson) {
		this.indexbtn_hrefJson = indexbtn_hrefJson;
	}

	public String getIndexpic_picaddressJson() {
		return indexpic_picaddressJson;
	}

	public void setIndexpic_picaddressJson(String indexpic_picaddressJson) {
		this.indexpic_picaddressJson = indexpic_picaddressJson;
	}

	public String getIndexpic_hrefJson() {
		return indexpic_hrefJson;
	}

	public void setIndexpic_hrefJson(String indexpic_hrefJson) {
		this.indexpic_hrefJson = indexpic_hrefJson;
	}



	/* 首页配置项信息*/
	private String indexItem_title;
	private String indexItem_copyright;
	
	
	public String getIndexItem_title() {
		return indexItem_title;
	}

	public void setIndexItem_title(String indexItem_title) {
		this.indexItem_title = indexItem_title;
	}

	public String getIndexItem_copyright() {
		return indexItem_copyright;
	}

	public void setIndexItem_copyright(String indexItem_copyright) {
		this.indexItem_copyright = indexItem_copyright;
	}

	public String[] getIndexpic_picaddress() {
		return indexpic_picaddress;
	}

	public void setIndexpic_picaddress(String[] indexpic_picaddress) {
		this.indexpic_picaddress = indexpic_picaddress;
	}

	public String[] getIndexpic_href() {
		return indexpic_href;
	}

	public void setIndexpic_href(String[] indexpic_href) {
		this.indexpic_href = indexpic_href;
	}

	public String[] getIndexbtn_title() {
		return indexbtn_title;
	}

	public void setIndexbtn_title(String[] indexbtn_title) {
		this.indexbtn_title = indexbtn_title;
	}

	public String[] getIndexbtn_icon() {
		return indexbtn_icon;
	}

	public void setIndexbtn_icon(String[] indexbtn_icon) {
		this.indexbtn_icon = indexbtn_icon;
	}

	public String[] getIndexbtn_href() {
		return indexbtn_href;
	}

	public void setIndexbtn_href(String[] indexbtn_href) {
		this.indexbtn_href = indexbtn_href;
	}

	public String getDelImgName() {
		return delImgName;
	}

	public void setDelImgName(String delImgName) {
		this.delImgName = delImgName;
	}

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

	public void setAdminConfigService(IAdminConfigService adminConfigService){
		this.adminConfigService = adminConfigService;
	}
	
	public Map<String, Object> getValueMap() {
		return valueMap;
	}
	public void setValueMap(Map<String, Object> valueMap) {
		this.valueMap = valueMap;
	}
	@Override
	public AdminConfig getModel() {
		return adminConfig;
	}
	
	/*获取预览信息*/
	public String getPriviewInfo(){
		try{
		if(indexItem_title == null || indexItem_copyright == null||
				indexpic_hrefJson == null || indexpic_picaddressJson == null||
				indexbtn_titleJson==null||indexbtn_iconJson==null||indexbtn_hrefJson==null){
			valueMap.put("info", "fail");
			System.out.println("获取失败");
		}else{
//			System.out.println(indexbtn_titleJson);
			Gson gson = new Gson();
			String[] indexbtn_titleArray = gson.fromJson(indexbtn_titleJson, String[].class);
			String[] indexbtn_iconArray = gson.fromJson(indexbtn_iconJson, String[].class);
			String[] indexbtn_hrefArray = gson.fromJson(indexbtn_hrefJson, String[].class);
			String[][] indexBtnPriviewInfo = new String[indexbtn_titleArray.length][3];
			for(int i=0;i<indexbtn_titleArray.length;i++){
				indexBtnPriviewInfo[i][0] = indexbtn_titleArray[i];
				indexBtnPriviewInfo[i][1] = indexbtn_iconArray[i];
				indexBtnPriviewInfo[i][2] = indexbtn_hrefArray[i];
			}
			
			
			String[] indexpic_hrefArray = gson.fromJson(indexpic_hrefJson, String[].class);
			String[] indexpic_picaddressArray = gson.fromJson(indexpic_picaddressJson, String[].class);
			String[][] indexPicPriviewInfo = new String[indexpic_hrefArray.length][2];
			for(int i=0;i<indexpic_hrefArray.length;i++){
				indexPicPriviewInfo[i][0] = indexpic_hrefArray[i];
				indexPicPriviewInfo[i][1] = indexpic_picaddressArray[i];
			}
			String[][] indexItemPriviewInfo = new String[1][2];
			indexItemPriviewInfo[0][0] = indexItem_title;
			indexItemPriviewInfo[0][1] = indexItem_copyright;
//			
//			for(String[] t1 : indexBtnPriviewInfo){
//				System.out.println(Arrays.toString(t1));
//			}
//			for(String[] t2 : indexPicPriviewInfo){
//				System.out.println(Arrays.toString(t2));
//			}
//			for(String[] t3 : indexItemPriviewInfo){
//				System.out.println(Arrays.toString(t3));
//			}
//			
			session.put("indexBtnPriviewInfo", indexBtnPriviewInfo);
			session.put("indexPicPriviewInfo", indexPicPriviewInfo);
			session.put("indexItemPriviewInfo", indexItemPriviewInfo);
			valueMap.put("info", "success");
//			System.out.println("获取成功");
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		return "valueMap";
	}
	
	
	//获取首页定制信息  
	public String getIndexInfo(){
		Gson gson = new Gson();
		//获取三个定制信息
		for(String key : INDEXKEYS){
			session.put(key + "info", gson.fromJson(adminConfigService.getValueByKey(key), String[][].class));
		}
		return "reToAdmIndex";
	}
	
	//为主业动态加载
	public String loadIndexInfo(){
		Gson gson = new Gson();
		//获取三个定制信息
		for(String key : INDEXKEYS){
			session.put(key + "info", gson.fromJson(adminConfigService.getValueByKey(key), String[][].class));
		}
		return "reToIndex";
	}
	
	
	/**
	 * 更新首页配置项信息
	 */
	public String updateIndexItemInfo(){
		//测试
		//System.out.println(indexItem_title == null || indexItem_copyright == null ? "首页配置项参数错误": "首页配置项参数正确");
		if(indexItem_title == null || indexItem_copyright == null){
			return "error";
		}
		String[][] infos = new String[1][2];
		infos[0][0] = indexItem_title;
		infos[0][1] = indexItem_copyright;
		Gson gson = new Gson();
		String json = gson.toJson(infos);
		boolean flag = adminConfigService.updateIndexBtnInfo("indexItem", json);
		session.put("info", flag ? "success" : "fail");
		return "reToTip";
	}
	
	
	/**
	 * 更新图片轮播信息
	 * @return
	 */
	public String updateIndexPicInfo(){
		//测试
		//System.out.println(indexpic_href == null || indexpic_picaddress == null ? "图片轮播参数错误": "图片轮播参数正确");
		int hrefLen = indexpic_href.length;
		int picaddressLen = indexpic_picaddress.length;
		if(!(hrefLen == picaddressLen)){
			return "error";
		}
		String[][] infos = new String[hrefLen][2];
		for(int i =0;i<hrefLen;i++){
			infos[i][0] = indexpic_picaddress[i];
			infos[i][1] = indexpic_href[i];
		}
		Gson gson = new Gson();
		String json = gson.toJson(infos);
		boolean flag = adminConfigService.updateIndexBtnInfo("indexPic",json);
		session.put("info", flag ? "success" : "fail");
		return "reToTip";
	}
	
	/**
	 * 更新首页九宫格信息
	 * @return
	 */
	public String updateIndexBtnInfo(){
		//测试
		//System.out.println(indexbtn_title == null || indexbtn_icon == null|| indexbtn_href == null ? "九宫格参数正确" : "九宫格参数错误");
		if(indexbtn_title==null||indexbtn_icon==null||indexbtn_href==null) return "error";
		int titleLen = indexbtn_title.length;
		int iconLen = indexbtn_icon.length;
		int hrefLen = indexbtn_href.length;
		if(!(titleLen==iconLen&&iconLen==hrefLen)) return "error";
		String[][] infos = new String[titleLen][3];
		for (int i = 0; i < titleLen; i++){
			infos[i][0] = indexbtn_title[i];
			infos[i][1] = indexbtn_icon[i];
			infos[i][2] = indexbtn_href[i];
		}
		Gson gson = new Gson();
		String json = gson.toJson(infos);
//		System.out.println(json);
		boolean flag = adminConfigService.updateIndexBtnInfo("indexBtn" , json);
		session.put("info", flag ? "success" : "fail");
		return "reToTip";
	}
	
	
	
	/*已被上方法替代
	public String getValueByKey(){
		String key = adminConfig.getConfKey();
		//System.out.println(key==null);
		if(key==null||"".equals(key)){
			return "error";
		} 
		String json = adminConfigService.getValueByKey(key);
		Gson gson = new Gson();
		String[][] infos = gson.fromJson(json, String[][].class);
//		System.out.println(Arrays.toString(infos));
		session.put("infos", infos);
		//System.out.println(session.get("infos"));
		return "reToIndex";
	}
	*/
	
	/**
	 * 返回一个json格式的value
	 */
	/*
	public String getValueByKey(){
		String key = adminConfig.getConfKey();
		//System.out.println(key==null);
		if(key==null||"".equals(key)){
			return "error";
		} 
		valueMap.put(key , adminConfigService.getValueByKey(key));
		return "valueMap";
	}
	*/
	
	
	
	public String uploadImage(){
//		System.out.println("test");
		boolean flag = false;
//		User admin = (User)session.get("admin");
//		if(admin!=null){
			if (images != null && images.length > 0) {
				Long tsmp = new Date().getTime();
				imagesFileName[0] = tsmp + " " + imagesFileName[0];
				// 获取上传图片的路径
				String path = ServletActionContext.getServletContext().getRealPath(
						File.separator)
						+ "/upload/adminImgs/" + imagesFileName[0];
				flag = AdminImgs.saveImg(images[0], path); // 保存图片
			} else {
				return "error";
			}
//		}
		if(flag){
			return "reTogetAllImgNames";
		}
		return "uploadFail";
	}
	
	/**
	 * 获取所有上上传的图片文件名
	 */
	public String getAllImgNames(){
		//获取上传图片的路径
		String path = ServletActionContext.getServletContext().getRealPath(File.separator) + "/upload/adminImgs/";
		//System.out.println("path = " + path);
		List<String> imgNames = AdminImgs.getImgsName(path);
		//System.out.println(imgNames.toString());
		session.put("imgNames", imgNames);
		//System.out.println("action:" + ((List<String>)session.get("imgNames")).toString());
		return "reToimgManage";
	}
	
	/**
	 * 删除指定图片
	 * @return
	 */
	public String deleteImgByName(){
		
		if(delImgName==null||"".equals(delImgName)){
			return "error";
		}
		//获取上传图片的路径
		String path = ServletActionContext.getServletContext().getRealPath(File.separator) + "/upload/adminImgs/";
		boolean flag = AdminImgs.deleteImg(path+delImgName);
		if(flag){
			return "reTogetAllImgNames";
		}
		return "deleteFail";
	}
	
	

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	
}
