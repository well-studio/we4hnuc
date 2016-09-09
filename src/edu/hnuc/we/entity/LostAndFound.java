package edu.hnuc.we.entity;

import java.sql.Timestamp;

/**
 * 失物招领实体类
 * @author Hallbow
 *
 */
public class LostAndFound {
	Integer laf_id; // id
	Integer laf_type = 0; // 0 招领  1 寻物
	Integer laf_stat = 3; // 1  有效 2 过期 3 待审核 4  审核失败  6 认领/寻物成功
	Timestamp laf_laftime; // 失物丢的大概时间
	Timestamp laf_pubtime; // 发布时间
	Timestamp laf_suctime; // 成功认领时间
	String laf_sucPhone; // 认领人电话号码
	String laf_sucName; // 认领人姓名
	String laf_sucStuId; // 认领人学号
	String laf_name; // 联系人姓名
	String laf_stuid;// 学号
	String laf_phone; // 电话号码
	String laf_qq; //QQ号码
	String laf_wechat; // 微信号码
	String laf_detail; // 描述
	String laf_mainDetail; // 概述
	String laf_pic; // 图片地址(参考华商只能上传一张图片,上传多张图片用 **号分割)
	
	
	public LostAndFound() {}


	public LostAndFound(Integer laf_id, Integer laf_type, Integer laf_stat,
			Timestamp laf_laftime, Timestamp laf_pubtime,
			Timestamp laf_suctime, String laf_sucPhone, String laf_sucName,
			String laf_sucStuId, String laf_name, String laf_stuid,
			String laf_phone, String laf_qq, String laf_wechat,
			String laf_detail, String laf_mainDetail, String laf_pic) {
		super();
		this.laf_id = laf_id;
		this.laf_type = laf_type;
		this.laf_stat = laf_stat;
		this.laf_laftime = laf_laftime;
		this.laf_pubtime = laf_pubtime;
		this.laf_suctime = laf_suctime;
		this.laf_sucPhone = laf_sucPhone;
		this.laf_sucName = laf_sucName;
		this.laf_sucStuId = laf_sucStuId;
		this.laf_name = laf_name;
		this.laf_stuid = laf_stuid;
		this.laf_phone = laf_phone;
		this.laf_qq = laf_qq;
		this.laf_wechat = laf_wechat;
		this.laf_detail = laf_detail;
		this.laf_mainDetail = laf_mainDetail;
		this.laf_pic = laf_pic;
	}


	public Integer getLaf_id() {
		return laf_id;
	}


	public void setLaf_id(Integer laf_id) {
		this.laf_id = laf_id;
	}


	public Integer getLaf_type() {
		return laf_type;
	}


	public void setLaf_type(Integer laf_type) {
		this.laf_type = laf_type;
	}


	public Integer getLaf_stat() {
		return laf_stat;
	}


	public void setLaf_stat(Integer laf_stat) {
		this.laf_stat = laf_stat;
	}


	public Timestamp getLaf_laftime() {
		return laf_laftime;
	}


	public void setLaf_laftime(Timestamp laf_laftime) {
		this.laf_laftime = laf_laftime;
	}


	public Timestamp getLaf_pubtime() {
		return laf_pubtime;
	}


	public void setLaf_pubtime(Timestamp laf_pubtime) {
		this.laf_pubtime = laf_pubtime;
	}


	public Timestamp getLaf_suctime() {
		return laf_suctime;
	}


	public void setLaf_suctime(Timestamp laf_suctime) {
		this.laf_suctime = laf_suctime;
	}


	public String getLaf_sucPhone() {
		return laf_sucPhone;
	}


	public void setLaf_sucPhone(String laf_sucPhone) {
		this.laf_sucPhone = laf_sucPhone;
	}


	public String getLaf_sucName() {
		return laf_sucName;
	}


	public void setLaf_sucName(String laf_sucName) {
		this.laf_sucName = laf_sucName;
	}


	public String getLaf_sucStuId() {
		return laf_sucStuId;
	}


	public void setLaf_sucStuId(String laf_sucStuId) {
		this.laf_sucStuId = laf_sucStuId;
	}


	public String getLaf_name() {
		return laf_name;
	}


	public void setLaf_name(String laf_name) {
		this.laf_name = laf_name;
	}


	public String getLaf_stuid() {
		return laf_stuid;
	}


	public void setLaf_stuid(String laf_stuid) {
		this.laf_stuid = laf_stuid;
	}


	public String getLaf_phone() {
		return laf_phone;
	}


	public void setLaf_phone(String laf_phone) {
		this.laf_phone = laf_phone;
	}


	public String getLaf_qq() {
		return laf_qq;
	}


	public void setLaf_qq(String laf_qq) {
		this.laf_qq = laf_qq;
	}


	public String getLaf_wechat() {
		return laf_wechat;
	}


	public void setLaf_wechat(String laf_wechat) {
		this.laf_wechat = laf_wechat;
	}


	public String getLaf_detail() {
		return laf_detail;
	}


	public void setLaf_detail(String laf_detail) {
		this.laf_detail = laf_detail;
	}


	public String getLaf_mainDetail() {
		return laf_mainDetail;
	}


	public void setLaf_mainDetail(String laf_mainDetail) {
		this.laf_mainDetail = laf_mainDetail;
	}


	public String getLaf_pic() {
		return laf_pic;
	}


	public void setLaf_pic(String laf_pic) {
		this.laf_pic = laf_pic;
	}


	@Override
	public String toString() {
		return "LostAndFound [laf_id=" + laf_id + ", laf_type=" + laf_type
				+ ", laf_stat=" + laf_stat + ", laf_laftime=" + laf_laftime
				+ ", laf_pubtime=" + laf_pubtime + ", laf_suctime="
				+ laf_suctime + ", laf_sucPhone=" + laf_sucPhone
				+ ", laf_sucName=" + laf_sucName + ", laf_sucStuId="
				+ laf_sucStuId + ", laf_name=" + laf_name + ", laf_stuid="
				+ laf_stuid + ", laf_phone=" + laf_phone + ", laf_qq=" + laf_qq
				+ ", laf_wechat=" + laf_wechat + ", laf_detail=" + laf_detail
				+ ", laf_mainDetail=" + laf_mainDetail + ", laf_pic=" + laf_pic
				+ "]";
	}
	
}
