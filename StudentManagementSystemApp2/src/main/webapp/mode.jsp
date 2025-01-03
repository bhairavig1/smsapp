<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Batch Mode change page</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
crossorigin="anonymous">



</head>
<body>


<div class="d-flex justify-content-center align-center"> 
	<div class="w-50 align-middle border border-info border-3 mt-2" style="height: 500px">
	
	<h6 class="p-3 text-primary "> <u>Student Details :-</u> </h6> 
	
	<div class="border border-secondary m-3 p-2">
	
	 <table class="table table-hover border border-secondary "> 
	 	<tbody> 
	 		<tr class="table-primary fs-6"> 
	 			<th>Student Id</th> 
	 			<td>${ms.studentId}</td> 
	 			</tr> 
	 			
	 			<tr class="table-primary fs-6"> 
	 			<th>Student Name</th> 
	 			<td>${ms.studentFullName}</td> 
	 			</tr> 
	 			
	 			<tr class="table-primary fs-6"> 
	 			<th>Course Name</th> 
	 			<td>${ms.studentCourse}</td> 
	 			</tr> 
	 			
	 			<tr class="table-primary fs-6"> 
	 			<th>Batch Number</th> 
	 			<td>${ms.batchNumber}</td> 
	 			</tr> 
	 			
	 			<tr class="table-primary fs-6"> 
	 			<th>Batch Mode</th> 
	 			<td>${ms.batchMode}</td> 
	 			</tr> 
	 			
	 			 
	 			
	 		</tbody> 
	 			
	 	</table>

			<form action="modeshift" >
			 <input type="text" name="studentid" value="${ms.studentId}" hidden="true"> 
			 	
			 	<div class="bg-dark p-2 d-flex justify-content-between" style="background-color: aqua;"> 
			 	
			 			
					 <select class="select form-control-sm" name="batchMode"> 
					<option value="#">Select Batch Mode</option> <!-- made select mode option enable -->
					<option value="Online">Online</option> 
					<option value="Offline">Offline</option>
					 </select>
					 
			 		
			 	 	<button class="btn btn-success btn-sm ">select Batch Mode</button> 
				
			 	</div> 
			 	
			 	<!-- <div  class="d-flex justify-content-center pt-5"> 
<		 	<button class="btn btn-success btn-sm ">select Batch</button> 
  			 	</div>  -->
 			 	</form> 
			 	</div> 
			 	</div> 
			 	</div>


												 										 </div> 
		
		
	









</body>
</html>