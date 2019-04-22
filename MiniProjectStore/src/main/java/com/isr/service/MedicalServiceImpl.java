package com.isr.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;

import com.isr.bo.LoginBO;
import com.isr.bo.MedicalBO;
import com.isr.dao.MedicalDAO;
import com.isr.dto.LoginDTO;
import com.isr.dto.MedicalDTO;

public class MedicalServiceImpl implements MedicalService {
	private MedicalDAO dao;
	private static final Logger log=LoggerFactory.getLogger(MedicalServiceImpl.class);
	public MedicalServiceImpl(MedicalDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<MedicalDTO> fetchAllMedicines() {
		List<MedicalDTO> listDTO=new ArrayList<MedicalDTO>();
		List<MedicalBO> listBO=null;
		
		log.trace("MedicalServiceImpl.fetchAllMedicines()");
		
		//use dao
		listBO=dao.getAllMedicines();
		for(MedicalBO bo:listBO){
			MedicalDTO dto=new MedicalDTO();
			BeanUtils.copyProperties(bo, dto);
			listDTO.add(dto);	
		}
		return listDTO;
	}

	@Override
	public int serviceInsertMedicine(MedicalDTO bo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MedicalDTO serviceGetMedicineById(int mId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int serviceUpdateMedicine(MedicalDTO bo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int serviceDeleteMedicine(int mId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String loginCheck(LoginDTO dto) {
		LoginBO bo=null;
		int count=0;
		log.debug("MedicalServiceImpl.loginCheck()");
		bo=new LoginBO();
		//copy properties
		BeanUtils.copyProperties(dto, bo);
		
		//use dao
		count=dao.loginUser(bo);
		
		if(count==0)
			return "Invalid credentials";
		else
			return "Valid credentials";
	}


}
