package com.DAO;

import java.util.List;

import com.entity.TVSpartDtls;

public interface TVSpartDao {
	
 public boolean TVSaddpart(TVSpartDtls h);
	
	public List< TVSpartDtls> getAllTVSpart();
	
	public TVSpartDtls getTVSpartById(int id);
	
	public boolean updateEditTVSpart(TVSpartDtls h);
	
	public boolean deleteTVSpart (int id);
	
	public List<TVSpartDtls>  getTVSPart();
}
