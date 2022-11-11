package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DbConnect;
import com.dao.EmpDao;
import com.entity.Emp;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		String name = req.getParameter("name");
		String doj = req.getParameter("doj");
		String yoe = req.getParameter("yoe");
		String degig = req.getParameter("desig");

		Emp emp = new Emp(name, doj, yoe, degig);
//		System.out.println(emp);
		EmpDao dao = new EmpDao(DbConnect.getConn());
		boolean f = dao.AddEmp(emp);
		
		
		
		HttpSession session =req.getSession();
		if (f) {
			session.setAttribute("SuccessMsg", "Employee Details Submited");
			resp.sendRedirect("Add_Employee.jsp");
//			System.out.println("Student Details save");
		} else {
			session.setAttribute("ErroMsg", "Something went Wrong?");
			resp.sendRedirect("Add_Employee.jsp");
//			System.out.println("Student Details save error");
		}
	}
	

}
