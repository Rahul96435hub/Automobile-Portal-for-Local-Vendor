package com.DAO;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.HeroCart;
import com.entity.HeropartDtls;
import com.mysql.cj.protocol.Resultset;





public class HeroCartDAOImpl implements HeroCartDAO {

	private Connection conn;

	public HeroCartDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public boolean addCart(HeroCart k) {
		boolean f = false;
		try {

			String sql = "insert into cart(pid,uid,partdescription,partnumber,quantity,price,amount,totalamount) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1,k.getPid());
			ps.setInt(2, k.getUid());
			ps.setString(3, k.getPartdescription());
			ps.setString(4, k.getPartNumber());
			ps.setInt(5, k.getQuantity());
			ps.setDouble(6, k.getPrice());
			ps.setDouble(7, k.getAmount());
			ps.setDouble(8, k.getTotalamount());
			

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {	
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<HeroCart> getHeropartByUser(int uid) {
		List<HeroCart> list= new ArrayList<HeroCart>();
		HeroCart k = null;
		double totalAmount=0.00;
		double Price=0.00;
		double amount= 0.00;
		
		
		try {
			
			String sql="select * from cart where uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, uid);
			
			ResultSet rs= ps.executeQuery();
			
			 while(rs.next())
			 {
				 k=new HeroCart();
				 k.setCid(rs.getInt(1));
				 k.setPid(rs.getInt(2));
				 k.setUid(rs.getInt(3));
				 k.setPartdescription(rs.getString(4));
				 k.setPartNumber(rs.getString(5));
				 k.setQuantity(rs.getInt(6));
				 k.setPrice(rs.getDouble(7));
				
				 
				 amount = amount*rs.getDouble(8);
				 k.setAmount(amount);
				 
				 totalAmount=totalAmount+rs.getDouble(9);
				 k.setTotalamount(totalAmount);
				 
				 
				 list.add(k);
				 
				 
				 
						 
			 }
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean Hero_delete_part(int pid,int uid,int cid) {
		boolean f = false;
		
		try {
			String sql = "delete from cart where pid=? and uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, pid);
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		} catch (SQLException e) {
				
			e.printStackTrace();
		}
		
		
		return f;
	}

	}

	
		
	

	
