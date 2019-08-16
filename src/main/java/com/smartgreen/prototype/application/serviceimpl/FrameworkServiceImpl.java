package com.smartgreen.prototype.application.serviceimpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartgreen.prototype.application.domain.FrameworkDao;
import com.smartgreen.prototype.application.service.FrameworkService;

/**
 * @프로그램 설명 : 프레임워크 기능 서비스 구현
 * @FileName : FrameworkServiceImpl.java
 * @Project : SmartgreenPrototype
 * @Date : 2019.08.17
 * @작성자 : 서창욱(scw)
 * @변경이력 :
 * - 	
 */

@Service
public class FrameworkServiceImpl implements FrameworkService {
	@Autowired
	FrameworkDao frameworkDao;
	
	@Override
	public int mvcPatternaddService(Map<String, Object> params) {
		return frameworkDao.mvcPatternaddDao(params);
	}

}
