package com.student.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.student.model.StudentModel;
import com.student.service.StudentService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet(name = "studentController", urlPatterns = { "/student/*" })
public class StudentController extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String action = req.getPathInfo();
		StudentService service = new StudentService();

		if ("/add".equals(action)) {
			String id = req.getParameter("sid");
			String value;
			StudentModel studentModel = new StudentModel(id, req.getParameter("sname"), req.getParameter("sclass"));
			value = service.addStudent(studentModel, id);
			if (value == "Information added successfully.") {
				req.setAttribute("warning", value);
				RequestDispatcher rd = req.getRequestDispatcher("/warning.jsp");
				rd.forward(req, res);
			} else {
				req.setAttribute("messageType", "error");
				req.setAttribute("warning", value);
				RequestDispatcher rd = req.getRequestDispatcher("/warning.jsp");
				rd.forward(req, res);
			}

		}

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String action = req.getPathInfo();
		StudentService service = new StudentService();

		if ("/show".equals(action)) {
			List<StudentModel> students = new ArrayList<>();
			students = service.getStudents();
			req.setAttribute("students", students);
			RequestDispatcher rd = req.getRequestDispatcher("/show.jsp");
			rd.forward(req, res);
		}

		if ("/search".equals(action)) {
			StudentModel student = service.getStudentById(req.getParameter("inputSearch"));
			req.setAttribute("searchResult", student);
			RequestDispatcher rd = req.getRequestDispatcher("/searchResult.jsp");
			rd.forward(req, res);
		}

	}

}
