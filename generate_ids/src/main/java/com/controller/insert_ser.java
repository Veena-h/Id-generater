package com.controller;

import java.io.FileInputStream;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.connection.connection;
import com.entity.form_entity;

/**
 * Servlet implementation class insert_ser
 */
@WebServlet("/insert_ser")
@MultipartConfig(maxFileSize = 999999999)
public class insert_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String f_name=request.getParameter("f_name");
		String l_name=request.getParameter("l_name");
		String class1=request.getParameter("class");
		String address=request.getParameter("address");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String select=request.getParameter("select");
		String prn=request.getParameter("prn");
		
		Part part=request.getPart("file");
         InputStream fin=null;
         
         if(part!=null)
         {
        	 fin=part.getInputStream();
         }
         
         
         
         
         SessionFactory s=connection.getFactory();
         Session ss=s.openSession();
         Transaction t=ss.beginTransaction();
         
         form_entity f=new form_entity();
         
         f.setFirst_name(f_name);
         f.setLast_name(l_name);
         f.setClass1(class1);
         f.setAddress(address);
         f.setGender(gender);
         f.setEmail(email);
         f.setPhone(phone);
         f.setSelect(select);
         f.setPrn(prn);
         
         byte[] data=new byte[fin.available()];
         fin.read(data);
         f.setImg(data);
         
         
         ss.save(f);
         t.commit();
         ss.close();
         response.sendRedirect("show1.jsp");
         
         
         
         
         
         
         
		
		
	}

}
