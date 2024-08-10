package com.Admin.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.TVSpartDAOImpl;
import com.DB.DBConnect;
import com.entity.TVSpartDtls;


@WebServlet("/edittvspart")
public class TVSpartEditServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			int id = Integer.parseInt(req.getParameter("id"));
			String partDescription = req.getParameter("pdes");
			String partNumber = req.getParameter("pnumber");
			String quantity = req.getParameter("qun");
			String price = req.getParameter("price"); 
			String status = req.getParameter("status");
			
			TVSpartDtls h =  new TVSpartDtls();
			h.setPartId(id);
			h.setPartDescription(partDescription);
			h.setPartNumber(partNumber);
			h.setQuantity(quantity);
			h.setPrice(price);
			h.setStatus(status);
			
			TVSpartDAOImpl dao= new TVSpartDAOImpl(DBConnect.getConn());
			boolean f = dao.updateEditTVSpart(h);
			
			HttpSession session =req.getSession();
			
			if(f)
			{
				session.setAttribute("succMsg", "Part Update Sucessfully..");
				resp.sendRedirect("admin/tvs_allpart.jsp");
			}else {
				session.setAttribute("failedMsg", "Something Wrong on Server");
				resp.sendRedirect("admin/tvs_allpart.jsp");
			}
				
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
