package jice.vigortech.chat.robot.modules.sys.user.entity;

import java.io.Serializable;

import jice.vigortech.chat.robot.common.model.entity.BaseEntity;

public class MobileCode extends BaseEntity implements Serializable {

	/**
	 * 验证码
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String mobile;
	private String code;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	
}
