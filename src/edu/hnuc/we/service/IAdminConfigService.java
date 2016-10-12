package edu.hnuc.we.service;
/**
 * 
 * @author xxmodd
 * 首页定制接口
 *
 */
public interface IAdminConfigService {
	
	public String getValueByKey(String key);
	
	public boolean updateIndexBtnInfo(String conf_key , String json);

}
