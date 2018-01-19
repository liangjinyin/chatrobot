package jice.vigortech.chat.robot.common.util;

import org.apache.http.HttpResponse;

public interface HttpResponseParser {
	
	public CommonHttpResponse parseHttpResponse(HttpResponse response) throws Exception;
}
