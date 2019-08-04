package com.smartgreen.prototype.application.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @프로그램 설명 : 공통 에러 컨트롤러 (Spring Boot의 WhiteLabel 제어)
 * @FileName : CommonErrorController.java
 * @Project : SmartgreenPrototype
 * @Date : 2019.08.04
 * @작성자 : 서창욱(scw)
 * @변경이력 :
 * - 	
 */
@RestController
public class CommonErrorController implements ErrorController{
	@RequestMapping("/error")
    public ModelAndView handleError(ModelAndView mv, HttpServletRequest request) {
		Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
		
		if (status != null) {
	        Integer statusCode = Integer.valueOf(status.toString());
	     
	        if(statusCode == HttpStatus.NOT_FOUND.value()) {
	        		mv.setViewName("errors/404error");
	        		
	            return mv;
	        } else if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
	        		mv.setViewName("errors/500error");
	        		
	            return mv;
	        }
	    }
		
		mv.setViewName("errors/etcerror");
		
		return mv;
    }
	
	@Override
	public String getErrorPath() {
		return "/error";
	}

}
