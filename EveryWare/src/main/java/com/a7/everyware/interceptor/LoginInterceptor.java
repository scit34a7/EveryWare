package com.a7.everyware.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

// 스프링에서 제공하는 HandlerInterceptorAdapter 상속
// 요청의 전, 후처리를 담당하는 클래스
public class LoginInterceptor extends HandlerInterceptorAdapter {

	Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	// 요청 처리 전에 실행 됨
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		logger.debug("LoginInterceptor 실행"); // 인터셉터가 실행됐는지 확인
		
		// 세션의 로그인 정보 읽음
		HttpSession session = request.getSession();
		
		String userId = (String) session.getAttribute("userId");
		
		// 없으면 로그인 페이지로 리다이렉트
		if (userId == null) {
			response.sendRedirect(request.getContextPath() + "/");
			return false;
		}
		
		// xml
		return super.preHandle(request, response, handler);
	}

}
