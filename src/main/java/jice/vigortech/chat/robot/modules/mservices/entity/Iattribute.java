package jice.vigortech.chat.robot.modules.mservices.entity;

import java.io.Serializable;

public class Iattribute implements Serializable {

	/**
	 * 接口属性
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private Integer mid;//微服务接口id
	private String name;
	private String value;
	private String describe;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	
}
