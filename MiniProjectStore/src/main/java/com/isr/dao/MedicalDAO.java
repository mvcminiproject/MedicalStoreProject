package com.isr.dao;

import java.util.List;

import com.isr.bo.LoginBO;
import com.isr.bo.MedicalBO;

public interface MedicalDAO {
	public List<MedicalBO> getAllMedicines();
	public int insertMedicine(MedicalBO bo);
	public MedicalBO getMedicineById(int mId);
	public int updateMedicine(MedicalBO bo);
	public int deleteMedicine(int mId);
	public int loginUser(LoginBO bo);
}
