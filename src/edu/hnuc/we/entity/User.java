package edu.hnuc.we.entity;

import java.util.List;

/**
 * 用户实体
 * @author Hallbow
 *
 */
public class User {
	
	Integer usr_id; // id
	String usr_stuId; // 学号
	String usr_name; // 学生真实姓名
	String usr_pwd; // 密码
	Integer isAdmin = 0; // 0 普通 1 管理员
	List<LostAndFound> lafList; // 与该学生相关的失物招领信息
	
	public User() {}
	
	public User(Integer usr_id, String usr_stuId, String usr_name,
			String usr_pwd, Integer isAdmin, List<LostAndFound> lafList) {
		super();
		this.usr_id = usr_id;
		this.usr_stuId = usr_stuId;
		this.usr_name = usr_name;
		this.usr_pwd = usr_pwd;
		this.isAdmin = isAdmin;
		this.lafList = lafList;
	}

	public Integer getUsr_id() {
		return usr_id;
	}

	public void setUsr_id(Integer usr_id) {
		this.usr_id = usr_id;
	}

	public String getUsr_stuId() {
		return usr_stuId;
	}

	public void setUsr_stuId(String usr_stuId) {
		this.usr_stuId = usr_stuId;
	}

	public String getUsr_name() {
		return usr_name;
	}

	public void setUsr_name(String usr_name) {
		this.usr_name = usr_name;
	}

	public String getUsr_pwd() {
		return usr_pwd;
	}

	public void setUsr_pwd(String usr_pwd) {
		this.usr_pwd = usr_pwd;
	}

	public Integer getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(Integer isAdmin) {
		this.isAdmin = isAdmin;
	}

	public List<LostAndFound> getLafList() {
		return lafList;
	}

	public void setLafList(List<LostAndFound> lafList) {
		this.lafList = lafList;
	}

	@Override
	public String toString() {
		return "User [usr_id=" + usr_id + ", usr_stuId=" + usr_stuId
				+ ", usr_name=" + usr_name + ", usr_pwd=" + usr_pwd
				+ ", isAdmin=" + isAdmin + ", lafList=" + lafList + "]";
	}
	
}
