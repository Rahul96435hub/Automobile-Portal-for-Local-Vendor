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

import com.DAO.BajajpartDAOImpl;

import com.DB.DBConnect;
import com.entity.BajajpartDtls;


@WebServlet("/bajajaddpart")
@MultipartConfig
public class BajajpartAdd extends HttpServlet {

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

			BajajpartDtls h = new BajajpartDtls(partDescription, partNumber, quantity, price, categories, status,
					fileName, "admin");

			BajajpartDAOImpl dao = new BajajpartDAOImpl(DBConnect.getConn());
			
			
			//System.out.println(Path);
			boolean f = dao.Bajajaddpart(h);

			HttpSession session = req.getSession();

			if (f) {
				
				String path=getServletContext().getRealPath("")+"part";
				
				File file = new File(path);
				part.write(path+File.separator+fileName);

				session.setAttribute("succMsg", "Bajaj Part Add Sucessfully..");
				resp.sendRedirect("admin/bajaj_addpart.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wromg on server");
				resp.sendRedirect("admin/bajaj_addpart.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
