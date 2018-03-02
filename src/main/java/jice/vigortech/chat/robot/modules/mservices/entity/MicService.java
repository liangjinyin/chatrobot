package jice.vigortech.chat.robot.modules.mservices.entity;

import java.io.Serializable;
import java.util.List;

import jice.vigortech.chat.robot.common.model.entity.BaseEntity;

public class MicService extends BaseEntity implements Serializable {

	/**
	 * 微服务
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;// 微服务id
	private String name;// 名称
	private String interfaces;//接口
	private String url;//完整的url
	private String describe;//描述
	private String attrJson;//接口参数json
	private List<Iattribute> attrList;

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

	public String getInterfaces() {
		return interfaces;
	}

	public void setInterfaces(String interfaces) {
		this.interfaces = interfaces;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public List<Iattribute> getAttrList() {
		return attrList;
	}

	public void setAttrList(List<Iattribute> attrList) {
		this.attrList = attrList;
	}


	public String getAttrJson() {
		return attrJson;
	}

	public void setAttrJson(String attrJson) {
		this.attrJson = attrJson;
	}

	

	
}
