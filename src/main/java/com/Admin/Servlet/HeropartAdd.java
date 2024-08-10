package com.Admin.Servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.HeropartDAOImpl;
import com.DB.DBConnect;
import com.entity.HeropartDtls;

@WebServlet("/addpart")
@MultipartConfig
public class HeropartAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String partDescription = req.getParameter("pdes");
			String partNumber = req.getParameter("pnumber");
			String quantity = req.getParameter("qun");
			String price = req.getParameter("price");
			String categories = req.getParameter("categories");
			String status = req.getParameter("status");
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			HeropartDtls h = new HeropartDtls(partDescription, partNumber, quantity, price, categories, status,
					fileName, "admin");

			HeropartDAOImpl dao = new HeropartDAOImpl(DBConnect.getConn());
			
			
			//System.out.println(Path);
			boolean f = dao.Heroaddpart(h);

			HttpSession session = req.getSession();

			if (f) {
				
				String path=getServletContext().getRealPath("")+"part";
				
				File file = new File(path);
				part.write(path+File.separator+fileName);

				session.setAttribute("succMsg", "Hero Part Add Sucessfully..");
				resp.sendRedirect("admin/addpart.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wromg on server");
				resp.sendRedirect("admin/addpart.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
