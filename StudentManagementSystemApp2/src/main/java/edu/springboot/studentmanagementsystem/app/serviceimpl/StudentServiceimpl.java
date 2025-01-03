package edu.springboot.studentmanagementsystem.app.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.springboot.studentmanagementsystem.app.model.Student;
import edu.springboot.studentmanagementsystem.app.repository.StudentRepository;
import edu.springboot.studentmanagementsystem.app.servicei.StudentServicei;

@Service
public class StudentServiceimpl implements StudentServicei
{
	@Autowired
	StudentRepository sri;

	@Override
	public void saveStudent(Student s) 
	{

		sri.save(s);
	}

	@Override
	public List<Student> getAllStudent() 
	{
		
		return sri.findAll();
	}

	@Override
	public List<Student> searchStudentsByBatch(String batchNumber) 
	{
		List<Student> batchStudent= sri.findAllByBatchNumber(batchNumber);
		
		return batchStudent;
	}

	@Override
	public Student getSingleStudent(int stuId) 
	{
		Optional<Student> opStudent= sri.findById(stuId);
		
		return opStudent.get();
	}

	@Override
	public void updateStudentFees(int studentId, float ammount) 
	{
		Optional<Student> opss= sri.findById(studentId);
		
		Student st= opss.get();
		
		st.setFeesPaid( st.getFeesPaid()+ammount);
		
		sri.save(st);
		
	}

	@Override
	public void updateStudentBatch(int studentId, String batchnumber,String batchmode)
	{
		Optional<Student> ops= sri.findById(studentId);
		
		Student s= ops.get();
		
		s.setBatchNumber(batchnumber);
		
		s.setBatchMode(batchmode);
		
		sri.save(s);
		
		
	}

	@Override
	public List<Student> deleteStudentById(int stuId) 
	{
		sri.deleteById(stuId);
		
		return sri.findAll();
	}

	@Override
	public void updateBatchMode(int studentId, String batchMode)
	{
			Optional<Student> opst= sri.findById(studentId);
			
			Student ss= opst.get();
			
			ss.setBatchMode(batchMode);
			
			sri.save(ss);
		
	}
	
	
}
