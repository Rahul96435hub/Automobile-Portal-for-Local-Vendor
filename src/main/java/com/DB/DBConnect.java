package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Iterator;

public class DBConnect {

	private static Connection conn;
	public static Connection getConn()
	{
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app","root","Arsh@96435");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return conn;
	}
	
}
