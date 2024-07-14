package com.student.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.student.dao.StudentDao;
import com.student.model.StudentModel;
import com.student.utility.DatabaseUtil;

public class StudentDaoImpl implements StudentDao {

	public String insertStudent(StudentModel studentModel, String id) throws SQLException {

		try (Connection con = DatabaseUtil.getConnection()) {
			// check if id already exists
			String checkQuery = "select count(*) from students where id = ?";
			try (PreparedStatement checkStatement = con.prepareStatement(checkQuery)) {
				checkStatement.setString(1, id);
				ResultSet resultSet = checkStatement.executeQuery();
				resultSet.next();
				if (resultSet.getInt(1) > 0) {
					return "Id already exists. Please check your information again.";
				} else {

					String sql = "insert into students(id,name,class) values(?,?,?)";

					try (PreparedStatement insertStatement = con.prepareStatement(sql)) {

						insertStatement.setString(1, studentModel.getsId());
						insertStatement.setString(2, studentModel.getsName());
						insertStatement.setString(3, studentModel.getsClass());

						int rows = insertStatement.executeUpdate();
						if (rows > 0) {
							return "Information added successfully.";
						}
					}
				}
			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Failed to add user.";
	}

	@Override
	public StudentModel getStudent(String id) throws SQLException {
		String sql = "select * from students where id = ?";
		try {
			Connection connection = DatabaseUtil.getConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			ResultSet resultSet = statement.executeQuery();
			if (resultSet.next()) {
				return new StudentModel(resultSet.getString("id"), resultSet.getString("name"),
						resultSet.getString("class"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<StudentModel> getAllStudent() throws SQLException {
		String sql = "select * from students";
		List<StudentModel> students = new ArrayList<>();
		try {
			Connection connection = DatabaseUtil.getConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				students.add(new StudentModel(resultSet.getString("id"), resultSet.getString("name"),
						resultSet.getString("class")));

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return students;
	}

}
