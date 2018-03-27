package jice.vigortech.chat.robot.common.util;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CorsHandler {

	public static void addCorsMapping(HttpServletResponse response,HttpServletRequest request) {
		String []  allowDomain= {"http://localhost:8081","http://192.168.2.202","http://119.23.175.190","http://127.0.0.1"};  
        
		Set<String> allowedOrigins= new HashSet<String>(Arrays.asList(allowDomain));  
        
        String originHeader=((HttpServletRequest) request).getHeader("Origin");  
        
        if (allowedOrigins.contains(originHeader)){  
        	response.setHeader("Access-Control-Allow-Origin", originHeader);  
        	response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE");
        	response.setHeader("Access-Control-Max-Age", "3600");
        	response.setHeader("Access-Control-Allow-Headers", "x-requested-with");
        	response.setHeader("Access-Control-Allow-Credentials", "true");
        }
        
		/*if(SysConstants.SERVER_ALLOW_CORSDOMAIN) {
			
				response.setHeader("Access-Control-Allow-Origin", "http://localhost:8081"http://119.23.175.190,SysConstants.SERVER_CORSDOMAIN);
				response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE");
				response.setHeader("Access-Control-Max-Age", "3600");
				response.setHeader("Access-Control-Allow-Headers", "x-requested-with");
				response.setHeader("Access-Control-Allow-Credentials", "true");
		}*/
	}
}
