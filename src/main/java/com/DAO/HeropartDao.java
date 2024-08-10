package com.DAO;

import java.util.List;


import com.entity.HeropartDtls;



public interface HeropartDao {
	
	public boolean Heroaddpart(HeropartDtls h);
	
	public List< HeropartDtls> getAllHearopart();
	
	public HeropartDtls getHearpartById(int id);
	
	public boolean updateEditHeropart(HeropartDtls h);
	
	public boolean deleteHearpart (int id);
	
	public List<HeropartDtls>  getHeroPart();
	
	public List<HeropartDtls> getDealerpart();
	
	public List<HeropartDtls> getAllRecentHeaopart();
	
	 


	
	
	


	
	

}
