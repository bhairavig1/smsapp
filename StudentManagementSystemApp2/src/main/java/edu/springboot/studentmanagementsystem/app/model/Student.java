package edu.springboot.studentmanagementsystem.app.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student
{
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)(it does not follows the sequence)
	//@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int StudentId;
	private String studentFullName;
	private String studentEmail;
	private byte studentAge;
	private String studentCollegeName;
	private String studentCourse;
	private String batchNumber;
	private String batchMode;
	private double feesPaid;
	
	public double getFeesPaid() {
		return feesPaid;
	}
	public void setFeesPaid(double feesPaid) {
		this.feesPaid = feesPaid;
	}
	
	public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		StudentId = studentId;
	}
	public String getStudentFullName() {
		return studentFullName;
	}
	public void setStudentFullName(String studentFullName) {
		this.studentFullName = studentFullName;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}
	public byte getStudentAge() {
		return studentAge;
	}
	public void setStudentAge(byte studentAge) {
		this.studentAge = studentAge;
	}
	
	public String getStudentCourse() {
		return studentCourse;
	}
	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
	}
	public String getBatchNumber() {
		return batchNumber;
	}
	public void setBatchNumber(String batchNumber) {
		this.batchNumber = batchNumber;
	}
	public String getBatchMode() {
		return batchMode;
	}
	public void setBatchMode(String batchMode) {
		this.batchMode = batchMode;
	}
	public String getStudentCollegeName() {
		return studentCollegeName;
	}
	public void setStudentCollegeName(String studentCollegeName) {
		this.studentCollegeName = studentCollegeName;
	}
	
	
	
	
	
}
