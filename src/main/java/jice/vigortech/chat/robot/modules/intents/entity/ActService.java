package jice.vigortech.chat.robot.modules.intents.entity;

import java.io.Serializable;
import java.util.List;

public class ActService implements Serializable {

	/**
	 * 场景中的动作与微服务关联
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private Integer intId;//意图名称
	private String intName;//意图名称
	private String actionName;//动作名称
	private String type;//两种类型：0判断微服务结果内容，1判断微服务结果有无
	private Integer micId;//微服务id
	private String yResult;//1判断微服务结果有无 有执行的动作
	private String nResult;//1判断微服务结果有无 无执行的动作
	private String content;//0判断微服务结果内容 内容判断的json
	private List<ContentJson> cJson;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getIntId() {
		return intId;
	}
	public void setIntId(Integer intId) {
		this.intId = intId;
	}
	public String getIntName() {
		return intName;
	}
	public void setIntName(String intName) {
		this.intName = intName;
	}
	public String getActionName() {
		return actionName;
	}
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public Integer getMicId() {
		return micId;
	}
	public void setMicId(Integer micId) {
		this.micId = micId;
	}
	public String getyResult() {
		return yResult;
	}
	public void setyResult(String yResult) {
		this.yResult = yResult;
	}
	public String getnResult() {
		return nResult;
	}
	public void setnResult(String nResult) {
		this.nResult = nResult;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<ContentJson> getcJson() {
		return cJson;
	}
	public void setcJson(List<ContentJson> cJson) {
		this.cJson = cJson;
	}
	
	
}
