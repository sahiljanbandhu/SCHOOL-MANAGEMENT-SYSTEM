package com.jsp.teacher.student.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.teacher.student.services.StudentServices;
@WebServlet("/delete1")
public class DeleteStudent extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sid = req.getParameter("id");
		int id = Integer.parseInt(sid);
		StudentServices studentServices = new StudentServices();
		studentServices.delete(id);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("School.html");
		requestDispatcher.forward(req, resp);
	}

}
