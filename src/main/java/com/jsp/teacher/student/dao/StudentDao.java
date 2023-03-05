package com.jsp.teacher.student.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.teacher.student.dto.Student;

public class StudentDao {
	
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("sahil");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void create(Student student) {
		entityTransaction.begin();
		entityManager.persist(student);
		entityTransaction.commit();
	}

	public void update(Student student) {
		Student student2 = entityManager.find(Student.class, student.getId());
		if (student2 != null) {
			entityTransaction.begin();
			if (student.getName() != null) {
				student2.setName(student.getName());
			}
			if (student.getEmail() != null) {
				student2.setEmail(student.getEmail());
			}
			if (student.getStd() != null) {
				student2.setStd(student.getStd());
			}
			
			entityManager.merge(student);
			entityTransaction.commit();
		}
	}

	public void delete(int id) {
		Student student = entityManager.find(Student.class, id);
		if (student != null) {
			entityTransaction.begin();
			entityManager.remove(student);
			entityTransaction.commit();
		}
	}
	
	public List<Student> getAllStudents() {
		String sql = "select student from Student student";
		Query query = entityManager.createQuery(sql);
		List<Student> students = query.getResultList();
		return students;	
	}
	
	public Student getByIdStudent(int id) {
		return entityManager.find(Student.class, id);
	}

}
