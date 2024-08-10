package com.Admin.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BajajpartDAOImpl;

import com.DB.DBConnect;
import com.entity.BajajpartDtls;


@WebServlet("/editbajajpart")
public class BajajpartEditServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			int id = Integer.parseInt(req.getParameter("id"));
			String partDescription = req.getParameter("pdes");
			String partNumber = req.getParameter("pnumber");
			String quantity = req.getParameter("qun");
			String price = req.getParameter("price"); 
			String status = req.getParameter("status");
			
			BajajpartDtls h =  new BajajpartDtls();
			h.setPartId(id);
			h.setPartDescription(partDescription);
			h.setPartNumber(partNumber);
			h.setQuantity(quantity);
			h.setPrice(price);
			h.setStatus(status);
			
			
			
			
			BajajpartDAOImpl dao= new BajajpartDAOImpl(DBConnect.getConn());
			boolean f = dao.updateEditBajajpart(h);
			
			HttpSession session =req.getSession();
			
			if(f)
			{
				session.setAttribute("succMsg", "Part Update Sucessfully..");
				resp.sendRedirect("admin/bajaj_allpart.jsp");
			}else {
				session.setAttribute("failedMsg", "Something Wrong on Server");
				resp.sendRedirect("admin/baja_allpart.jsp");
			}
				
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	

}
