package jice.vigortech.chat.robot.modules.sys.user.service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.http.HttpStatus;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.util.CommonHttpResponse;
import jice.vigortech.chat.robot.common.util.HttpHelper;

@Component
public class TecentSMSService {

	public static final String APPKEY = "359d9a1bde7f4437646a554923a54368"; 
	public static final String APPID = "1400035195";
	private static final String RANDOM = "masadata";
	public static final int SMS_TYPE_NORMAL = 0; //普通短信
	public static final int SMS_TYPE_MARKETING = 1; //营销短信
	public static final int SMS_SEND_TIMEOUT = 1008;
	public static final int SMS_TEMPLATEID_SEND_MOBILECODE = 19;
	public static final String SMS_TEMPLATE_SEND_MOBILECODE = "短信验证码：%s，请勿泄漏。有效期10分钟。";
	
	private static final String SMS_URL = "https://yun.tim.qq.com/v5/tlssmssvr/sendsms?sdkappid=%s&random=%s";
	private static final String SIGN_FORMAT = "appkey=%s&random=%s&time=%s&mobile=%s";
	//单发
	public static ResultCode sendSMSSingle(String mobile, String code) throws Exception {
		JSONObject msgBody = new JSONObject();
		JSONObject tel = new JSONObject();
		Long time = System.currentTimeMillis() / 1000;
		tel.put("nationcode", "86");
		tel.put("mobile", mobile);
		msgBody.put("tel", tel);
		msgBody.put("msg", String.format(SMS_TEMPLATE_SEND_MOBILECODE, code));
		msgBody.put("time", time);
		msgBody.put("sig", sha256(String.format(SIGN_FORMAT, APPKEY, RANDOM, time, mobile)));			
		msgBody.put("ext", "");			
		msgBody.put("extend", "");
		int result = 0, trys = 0;
		try {
			do {
				CommonHttpResponse response = new HttpHelper().httpPostWithStringStream(String.format(SMS_URL, APPID, RANDOM), msgBody);
				if(response.getRetCode() == HttpStatus.SC_OK) {
					System.out.println("send msg result:" + response.getEntityStr());
					result = JSON.parseObject(response.getEntityStr()).getIntValue("result");
					if(0 == result) {
						return ResultCode.OPERATION_SUCCESSED;
					}
				}
			} while(result == SMS_SEND_TIMEOUT && ++trys < 3);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ResultCode.OPERATION_FAILED;
	}

	private static String sha256(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] inputByteArray = str.getBytes();
        messageDigest.update(inputByteArray);
        byte[] resultByteArray = messageDigest.digest();
        char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] resultCharArray = new char[resultByteArray.length * 2];
        int index = 0;
        for (byte b : resultByteArray) {
            resultCharArray[index++] = hexDigits[b >>> 4 & 0xf];
            resultCharArray[index++] = hexDigits[b & 0xf];
        }
        return new String(resultCharArray);
	}
	
}
