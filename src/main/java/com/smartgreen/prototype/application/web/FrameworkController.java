package com.smartgreen.prototype.application.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.smartgreen.prototype.application.service.FrameworkService;

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
	
	@Autowired
	private FrameworkService frameworkService;
	
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
	
	@RequestMapping(value = "prototype/mvcpattern/test", method = RequestMethod.POST, produces = {"application/json"})
	public @ResponseBody Map<String, Object> mvcPatternTestAjax(@RequestBody Map<String, Object> params) {	
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		retVal.put("resultObject", frameworkService.mvcPatternaddService(params));
		
		return retVal;
	}
	
	@RequestMapping(value = "prototype/ajaxcall", method = RequestMethod.GET)
    public ModelAndView ajaxCallView(ModelAndView mv){
		mv.setViewName("prototype/framework/functionview/ajaxcallview");
		
		mv.addObject("serverIp", serverIp);
		mv.addObject("serverPort", serverPort);
		
		return mv;
    }
	
	@RequestMapping(value = "prototype/ajaxcall/testget", method = RequestMethod.GET, produces = {"application/json"})
	public @ResponseBody Map<String, Object> ajaxCallTestAjaxGET(@RequestParam("name") String name) {	
		Map<String, Object> retVal = new HashMap<String, Object>();
	
		/* JSON Return type is Map<> (JAVA Map<> is JSON)  */
		Map<String, Object> humenInfo = new HashMap<String, Object>();
		
		if(name.equals("")) {
			retVal.put("resultObject", "fail");
		} else {
			humenInfo.put("name", name);
			humenInfo.put("age", 1);
			
			/* JSON 형태를 보여주기 위한 문자열 반환 (테스트용) */
			retVal.put("resultObject", humenInfo.toString());
			
			/* JSON 형태로 사용하는 구조 (실제 사용해야 하는 메소드) */
			//retVal.put("resultObject", humenInfo);
		}
		
		return retVal;
	}
	
	@RequestMapping(value = "prototype/ajaxcall/testpost", method = RequestMethod.POST, produces = {"application/json"})
	public @ResponseBody Map<String, Object> ajaxCallTestAjaxPOST(@RequestBody Map<String, Object> params) {	
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		Map<String, Object> resultInfo = new HashMap<String, Object>();
		
		if(params.get("name").equals("")) {
			retVal.put("resultObject", "fail");
		} else {
			resultInfo.put("result", "success");
			
			/* JSON 형태를 보여주기 위한 문자열 반환 (테스트용) */
			retVal.put("resultObject", resultInfo.toString());
			
			/* JSON 형태로 사용하는 구조 (실제 사용해야 하는 메소드) */
			//retVal.put("resultObject", resultInfo);
		}
		
		return retVal;
	}
}
