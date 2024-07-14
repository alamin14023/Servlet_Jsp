package com.student.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.student.Impl.StudentDaoImpl;
import com.student.model.StudentModel;

public class StudentService {

	StudentDaoImpl sImpl = new StudentDaoImpl();

	public String addStudent(StudentModel studentModel, String id) {
		
		try {
			return sImpl.insertStudent(studentModel,id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public StudentModel getStudentById(String id) {
		StudentModel student = null;
		try {
			student = sImpl.getStudent(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return student;
	}

	public List<StudentModel> getStudents() {
		List<StudentModel> studentsList = new ArrayList<>();
		try {
			studentsList = sImpl.getAllStudent();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return studentsList;
	}

}
