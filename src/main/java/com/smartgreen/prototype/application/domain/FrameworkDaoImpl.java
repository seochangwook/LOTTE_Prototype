package com.smartgreen.prototype.application.domain;

import java.util.Map;

import org.springframework.stereotype.Repository;

/**
 * @프로그램 설명 : 프레임워크 기능 Dao 구현
 * @FileName : FrameworkDaoImpl.java
 * @Project : SmartgreenPrototype
 * @Date : 2019.08.17
 * @작성자 : 서창욱(scw)
 * @변경이력 :
 * -  	
 */

@Repository
public class FrameworkDaoImpl implements FrameworkDao{

	@Override
	public int mvcPatternaddDao(Map<String, Object> params) {
		return (Integer.parseInt(params.get("inputdata").toString()) + 5);
	}

}
