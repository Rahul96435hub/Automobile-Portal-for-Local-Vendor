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
import com.DAO.TVSpartDAOImpl;
import com.DB.DBConnect;
import com.entity.HeropartDtls;
import com.entity.TVSpartDtls;

@WebServlet("/tvs_editpart")
@MultipartConfig
public class TVSpartAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String PartName = req.getParameter("des");
			String PartNumber = req.getParameter("number");
			String Quantity = req.getParameter("qty");
			String Price = req.getParameter("rate");
			String Categories = req.getParameter("type");
			String Status = req.getParameter("sta");
			Part part = req.getPart("img");
			String fileName = part.getSubmittedFileName();

			TVSpartDtls t = new TVSpartDtls(PartName, PartNumber, Quantity, Price, Categories, Status,
					fileName, "admin");


			//System.out.println(t);
			
			TVSpartDAOImpl dao = new TVSpartDAOImpl(DBConnect.getConn());
			
			
			//System.out.println(Path);
			boolean f = dao.TVSaddpart(t);

			HttpSession session = req.getSession();

			if (f) {
				
				String path=getServletContext().getRealPath("")+"part";
				
				File file = new File(path);
				part.write(path+File.separator+fileName);

				session.setAttribute("succMsg", "TVS Part Add Sucessfully..");
				resp.sendRedirect("admin/tvs_addpart.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wromg on server");
				resp.sendRedirect("admin/tvs_addpart.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
