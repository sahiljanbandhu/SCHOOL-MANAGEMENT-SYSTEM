package com.jsp.teacher.student.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.teacher.student.dto.Teacher;
import com.jsp.teacher.student.services.TeacherServices;

@WebServlet("/updateTeacher")
public class UpdateTeacher extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sid = req.getParameter("id");
		int id = Integer.parseInt(sid);
		String name = req.getParameter("name");
		String email = req.getParameter("emaild");
		String subject = req.getParameter("name1");

		TeacherServices teacherServices = new TeacherServices();
		Teacher teacher = new Teacher();
		teacher.setId(id);
		teacher.setName(name);
		teacher.setEmail(email);
		teacher.setSubject(subject);
		teacherServices.update(teacher);

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("School.html");
		requestDispatcher.forward(req, resp);
	}

}
