package com.a7.everyware.support.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


//업무지원 컨트롤러
@Controller
@RequestMapping(value="support")
public class SupportController {

	private static final Logger logger = LoggerFactory.getLogger(SupportController.class);
	
	
	//업무지원 폼 보기
	@RequestMapping (value="supportMain", method=RequestMethod.GET)
	public String supportMain() {
		
		
		return "support/supportMain";
	}
	
}
