package jice.vigortech.chat.robot.modules.intents.entity;

import java.io.Serializable;
import java.util.List;

import jice.vigortech.chat.robot.common.model.entity.BaseEntity;

public class Intents extends BaseEntity implements Serializable {

	/**
	 * 场景
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private Integer appId;// 应用id
	private String name;
	private Integer rank;// 等级
	private String answer;// 回复
	private Integer micInterface;//场景中的微服务接口
	private String actionName;
	private List<Solt> soltList;//solt
	private List<Ask> askList;// 场景中的客户提问与robot的回答
	private String input;//场景的输入
	private List<Mark> output;//场景的输出
	private String check;//
	private String outputId;

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getRank() {
		return rank;
	}

	public void setRank(Integer rank) {
		this.rank = rank;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}


	public List<Solt> getSoltList() {
		return soltList;
	}

	public void setSoltList(List<Solt> soltList) {
		this.soltList = soltList;
	}

	public List<Ask> getAskList() {
		return askList;
	}

	public void setAskList(List<Ask> askList) {
		this.askList = askList;
	}

	public Integer getMicInterface() {
		return micInterface;
	}

	public void setMicInterface(Integer micInterface) {
		this.micInterface = micInterface;
	}

	

	public List<Mark> getOutput() {
		return output;
	}

	public String getInput() {
		return input;
	}

	public void setOutput(List<Mark> output) {
		this.output = output;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public void setInput(String input) {
		this.input = input;
	}

	public String getOutputId() {
		return outputId;
	}

	public void setOutputId(String outputId) {
		this.outputId = outputId;
	}

	
	
	


}
