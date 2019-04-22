package com.isr.dto;

import java.sql.Date;

import lombok.Data;
@Data
public class MedicalDTO {
	
	private Integer mId;
	private String mName;
	private String formula;
	private Date mfgDate;
	private Date expDate;
	private Float price;
	private String country;
	public Integer getmId() {
		return mId;
	}
	public void setmId(Integer mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
}
