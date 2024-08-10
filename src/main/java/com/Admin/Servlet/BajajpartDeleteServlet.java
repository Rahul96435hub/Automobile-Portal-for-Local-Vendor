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

@WebServlet("/bajajdelete")
public class BajajpartDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));
			BajajpartDAOImpl dao = new BajajpartDAOImpl(DBConnect.getConn());
			boolean f = dao.deleteBajajpart(id);

			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Part Delete Sucessfully..");
				resp.sendRedirect("admin/bajaj_allpart.jsp");
			} else {
				session.setAttribute("failedMsg", "Something Wrong on Server");
				resp.sendRedirect("admin/bajaj_allpart.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
