package jice.vigortech.chat.robot.modules.intents.entity;

import java.io.Serializable;

public class ContentJson implements Serializable {

	/**
	 * 判断微服务结果内容 内容判断的json
	 */
	private static final long serialVersionUID = 1L;
	private String message;
	private String action;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	
	
	
}
