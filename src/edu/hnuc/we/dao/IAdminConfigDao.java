package edu.hnuc.we.dao;
/**
 * 首页定制持久接口
 * @author xxmodd
 * 
 */
public interface IAdminConfigDao {

	 
	public String getValueByKey(String key);
	
	public boolean updateIndexBtnInfo(String conf_key , String json);
	
}
