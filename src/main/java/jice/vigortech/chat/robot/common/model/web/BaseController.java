package jice.vigortech.chat.robot.common.model.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;

import jice.vigortech.chat.robot.common.constants.ResultCode;

public abstract class BaseController {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	protected ResultCode resCode = null;
	protected Object data = null;

	public String Result() {
		Map<String, Object> result = new HashMap<String, Object>();
		if (resCode == null) {
			resCode = ResultCode.NONE;// 没有意义的数据
		}
		result.put("data", data);
		result.put("resCode", resCode.getResultCode());
		result.put("resMsg", resCode.getResultMsg());

		return JSON.toJSONString(result, SerializerFeature.DisableCircularReferenceDetect,
				SerializerFeature.WriteMapNullValue);
	}
	
	public static void writeResponse(HttpServletResponse response, ResultCode result) throws IOException {
		JSONObject json = new JSONObject();
		json.put("retCode", result.getResultCode());
		json.put("retMsg", result.getResultMsg());
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write(json.toJSONString());
		response.getWriter().flush();
		response.getWriter().close();
	}
	
	public void writeResponse(HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write(Result());
		response.getWriter().flush();
		response.getWriter().close();
	}
}