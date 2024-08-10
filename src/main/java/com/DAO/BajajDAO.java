package com.DAO;

import java.util.List;

import com.entity.BajajpartDtls;



public interface BajajDAO {
	
   public boolean Bajajaddpart(BajajpartDtls h);
	
	public List< BajajpartDtls> getAllBajajpart();
	
    public BajajpartDtls getBajajpartById(int id);
	
	public boolean updateEditBajajpart(BajajpartDtls h);
	
	public boolean deleteBajajpart (int id);
	
	public List<BajajpartDtls>  getBajajPart();

}
