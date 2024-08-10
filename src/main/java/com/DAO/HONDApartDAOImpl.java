package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.HeropartDtls;
import com.entity.HondapartDtls;



public class HONDApartDAOImpl implements HONDApartDAO{
	
	private Connection conn;

	public HONDApartDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean HONDAaddpart(HondapartDtls h) {
		
		boolean f = false;
		try {
			String sql = "insert into honda_dtls(partDescription,partNumber,quantity,price,categories,status,photo,email) values(?,?,?,?,?,?,?,?)";
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
	public List<HondapartDtls> getAllHONDApart() {
		List<HondapartDtls> list = new ArrayList<HondapartDtls>();
		HondapartDtls h = null;
		try {
			String sql = "select * from honda_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				h = new HondapartDtls();
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
	public HondapartDtls getHONDApartById(int id) {
		HondapartDtls h = null;
		try {
			String sql = "select * from honda_dtls where partId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				h = new HondapartDtls();
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
	public boolean updateEditHONDApart(HondapartDtls h) {
		boolean f = false;
		try {
			String sql = "Update honda_dtls set partdescription=?, partnumber=?,quantity=?,price=?,status=? where partId=?";
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
	public boolean deleteHONDApart(int id) {
		boolean f = false;
		try {
			String sql = "delete from honda_dtls where partId=?";
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
	public List<HondapartDtls> getHONDAPart() {
		List<HondapartDtls> list = new ArrayList<HondapartDtls>();
		HondapartDtls h = null;
		try {
			String sql = "select * from honda_dtls where categories=? and status=? order by partId DESC ";
			PreparedStatement  ps= conn.prepareStatement(sql);
			ps.setString(1, "HONDA");
			ps.setString(2, "Active");
			
			ResultSet rs = ps.executeQuery();
		
			while(rs.next())
				
			{
				h=new HondapartDtls();
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

	
	
	
	
	


