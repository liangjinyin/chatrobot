package jice.vigortech.chat.robot.modules.process.entiry;

import java.io.Serializable;
import java.util.List;

import jice.vigortech.chat.robot.common.model.entity.BaseEntity;

public class Processes extends BaseEntity implements Serializable {

	/**
	 * 流程
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private String describe;
	private String content;
	private String ask;//流程执行之后的询问
	private String yAction;//肯定执行的动作
	private String nAction;//否定执行的动作
	private String trigger;//触发意图
	

	private List<ProcessBlock> processBlockList;

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

	/*public String getContent() {
		return content;
	}

	public void setContent(List<ProcessBlock> processBlockList) {
		this.content = JSON.toJSONString(processBlockList);
	}*/

	public List<ProcessBlock> getProcessBlockList() {
		return processBlockList;
	}

	public void setProcessBlockList(List<ProcessBlock> processBlockList) {
		this.processBlockList = processBlockList;
	}

	public String getAsk() {
		return ask;
	}

	public void setAsk(String ask) {
		this.ask = ask;
	}

	public String getyAction() {
		return yAction;
	}

	public void setyAction(String yAction) {
		this.yAction = yAction;
	}

	public String getnAction() {
		return nAction;
	}

	public void setnAction(String nAction) {
		this.nAction = nAction;
	}

	public String getTrigger() {
		return trigger;
	}

	public void setTrigger(String trigger) {
		this.trigger = trigger;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
