package com.jsp.teacher.student.services;

import java.util.List;

import com.jsp.teacher.student.dao.StudentDao;
import com.jsp.teacher.student.dto.Student;

public class StudentServices {
	StudentDao studentDao = new StudentDao();
	public void create(Student student) {
		studentDao.create(student);
	}

	public void update(Student student) {
		studentDao.update(student);
	}

	public void delete(int id) {
		studentDao.delete(id);
	}

	public Student getByIdStudent(int id) {
		return studentDao.getByIdStudent(id);
	}
	
	public List<Student> getAllStudents() {
		return studentDao.getAllStudents();
	}
}
