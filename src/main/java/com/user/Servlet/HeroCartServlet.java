package com.user.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;	
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.HeroCartDAOImpl;
import com.DAO.HeropartDAOImpl;
import com.DB.DBConnect;
import com.entity.HeroCart;
import com.entity.HeropartDtls;






@WebServlet("/herocart")
public class HeroCartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int pid = Integer.parseInt(req.getParameter("pid"));
			int uid =Integer.parseInt(req.getParameter("uid"));
			
			HeropartDAOImpl dao = new HeropartDAOImpl(DBConnect.getConn());
			HeropartDtls h = dao.getHearpartById(pid);
			
			HeroCart k = new HeroCart();
			k.setPid(pid);
			k.setUid(uid);
			k.setPartdescription(h.getPartDescription());
			k.setPartNumber(h.getPartNumber());
			k.setQuantity(Integer.parseInt(h.getQuantity()));
			k.setPrice(Double.parseDouble(h.getPrice()));
			k.setAmount(Double.parseDouble(h.getPrice()));
			k.setTotalamount(Double.parseDouble(h.getPrice()));
			
			HeroCartDAOImpl dao1 = new HeroCartDAOImpl(DBConnect.getConn());
			boolean f=dao1.addCart(k);
			
			
			HttpSession session = req.getSession();
			
			
			if (f)
			{
				session.setAttribute("addCart", "Book Added to cart");
				resp.sendRedirect("hero.jsp");
				//System.out.println("Add Cart Success");
				
			}else {
				
				session.setAttribute("failed", "Something Wrong on Server");
				resp.sendRedirect("hero.jsp");
				System.out.println("Not Add Cart Success");
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
