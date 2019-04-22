package com.isr.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.isr.command.LoginCommand;
import com.isr.dto.LoginDTO;
import com.isr.service.MedicalService;


@Controller
public class LoginController extends SimpleFormController{
	private static final Logger log=LoggerFactory.getLogger(LoginController.class);
	private MedicalService service;
	
	public LoginController(MedicalService service) {
		this.service=service;
	}
	
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command,
			BindException errors) throws Exception {
			log.debug("LoginController.onSubmit()");
		LoginCommand cmd=(LoginCommand) command;
		String result=null;
		LoginDTO dto=null;
		dto=new LoginDTO();
		ModelAndView mov=null;
		
		//copy properties from command to dto
		BeanUtils.copyProperties(cmd, dto);
		//use service
		result=service.loginCheck(dto);
		mov=new ModelAndView("result");
		mov.addObject("res", result);
		
		if(result=="Valid credentials") {
			mov.addObject("yes", "Not Empty");
		}
		
		if(result=="Invalid credentials") {
			mov.addObject("no","Not Empty");
		}
		return mov;
	}
	
	

}
