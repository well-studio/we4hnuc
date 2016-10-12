package edu.hnuc.we.service.impl;

import edu.hnuc.we.dao.IAdminConfigDao;
import edu.hnuc.we.service.IAdminConfigService;
/**
 * 	首页定制实现类
 *  @author xxmodd
 */
public class AdminConfigServiceImpl implements IAdminConfigService {

	IAdminConfigDao adminConfigDao;
	public void setAdminConfigDao(IAdminConfigDao adminConfigDao){
		this.adminConfigDao = adminConfigDao;
	}
	
	@Override
	public String getValueByKey(String key) {
		return adminConfigDao.getValueByKey(key);
	}

	@Override
	public boolean updateIndexBtnInfo(String conf_key ,String json) {
		return adminConfigDao.updateIndexBtnInfo(conf_key , json);
	}

	
	
	
}
