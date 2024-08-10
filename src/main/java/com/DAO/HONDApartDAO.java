package com.DAO;


import java.util.List;


import com.entity.HondapartDtls;

public interface HONDApartDAO {
	
	public boolean HONDAaddpart(HondapartDtls h);
	
	public List< HondapartDtls> getAllHONDApart();
	
	public HondapartDtls getHONDApartById(int id);
	
	public boolean updateEditHONDApart(HondapartDtls h);
	
	public boolean deleteHONDApart (int id);
	
	public List<HondapartDtls>  getHONDAPart();

}
