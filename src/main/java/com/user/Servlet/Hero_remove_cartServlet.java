package com.user.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.HeroCartDAOImpl;
import com.DB.DBConnect;

@WebServlet("/Heroremove_part")
public class Hero_remove_cartServlet extends HttpServlet  {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pid = Integer.parseInt(req.getParameter("pid"));
		int uid = Integer.parseInt(req.getParameter("uid"));
		int cid =Integer.parseInt(req.getParameter("cid"));
		HeroCartDAOImpl dao = new HeroCartDAOImpl(DBConnect.getConn());
		boolean f =dao.Hero_delete_part(pid,uid,cid);
		HttpSession session =  req.getSession();
		
		if(f)
		{
			session.setAttribute("succMsg","Part Remove from Cart");
			resp.sendRedirect("cart.jsp");
		} else {
			session.setAttribute("failedMsg","Something Wrong on server");
			resp.sendRedirect("cart.jsp");
		}
	}
	
	
	

}
