package com.isr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.isr.bo.LoginBO;
import com.isr.bo.MedicalBO;


public class MedicalDAOImpl implements MedicalDAO {
	private final String SELECT_QUERY="SELECT MID,MNAME,FORMULA,MFGDATE,EXPDATE,PRICE,COUNTRY FROM MEDICALSTORE";
	private static final String LOGIN_QUERY="SELECT COUNT(*) FROM USERLIST WHERE UNAME=? AND PWD=?";
	private JdbcTemplate jt;
	private static final Logger log=LoggerFactory.getLogger(MedicalDAOImpl.class);
	
	public MedicalDAOImpl(JdbcTemplate jt) {
		this.jt = jt;
	}

	@Override
	public List<MedicalBO> getAllMedicines() {

		List<MedicalBO> listBO=new ArrayList<MedicalBO>();
		
		log.debug("MedicalDAOImpl: getAllMedicines method");
		
		listBO=jt.query(SELECT_QUERY, new ResultSetExtractor<List<MedicalBO>>(){
						
			@Override
			public List<MedicalBO> extractData(ResultSet rs) throws SQLException, DataAccessException {
				log.debug("MedicalDAOImpl.getAllMedicines().new ResultSetExtractor() {...}.extractData()");
				MedicalBO bo=null;
				List<MedicalBO> lbo=new ArrayList<MedicalBO>();
				while(rs.next()) {
					bo=new MedicalBO();
					bo.setMId(rs.getInt(1));
					bo.setMName(rs.getString(2));
					bo.setFormula(rs.getString(3));
					bo.setMfgDate(rs.getDate(4));
					bo.setExpDate(rs.getDate(5));
					bo.setPrice(rs.getFloat(6));
					bo.setCountry(rs.getString(7));
					lbo.add(bo);
				}
				return lbo;
			}
			
		});
		System.out.println("MedicalDAOImpl.getAllMedicines()"+listBO);
		return listBO;
	}

	@Override
	public int insertMedicine(MedicalBO bo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MedicalBO getMedicineById(int mId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMedicine(MedicalBO bo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMedicine(int mId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int loginUser(LoginBO bo) {
		int count=0;
		
		log.debug("MedicalDAOImpl.loginUser()");
		count=jt.queryForObject(LOGIN_QUERY, Integer.class,bo.getUser(),bo.getPwd());
		return count;
	}

}
