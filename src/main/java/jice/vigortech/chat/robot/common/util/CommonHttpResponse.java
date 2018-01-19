package jice.vigortech.chat.robot.common.util;

import com.alibaba.fastjson.JSON;

public class CommonHttpResponse {

	private String entityStr;
	private int retCode;
	private String retMsg;
	
	public String getEntityStr() {
		return entityStr;
	}
	public void setEntityStr(String entityStr) {
		this.entityStr = entityStr;
	}
	public int getRetCode() {
		return retCode;
	}
	public void setRetCode(int retCode) {
		this.retCode = retCode;
	}
	public String getRetMsg() {
		return retMsg;
	}
	public void setRetMsg(String retMsg) {
		this.retMsg = retMsg;
	}
	
	public String toString() {
		return JSON.toJSONString(this);
	}
}
