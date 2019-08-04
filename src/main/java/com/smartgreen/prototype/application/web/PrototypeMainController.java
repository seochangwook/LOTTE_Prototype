package com.smartgreen.prototype.application.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @프로그램 설명 : 프로토타입 메인소개 페이지
 * @FileName : PrototypeMainController.java
 * @Project : SmartgreenPrototype
 * @Date : 2019.08.04
 * @작성자 : 서창욱(scw)
 * @변경이력 :
 * - 	
 */
@RestController
public class PrototypeMainController {
	@RequestMapping(value = "prototype/main.do", method = RequestMethod.GET)
    public ModelAndView mainView(ModelAndView mv){
		mv.setViewName("prototype/mainview");
		
		return mv;
    }
}
