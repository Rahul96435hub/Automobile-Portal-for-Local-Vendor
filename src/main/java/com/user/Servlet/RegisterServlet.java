package com.user.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String phno = req.getParameter("phno");
			String address = req.getParameter("address");
			String landmark = req.getParameter("landmark");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String pincode = req.getParameter("pincode");
			String check = req.getParameter("check");

			System.out.println(name + " " + email + " " + password + " " + phno + " " + address + " " + landmark + " "
					+ city + " " + state + " " + pincode + " " + check);

			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPassword(password);
			us.setPhno(phno);
			us.setAddress(address);
			us.setLandmark(landmark);
			us.setCity(city);
			us.setState(state);
			us.setPincode(pincode);

			HttpSession session = req.getSession();

			if (check != null) {
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
				boolean f = dao.userRegister(us);
				if (f) {
					// System.out.println("User Register Success..");
					session.setAttribute("succMsg", "Registration Successfully..");
					resp.sendRedirect("register.jsp");
				} else {
					// System.out.println("Something wrong on Server..");
					session.setAttribute("failedMsg", "Something wrong on Server..");
					resp.sendRedirect("register.jsp");

				}
			} else {
				// System.out.println("please check Agree terms & condition");
				session.setAttribute("failedMsg", "please check Agree terms & condition");
				resp.sendRedirect("register.jsp");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
