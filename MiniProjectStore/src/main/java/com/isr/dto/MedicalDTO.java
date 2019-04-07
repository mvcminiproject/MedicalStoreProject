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
}
