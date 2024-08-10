package com.DAO;

import java.util.List;

import com.entity.HeroCart;


public interface HeroCartDAO {

	public boolean addCart(HeroCart k);
	
	public List<HeroCart> getHeropartByUser(int UserId);
	
	public boolean Hero_delete_part(int pid,int uid,int cid);


}
