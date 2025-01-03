package edu.springboot.studentmanagementsystem.app.servicei;

import java.util.List;

import edu.springboot.studentmanagementsystem.app.model.Student;

public interface StudentServicei 
{

	public void saveStudent(Student s);

	public List<Student> getAllStudent();
	
	public List<Student> searchStudentsByBatch(String batchNumber);

	public Student getSingleStudent(int stuId);

	public void updateStudentFees(int studentId, float ammount);

	public void updateStudentBatch(int studentId, String batchnumber, String batchmode);

	public List<Student> deleteStudentById(int stuId);

	public void updateBatchMode(int studentId, String batchMode);

}
