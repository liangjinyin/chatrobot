package jice.vigortech.chat.robot.modules.mservices.entity;

import java.io.Serializable;

public class Iattribute implements Serializable {

	/**
	 * 接口属性
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String attrName;//参数名称
	private String describe;//参数描述
	
	
	
	
	public String getAttrName() {
		return attrName;
	}
	public void setAttrName(String attrName) {
		this.attrName = attrName;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
}
