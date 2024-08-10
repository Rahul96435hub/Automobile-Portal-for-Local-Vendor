package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.HeropartDtls;

import com.mysql.cj.protocol.Resultset;

public class HeropartDAOImpl implements HeropartDao {

	private Connection conn;

	public HeropartDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean Heroaddpart(HeropartDtls h) {
		boolean f = false;
		try {
			String sql = "insert into heropart_dtls(partDescription,partNumber,quantity,price,categories,status,photo,email) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, h.getPartDescription());
			ps.setString(2, h.getPartNumber());
			ps.setString(3, h.getQuantity());
			ps.setString(4, h.getPrice());
			ps.setString(5, h.getCategories());
			ps.setString(6, h.getStatus());
			ps.setString(7, h.getPhotoName());
			ps.setString(8, h.getEmail());

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
	public List<HeropartDtls> getAllHearopart() {
		List<HeropartDtls> list = new ArrayList<HeropartDtls>();
		HeropartDtls h = null;
		try {
			String sql = "select * from heropart_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				h = new HeropartDtls();
				h.setPartId(rs.getInt(1));
				h.setPartDescription(rs.getString(2));
				h.setPartNumber(rs.getString(3));
				h.setQuantity(rs.getString(4));
				h.setPrice(rs.getString(5));
				h.setCategories(rs.getString(6));
				h.setStatus(rs.getString(7));
				h.setPhotoName(rs.getString(8));
				h.setEmail(rs.getString(9));
				list.add(h);
				;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public HeropartDtls getHearpartById(int id) {
		HeropartDtls h = null;
		try {
			String sql = "select * from heropart_dtls where partId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				h = new HeropartDtls();
				h.setPartId(rs.getInt(1));
				h.setPartDescription(rs.getString(2));
				h.setPartNumber(rs.getString(3));
				h.setQuantity(rs.getString(4));
				h.setPrice(rs.getString(5));
				h.setCategories(rs.getString(6));
				h.setStatus(rs.getString(7));
				h.setPhotoName(rs.getString(8));
				h.setEmail(rs.getString(9));
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return h;
	}

	@Override
	public boolean updateEditHeropart(HeropartDtls h) {
		boolean f = false;
		try {
			String sql = "Update heropart_dtls set partdescription=?, partnumber=?,quantity=?,price=?,status=? where partId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, h.getPartDescription());
			ps.setString(2, h.getPartNumber());
			ps.setString(3,h.getQuantity());
			ps.setString(4, h.getPrice());
			ps.setString(5, h.getStatus());
			ps.setInt(6, h.getPartId());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean deleteHearpart(int id) {
		boolean f = false;
		try {
			String sql = "delete from heropart_dtls where partId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return f;
	}

	@Override
	public List<HeropartDtls> getHeroPart() {
		List<HeropartDtls> list = new ArrayList<HeropartDtls>();
		HeropartDtls h = null;
		try {
			String sql = "select * from heropart_dtls where categories=? and status=? order by partId DESC ";
			PreparedStatement  ps= conn.prepareStatement(sql);
			ps.setString(1, "Hero");
			ps.setString(2, "Active");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
				
			{
				h=new HeropartDtls();
				h.setPartId(rs.getInt(1));
				h.setPartDescription(rs.getString(2));
				h.setPartNumber(rs.getString(3));
				h.setQuantity(rs.getString(4));
				h.setPrice(rs.getString(5));
				h.setCategories(rs.getString(6));
				h.setStatus(rs.getString(7));
				h.setPhotoName(rs.getString(8));
				h.setEmail(rs.getString(9));
				list.add(h);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	@Override
	public List<HeropartDtls> getDealerpart() {
		List<HeropartDtls> list = new ArrayList<HeropartDtls>();
		HeropartDtls h = null;
		try {
			String sql = "select * from heropart_dtls where categories=? and status=? order by partId DESC ";
			PreparedStatement  ps= conn.prepareStatement(sql);
			ps.setString(1, "Dealer");
			ps.setString(2, "Active");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
				
			{
				h=new HeropartDtls();
				h.setPartId(rs.getInt(1));
				h.setPartDescription(rs.getString(2));
				h.setPartNumber(rs.getString(3));
				h.setQuantity(rs.getString(4));
				h.setPrice(rs.getString(5));
				h.setCategories(rs.getString(6));
				h.setStatus(rs.getString(7));
				h.setPhotoName(rs.getString(8));
				h.setEmail(rs.getString(9));
				list.add(h);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	@Override
	public List<HeropartDtls> getAllRecentHeaopart() {
		List<HeropartDtls> list = new ArrayList<HeropartDtls>();
		HeropartDtls h = null;
		try {
			String sql = "select * from heropart_dtls where and status=? order by partId DESC ";
			PreparedStatement  ps= conn.prepareStatement(sql);
			
			ps.setString(1, "Active");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
				
			{
				h=new HeropartDtls();
				h.setPartId(rs.getInt(1));
				h.setPartDescription(rs.getString(2));
				h.setPartNumber(rs.getString(3));
				h.setQuantity(rs.getString(4));
				h.setPrice(rs.getString(5));
				h.setCategories(rs.getString(6));
				h.setStatus(rs.getString(7));
				h.setPhotoName(rs.getString(8));
				h.setEmail(rs.getString(9));
				list.add(h);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	}

	
	
	


