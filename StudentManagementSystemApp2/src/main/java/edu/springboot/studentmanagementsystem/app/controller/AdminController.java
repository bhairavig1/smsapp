package edu.springboot.studentmanagementsystem.app.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.springboot.studentmanagementsystem.app.model.Student;
import edu.springboot.studentmanagementsystem.app.servicei.StudentServicei;


@Controller
public class AdminController 
{
	@Autowired
	StudentServicei ssi;
	
	@RequestMapping("/")
	public String preLogin()
	{
		System.out.println("preLogin method in controller");
		
		return "login";
	}
	
	@RequestMapping("/login")
	public String onLogin(@RequestParam ("Username") String Username,
			@RequestParam("Password") String Password, Model m)
	{
		if(Username.equals("ADMIN") && Password.equals("ADMIN"))
		{
			
			List<Student> list= ssi.getAllStudent();
			
			m.addAttribute("data", list);
			return "adminscreen";
			
		}
		else
		{
			m.addAttribute("login_fail", "Please, enter valid login details.");
			
			return "login";
		}	
		
	}
	
	@RequestMapping("/enroll_student")
	public String saveStudent(@ModelAttribute Student s, Model m)
	{
		ssi.saveStudent(s);
		
		List<Student> student= ssi.getAllStudent();
		
		m.addAttribute("data", student);
		
		return "adminscreen";
	}
	
	@RequestMapping("/search")
	public String searchStudent(@RequestParam("batchNumber")String batchNumber, Model m)
	{
		
		List<Student> result = ssi.searchStudentsByBatch(batchNumber);
		
			if(result.size()>0)
			{
				m.addAttribute("data", result);
			
			}
			else
			{
				List<Student> students= ssi.getAllStudent();
				
				m.addAttribute("data", students);
				m.addAttribute("message", "No records are available for this batch number");
				
				
			}
		
					return "adminscreen";
		
	}
	
	@RequestMapping("/fees")
	public String onFees(@RequestParam("stuId") int stuId, Model m)
	{
		Student st=ssi.getSingleStudent(stuId);
		
		m.addAttribute("money", st);
		
		return "fees";
		
		
	}
	
	@RequestMapping("/payfees")
	public String payFees(@RequestParam("studentid") int studentId, 
			@RequestParam("ammount") float ammount, Model m)
	{
		ssi.updateStudentFees(studentId,ammount);
		
		List<Student> ss= ssi.getAllStudent();
		
		m.addAttribute("data", ss);
		
		return "adminscreen";
	}
	

	@RequestMapping("/batch")
	public String onbatch(@RequestParam("stuId") int stuId, Model m)
	{
		Student st=ssi.getSingleStudent(stuId);
		
		m.addAttribute("bs", st);
		
		return "batchshift";
		
		
	}
	
	
	@RequestMapping("/batchshift")
	public String batchShift(@RequestParam("studentid") int studentId,
			@RequestParam("batchnumber") String batchnumber,@RequestParam("batchMode") String batchmode,Model m)
	{
		ssi.updateStudentBatch(studentId, batchnumber,batchmode);
		
		List<Student> ssl= ssi.getAllStudent();
		
		m.addAttribute("data", ssl);
		
		return "adminscreen";
		
		
		
	}
	
	
	@RequestMapping("/mode")
	public String onMode(@RequestParam("stuId") int stuId, Model m)
	{
		Student st=ssi.getSingleStudent(stuId);
		
		m.addAttribute("ms", st);
		
		return "mode";
		
		
	}
	
	@RequestMapping("/modeshift")
	public String modeShift(@RequestParam("studentid") int studentId,
			@RequestParam("batchMode") String batchMode, Model m)
	{
		ssi.updateBatchMode(studentId, batchMode);
		
		List<Student> ssl= ssi.getAllStudent();
		
		m.addAttribute("data", ssl);
		
		return "adminscreen";
		
		
		
	}
	
	

	@RequestMapping("/remove")
	public String removeStudent(@RequestParam("stuId") int stuId, Model m)
	{
		
			List<Student>li =ssi.deleteStudentById(stuId);
			
			m.addAttribute("data", li);
			
			return "adminscreen";
	}

	
	
	
}
