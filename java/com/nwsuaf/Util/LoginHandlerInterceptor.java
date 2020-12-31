/**  
 * @Title: LoginHandlerInterceptor.java
 * @Package com.cms.interceptor
 * @author daluosi
 * @date 2020年7月6日
 * @version V1.0  
 */
package com.nwsuaf.Util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName: LoginHandlerInterceptor
 * @Description: 登录拦截器
 * @author 李文卫
 * @date 2020年7月6日
 * @since JDK 1.8
 */
public class LoginHandlerInterceptor implements  HandlerInterceptor {
	
	/**
	 * 方法调用之前，拦截用户是否登录
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		Object reader = session.getAttribute("reader");
		if(reader != null) {
			return true;
		}
		response.sendRedirect("/");
		return false;
	}
	
	/**
	 * 执行方法，未跳转视图之前
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}
	
	/**
	 * 请求结束后调用
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
	
}
