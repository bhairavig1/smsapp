<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Batch shift page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
crossorigin="anonymous">

</head>
<body>

<div class="d-flex justify-content-center align-center"> 
	<div class="w-50 align-middle border border-info border-3 mt-2" style="height: 500px">
	
	<h6 class="p-3 text-primary "> <u>Batch Shift Details :-</u> </h6> 
	
	<div class="border border-secondary m-3 p-2">
	
	 <table class="table table-hover border border-secondary "> 
	 	<tbody> 
	 		<tr class="table-primary fs-6"> 
	 			<th>Student Id</th> 
	 			<td>${bs.studentId}</td> 
	 			</tr> 
	 			
	 			<tr class="table-primary fs-6"> 
	 			<th>Student Name</th> 
	 			<td>${bs.studentFullName}</td> 
	 			</tr> 
	 			
	 			<tr class="table-primary fs-6"> 
	 			<th>Course Name</th> 
	 			<td>${bs.studentCourse}</td> 
	 			</tr> 
	 			
	 			<tr class="table-primary fs-6"> 
	 			<th>Batch Number</th> 
	 			<td>${bs.batchNumber}</td> 
	 			</tr> 
	 			
	 			<tr class="table-primary fs-6"> 
	 			<th>Batch Mode</th> 
	 			<td>${bs.batchMode}</td> 
	 			</tr> 
	 			
	 			<tr class="table-danger fs-6"> 
	 			<th>Fees Paid</th> 
	 			<td>${bs.feesPaid}</td> 
	 			</tr> 
	 			
	 		</tbody> 
	 			
	 	</table>

			<form action="batchshift">
			 <input type="text" name="studentid" value="${bs.studentId}" hidden="true"> 
			 	
			 	<div class="bg-dark p-2 d-flex justify-content-between"> 
			 	
			 		 	
					 <select class="select form-control-sm" name="batchMode"> 
					<option value="#" disabled >Select Batch Mode</option> 
					<option value="Online">Online</option> 
					<option value="Offline">Offline</option>
					 </select>
					 
<!-- 			 		<button class="btn btn-success btn-sm ">select Batch Mode</button> 
 -->			 		
			 	 
			 	<b>Enter Batch</b>
			 	
			 	<select class="select form-control-sm border border-primary" name="batchnumber"> 
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
				
<!-- 		 	<button class="btn btn-success btn-sm ">Select batch</button> 
 --> 				
			 	</div> 
			 	
			 	 <div  class="d-flex justify-content-center pt-5"> 
		 	<button class="btn btn-success btn-sm ">SUBMIT</button> 
  			 	</div> 
 			 	</form> 
			 	</div> 
			 	</div> 
			 	</div>


				  
		
		
	








</body>
</html>