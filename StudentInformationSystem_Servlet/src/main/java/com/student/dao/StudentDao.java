package com.student.dao;

import java.sql.SQLException;
import java.util.List;

import com.student.model.StudentModel;

public interface StudentDao {
	
	String insertStudent(StudentModel studentModel, String id) throws SQLException;
	StudentModel getStudent(String id) throws SQLException;
	List<StudentModel> getAllStudent() throws SQLException;

}
