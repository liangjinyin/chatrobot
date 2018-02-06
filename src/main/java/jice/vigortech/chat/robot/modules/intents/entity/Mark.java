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
	private String yHint;//肯定回答的提示 
	private String yAction;//肯定回答触发的动作
	private String inHint;//否定回答的提示
	private String inAction;//否定回答触发的动作
	private String onHint;//否定回答的提示
	private String onAction;//否定回答触发的动作
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
	public String getyHint() {
		return yHint;
	}
	public void setyHint(String yHint) {
		this.yHint = yHint;
	}
	
	public String getyAction() {
		return yAction;
	}
	public void setyAction(String yAction) {
		this.yAction = yAction;
	}
	public String getInHint() {
		return inHint;
	}
	public void setInHint(String inHint) {
		this.inHint = inHint;
	}
	public String getInAction() {
		return inAction;
	}
	public void setInAction(String inAction) {
		this.inAction = inAction;
	}
	public String getOnHint() {
		return onHint;
	}
	public void setOnHint(String onHint) {
		this.onHint = onHint;
	}
	public String getOnAction() {
		return onAction;
	}
	public void setOnAction(String onAction) {
		this.onAction = onAction;
	}
	
}
