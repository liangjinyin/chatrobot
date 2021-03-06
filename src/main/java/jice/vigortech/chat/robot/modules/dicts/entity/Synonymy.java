package jice.vigortech.chat.robot.modules.dicts.entity;

import java.io.Serializable;

public class Synonymy implements Serializable {

	/**
	 * 同义词
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private Integer dictId;//词库id
	private String keyword;// 关键词
	private String synonymy;// 同义词
	private Integer delFlag;
	
	
	public Integer getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	
	public Integer getDictId() {
		return dictId;
	}

	public void setDictId(Integer dictId) {
		this.dictId = dictId;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getSynonymy() {
		return synonymy;
	}

	public void setSynonymy(String synonymy) {
		
		this.synonymy = synonymy;
	}
}
