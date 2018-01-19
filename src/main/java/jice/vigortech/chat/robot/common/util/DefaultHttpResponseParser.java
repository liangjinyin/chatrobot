package jice.vigortech.chat.robot.common.util;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.util.EntityUtils;

public class DefaultHttpResponseParser implements HttpResponseParser {

	public CommonHttpResponse parseHttpResponse(HttpResponse response) throws ParseException, IOException {
		CommonHttpResponse commonResp = new CommonHttpResponse();
		commonResp.setRetCode(response.getStatusLine().getStatusCode());
		commonResp.setRetMsg(response.getStatusLine().getReasonPhrase());
		commonResp.setEntityStr(EntityUtils.toString(response.getEntity()));
		return commonResp;
	}

}
