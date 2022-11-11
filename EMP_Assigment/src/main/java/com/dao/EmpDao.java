package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Emp;

public class EmpDao {

	private Connection conn = null;

	public EmpDao(Connection conn) {
		super();
		this.conn = conn;
		// TODO Auto-generated constructor stub
	}

	public boolean AddEmp(Emp emp) {
		boolean f = false;
		try {
			String sql = "insert into emp_details(Emp_name, Emp_doj, Emp_ex, Emp_desig) values(?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setString(1, emp.getName());
			pst.setString(2, emp.getDoj());
			pst.setString(3, emp.getYoe());
			pst.setString(4, emp.getDesignation());

			int i = pst.executeUpdate();

			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return f;
	}

	public List<Emp> getAllEmp() {
		List<Emp> list = new ArrayList<Emp>();
		Emp emp = null;
		try {
			String sql = "select * from emp_details";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while (rs.next()) {
				emp=new Emp();
				emp.setEmpId(rs.getInt(1));
				emp.setName(rs.getString(2));
				emp.setDoj(rs.getString(3));
				emp.setYoe(rs.getString(4));
				emp.setDesignation(rs.getString(5));
				list.add(emp);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

}
