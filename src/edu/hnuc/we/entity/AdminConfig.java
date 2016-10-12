package edu.hnuc.we.entity;

/**
 * Adminconfig entity.
 *  @author xxmodd
 */

public class AdminConfig {

	private Integer confId;
	private String confKey;
	private String confValue;

	// Constructors

	/** default constructor */
	public AdminConfig() {
	}

	/** full constructor */
	public AdminConfig(String confKey, String confValue) {
		this.confKey = confKey;
		this.confValue = confValue;
	}

	// Property accessors

	public Integer getConfId() {
		return this.confId;
	}

	public void setConfId(Integer confId) {
		this.confId = confId;
	}

	public String getConfKey() {
		return this.confKey;
	}

	public void setConfKey(String confKey) {
		this.confKey = confKey;
	}

	public String getConfValue() {
		return this.confValue;
	}

	public void setConfValue(String confValue) {
		this.confValue = confValue;
	}

}