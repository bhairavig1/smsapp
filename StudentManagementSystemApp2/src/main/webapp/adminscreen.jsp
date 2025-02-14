<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adminscreen page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
crossorigin="anonymous">


<style type="text/css">
	.enroll{
/* 		these images are present in images folder	background-image: url("images/addstudent.jpg"); 
 */			background-image: url("addstudent1.jpg"); 
			background-size: cover; 
			background-repeat: no-repeat; } 

	.heading { 
			font-family:cursive; 
			text-align: center; 
			margin-bottom: 20px; } 
			
	form{ width:400px } 
			
	.view{ 
/* 			background-image: url("viewstudent1.jpg"); this and "images/cjclogo.jpeg" is present in images folder
 */			
			background-image: url("viewstudent1.jpg");
			background-size: cover;
		 	background-repeat: no-repeat;}


</style>

<script type="text/javascript">

	function fees() 
	{ document.fn.action="/fees" 
	  document.action.submit(); 
	} 
	
	function batch() 
	{ document.fn.action="/batch" 
	  document.action.submit();
	} 
	

	function mode() 
	{ document.fn.action="/mode" 
	  document.action.submit();
	} 
	
	function remove() 
	{ document.fn.action="/remove" 
	  document.action.submit(); 
	}


</script>

</head>

<body>

<h3>Welcome, Students</h3>

<div class="card">
		<nav class="d-flex justify-content-between p-2 border border-primary" >
			 <img src="cjclogo.jpeg" width="100px" height="50px"> 
			 	<div class="pt-2"> 
			 		<a href="#enroll"> <button class="btn btn-outline-primary">Enroll Student</button></a>
			 			 <a href="#view"> <button class="btn btn-outline-primary">View Student</button> </a>
			 			 	 <a href="/"> <button class="btn btn-outline-primary">Logout</button> </a> 
			 	</div>
				</nav>
				
		<section class="vh-100 gradient-custom enroll mt-2" id="enroll"> 
			<div class="container h-100">
				 <div class="row justify-content-center h-100 w-75"> 
				 	<div class="col-12 col-lg-9 col-xl-7"> 
				 		<div class="card shadow-2-strong card-registration mt-0" style="border-radius: 15px;"> 
				 			<div class="card-body mt-0"> <h3 class="heading">Student Enrollment Form</h3> 
				 				
				 				<form action="enroll_student"> <div class="row " > 
				 				
				 					<div class="col-md-6 mb-2">			
				
				
		<div class="form-outline"> <input type="text" id="firstName" class="form-control form-control-sm" name="studentFullName"/> 
			<label class="form-label" for="firstName">First Full Name</label> 
				</div> 
					</div> 
						<div class="col-md-6 mb-2">
							 <div class="form-outline"> <input type="email" id="lastName" class="form-control form-control-sm" name="studentEmail"/> 
							 	<label class="form-label" for="lastName">Student Email</label> 
							 		</div> 
							 			</div> 
							 				</div> 
							 					<div class="row"> 
							 						<div class="col-md-6 mb-2 d-flex align-items-center"> 
							 							<div class="form-outline datepicker w-100"> 
							 								<input type="number" class="form-control form-control-sm" id="birthdayDate" name="StudentAge"/>
							 									 <label for="birthdayDate" class="form-label">Student Age</label> 
							 									 	</div> 
							 									 		</div>
							 									 			 <div class="col-md-6 mb-2 pb-2">		
				
				
	<div class="form-outline"> 
		<input type="tel" id="text" class="form-control form-control-sm" name="studentCollegeName"/> 
		<label class="form-label" for="text">Student College Name</label> 
			</div>
				</div> 
					</div> 
						<div class="row"> 
							<div class="col-md-6 mb-2 pb-2"> 
								<div class="form-outline"> <input type="number" id="feesPaid" class="form-control form-control-sm" name="feesPaid"/> 
									<label class="form-label" for="feesPaid">Fees Paid</label> 
										</div> 
											</div> 
												<div class="col-md-6 mb-2"> <h6 class="mb-2 pb-1">Student Course : </h6>
													 <div class="form-check form-check-inline"> <input class="form-check-input" type="radio" name="StudentCourse" id="java" value="Java" checked /> 
													 	<label class="form-check-label" for="java">Java</label> 
													 		</div> 
													 			<div class="form-check form-check-inline"> <input class="form-check-input" type="radio" name="StudentCourse" id="python" value="Python" /> 
													 				<label class="form-check-label" for="python">Python</label> 
													 					</div> <div class="form-check form-check-inline"> 
													 						<input class="form-check-input" type="radio" name="StudentCourse" id="testing" value="Testing" /> 
													 							<label class="form-check-label" for="testing">Testing</label> 
													 								</div> 
													 									</div>
													 										 </div> 
		<div class="row"> <div class="col">
				
		<select class="select form-control-sm" name="batchMode"> 
		<option value="#" disabled >Select Batch Mode</option> 
		<option value="Online">Online</option> 
		<option value="Offline">Offline</option>
		 </select>
		
		 <label class="form-label select-label">Batch Mode</label>
		 	 </div> <div class="col"> 
		 	 <select class="select form-control-sm" name="batchNumber"> 
		 	 <option value="#" >Select Batch Number</option> 
		 	 
		 	 <!-- here above besides #there was disables property i have removed it , and working properly --> 		 	 
		 	 <option value="REG-185">REG-185</option> 
		 	 <option value="FDJ-185">FDJ-185</option> 
		 	 <option value="REG-184">REG-184</option>
		 	 <option value="FDJ-184">FDJ-184</option> 
		 	 <option value="REG-186">REG-186</option> 
		 	 <option value="FDJ-186">FDJ-186</option> 
		 	 <option value="REG-187">REG-187</option> 
		 	 <option value="FDJ-187">FDJ-187</option> 
		 	 <option value="REG-188">REG-188</option> 
		 	 <option value="FDJ-188">FDJ-188</option> 
		  </select> 
		  
		  <label class="form-label select-label">Batch Number</label> 
		  	</div> 
		  		</div> 
		  			<div class="mt-2 pt-2 d-flex justify-content-center"> 
		  				<input class="btn btn-primary btn-lg" type="submit" value="Submit" /> 
		  					</div> 
		  						</form> 
		  							</div> 
		  								</div> 
		  									</div> 
		  										</div> 
		  											</div> 
		  											
		  											
		  											
		  											
		  <!-- 	</section> 
		  	<section class="view" style="height:530px" id="view">
			<h1 style="color: white;">View Student</h1> 
			</section> 
				</div>	
			 -->
 <section class="view" style="height:530px" id="view"> 
	<h1 class="text-center" style="color: white;">Student Details..!</h1>
		
		<h6 style="color: white;">Select Radio button before any action</h6>
		
		<div class="text-center w-100"> 
			<form action="search" class="w-100"> 
			<select class="select form-control-sm border border-primary" name="batchNumber"> 
				<option value="#" slected>Select Batch Number</option> 
		 	 <option value="REG-185">REG-185</option> 
		 	 <option value="FDJ-185">FDJ-185</option> 
		 	 <option value="REG-184">REG-184</option>
		 	 <option value="FDJ-184">FDJ-184</option> 
		 	 <option value="REG-186">REG-186</option> 
		 	 <option value="FDJ-186">FDJ-186</option> 
		 	 <option value="REG-187">REG-187</option> 
		 	 <option value="FDJ-187">FDJ-187</option> 
		 	 <option value="REG-188">REG-188</option> 
		 	 <option value="FDJ-188">FDJ-188</option> 
				</select> 
					<button class="btn btn-outline-primary mb-1">Search</button> 
					</form> 
					<marquee>
					 <h1 style="color: red;"> ${message }</h1> 
					 </marquee> 
			</div> 
		
		<form name="fn">
		 <table class="table table-hover" style="font-size: small"> 
		 <thead> 
		 	<tr> 
		 		<th>ID</th> 
		 		<th>Student Name</th> 
		 		<th>Student Email</th> 
		 		<th>Age</th> 
		 		<th>College Name</th> 
		 		<th>Course Name</th> 
		 		<th>Bath No</th> 
		 		<th>Mode</th> 
		 		<th>Fees Received</th> 
		 		<th>Select button</th>
		 		<th>Actions</th> 
		 	</tr> 
		 </thead> 
		 <tbody> 
		
		 <c:forEach items="${data}" var="s"> 
		 <tr> 
		 	<td>${s.studentId}</td> 
		 	<td>${s.studentFullName}</td> 
		 	<td>${s.studentEmail}</td> 
		 	<td>${s.studentAge}</td> 
		 	<td>${s.studentCollegeName}</td> 
		 	<td>${s.studentCourse}</td> 
		 	<td>${s.batchNumber}</td> 
		 	<td>${s.batchMode}</td> 
		 	<td>${s.feesPaid}</td> 
		 	
		 	<td> 
		 	<input type="radio" name="stuId" value="${s.studentId}"> 
		 	</td>
		 	<!-- we use thid radio button to dent stuId paremeter to url, we have to click on the radio button
		 	to send that id -->
		 	
		 	<td> 
			
			<div class="btn-group btn-group-sm" role="group" aria-label="..."> 
					<button class="btn btn-outline-success" onclick="fees()">Pay-Fees</button>
					<button class="btn btn-outline-primary" onclick="batch()">Shift-Batch</button> 
					<button class="btn btn-outline-primary" onclick="mode()">Shift-Mode</button> 
					<button class="btn btn-outline-danger" onclick="remove()">Remove</button> 
					
					</div> 
					</td> 
					</tr> 
					</c:forEach> 
					</tbody>
			
			
			
			
			
			
			
			 
			
			</table>
			</form>
			</section>
			
			
			
			
			
				
</body>
</html>