package com.isr.service;

import java.util.List;

import com.isr.dto.MedicalDTO;

public interface MedicalService {
	
	public List<MedicalDTO> fetchAllMedicines(int mId);
	public int serviceInsertMedicine(MedicalDTO bo);
	public MedicalDTO serviceGetMedicineById(int mId);
	public int serviceUpdateMedicine(MedicalDTO bo);
	public int serviceDeleteMedicine(int mId);

}
