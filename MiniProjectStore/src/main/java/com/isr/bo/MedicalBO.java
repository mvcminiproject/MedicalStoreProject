package com.isr.bo;

import java.sql.Date;

import lombok.Data;
@Data
public class MedicalBO {
	
	private Integer mId;
	private String mName;
	private String formula;
	private Date mfgDate;
	private Date expDate;
	private Float price;
	private String country;

}
