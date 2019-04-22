package com.isr.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.isr.dto.MedicalDTO;
import com.isr.service.MedicalService;

public class SelectMedicalController extends AbstractController {
	private MedicalService service;
	private static final Logger log=LoggerFactory.getLogger(SelectMedicalController.class);
	public SelectMedicalController(MedicalService service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		log.info("SelectMedicalController.handleRequestInternal()");
		List<MedicalDTO> listDTO=null;
		ModelAndView mov=null;
		//use service
		listDTO=service.fetchAllMedicines();
		System.out.println(listDTO);
		mov=new ModelAndView("list_meds");
		mov.addObject("list_meds", listDTO);
		return mov;
	}

}
