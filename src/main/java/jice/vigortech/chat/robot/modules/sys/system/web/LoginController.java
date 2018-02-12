package jice.vigortech.chat.robot.modules.sys.system.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Controller;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.model.web.BaseController;
import jice.vigortech.chat.robot.common.util.CorsHandler;
import jice.vigortech.chat.robot.modules.sys.user.service.UserService;

@Controller
public class LoginController extends BaseController implements LogoutSuccessHandler,AuthenticationSuccessHandler,AuthenticationFailureHandler {
	
	@Autowired
	UserService userService;
	
	
	
	/**
	 * 验证失败调用
	 */
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		System.out.println("authenticationFailure:");
		exception.printStackTrace();
		if(exception instanceof UsernameNotFoundException){
			resCode = ResultCode.USER_NOTEXIST;
		}else if(exception instanceof DisabledException){
			resCode = ResultCode.USER_DENIED;
		}else if(exception instanceof BadCredentialsException){
			resCode = ResultCode.USER_NAME_OR_PASSWORD_ERROR;
		}else{
			resCode = ResultCode.OPERATION_FAILED;
		}
		data = null;
		CorsHandler.addCorsMapping(response,request);
		writeResponse(response);
	}
	
	/**
	 * 验证成功调用
	 */
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		String username = request.getParameter("username");
		System.out.println(username);
		data = userService.getUserTokenByUserName(username,check(request,response));
		if(data instanceof ResultCode){
			resCode = ResultCode.OPERATION_FAILED;
			data = null;
		}
		resCode = ResultCode.OPERATION_SUCCESSED;
		CorsHandler.addCorsMapping(response,request);
		writeResponse(response);	
	}
	/**
	 * 注销时调用
	 */
	@Override
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		data = null;
		resCode = ResultCode.OPERATION_SUCCESSED;
		CorsHandler.addCorsMapping(response,request);
		writeResponse(response);
	}
	
	/**
	 * 判断
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	public boolean check(HttpServletRequest request,HttpServletResponse response){  
	    boolean isFromMobile=false;  
	      
	    HttpSession session= request.getSession();  
	   //检查是否已经记录访问方式（移动端或pc端）  
	    if(null==session.getAttribute("ua")){  
	        try{  
	            //获取ua，用来判断是否为移动端访问  
	            String userAgent = request.getHeader( "USER-AGENT" ).toLowerCase();    
	            if(null == userAgent){    
	                userAgent = "";    
	            }  
	            //isFromMobile=CheckMobileUtil.check(userAgent); 
	            isFromMobile = userAgent.equals("okhttp/3.3.1");
	            System.out.println(userAgent);//okhttp/3.3.1
	            //判断是否为移动端访问  
	            if(isFromMobile){  
	                System.out.println("移动端访问");  
	                session.setAttribute("ua","mobile");  
	            } else {  
	                System.out.println("pc端访问");//postmanruntime/7.1.1  
	                session.setAttribute("ua","pc");  
	            }  
	        }catch(Exception e){
	        	e.printStackTrace();
	        }  
	    }else{  
	        isFromMobile=session.getAttribute("ua").equals("mobile");  
	    }  
	      
	    return isFromMobile;  
	}  
}
