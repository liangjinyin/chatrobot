package jice.vigortech.chat.robot.modules.intents.entity;

import java.io.Serializable;

public class Mark implements Serializable {

	/**
	 * 标识
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private Integer appId;//应用id
	private Integer intId;//意图id
	private String name;//名称
	private String ask;//标识问题
	private String lifecycle;//生命周期
	private Integer delFlag;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAppId() {
		return appId;
	}
	public void setAppId(Integer appId) {
		this.appId = appId;
	}
	public Integer getIntId() {
		return intId;
	}
	public void setIntId(Integer intId) {
		this.intId = intId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAsk() {
		return ask;
	}
	public void setAsk(String ask) {
		this.ask = ask;
	}
	public Integer getDelFlag() {
		return delFlag;
	}
	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}
	public String getLifecycle() {
		return lifecycle;
	}
	public void setLifecycle(String lifecycle) {
		this.lifecycle = lifecycle;
	}
	
	
}
