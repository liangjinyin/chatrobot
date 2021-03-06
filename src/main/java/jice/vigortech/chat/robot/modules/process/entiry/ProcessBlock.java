package jice.vigortech.chat.robot.modules.process.entiry;

import java.io.Serializable;

public class ProcessBlock implements Serializable {

	/**
	 * 流程方块
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer pid;
	private Integer iid;// 意图 id
	private String itName;// 意图名称
	private Integer sort;
	/*private String lat;// 纬度--x
	private String lng;// 经度--y
*/	
	
	public String getItName() {
		return itName;
	}
	public Integer getIid() {
		return iid;
	}
	public void setIid(Integer iid) {
		this.iid = iid;
	}
	public void setItName(String itName) {
		this.itName = itName;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	
}
