package com.smartgreen.prototype.application.web;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @프로그램 설명 : 프레임워크 기능 컨트롤러
 * @FileName : FrameworkController.java
 * @Project : SmartgreenPrototype
 * @Date : 2019.08.11
 * @작성자 : 서창욱(scw)
 * @변경이력 :
 * - 	
 */
@RestController
public class FrameworkController {
	@Value("${server.address}")
	private String serverIp;
	
	@Value("${server.port}")
	private String serverPort;
	
	@RequestMapping(value = "prototype/frameworksamplepage.do", method = RequestMethod.GET)
    public ModelAndView frameworkSampleView(ModelAndView mv){
		mv.setViewName("prototype/framework/frameworkmainview");
		
		mv.addObject("serverIp", serverIp);
		mv.addObject("serverPort", serverPort);
		
		return mv;
    }
	
	@RequestMapping(value = "prototype/springbootinfra", method = RequestMethod.GET)
    public ModelAndView springbootInfraView(ModelAndView mv){
		mv.setViewName("prototype/framework/functionview/frameworkinfraview");
		
		mv.addObject("serverIp", serverIp);
		mv.addObject("serverPort", serverPort);
		
		return mv;
    }
	
	@RequestMapping(value = "prototype/mavenbuild", method = RequestMethod.GET)
    public ModelAndView mavenBuildView(ModelAndView mv){
		mv.setViewName("prototype/framework/functionview/mavenbuildview");
		
		mv.addObject("serverIp", serverIp);
		mv.addObject("serverPort", serverPort);
		
		return mv;
    }
	
	@RequestMapping(value = "prototype/mvcpattern", method = RequestMethod.GET)
    public ModelAndView mvcPatternView(ModelAndView mv){
		mv.setViewName("prototype/framework/functionview/mvcpatternview");
		
		mv.addObject("serverIp", serverIp);
		mv.addObject("serverPort", serverPort);
		
		return mv;
    }
}
