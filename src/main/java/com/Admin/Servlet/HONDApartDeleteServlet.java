package com.Admin.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.HONDApartDAOImpl;

import com.DB.DBConnect;

@WebServlet("/hondadelete")
public class HONDApartDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));
			HONDApartDAOImpl dao = new HONDApartDAOImpl(DBConnect.getConn());
			boolean f = dao.deleteHONDApart(id);

			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Part Delete Sucessfully..");
				resp.sendRedirect("admin/honda_allpart.jsp");
			} else {
				session.setAttribute("failedMsg", "Something Wrong on Server");
				resp.sendRedirect("admin/honda_allpart.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
