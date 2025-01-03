package edu.springboot.studentmanagementsystem.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.springboot.studentmanagementsystem.app.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>
{

	public List<Student> findAllByBatchNumber(String batchNumber);
	
	


}
