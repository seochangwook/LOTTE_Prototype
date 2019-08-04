package com.smartgreen.prototype.application.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PrototypeMainController {
	@RequestMapping(value = "prototype/main.do", method = RequestMethod.GET)
    public ModelAndView mainView(ModelAndView mv){
		mv.setViewName("prototype/mainview");
		
		return mv;
    }
}
