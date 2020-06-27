<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.success {
	padding: 100px 0;
	font-size: 30px;
	font-weight: 700;
	color: #00529c;
	line-height: 30px;
	text-align: center;
}

body {
	background: #f5f9ff;
	font-family: 'Oxygen';
	color: #2b3141;
}
</style>
</head>
<body>


	<br>

	<div class="container">
		<div class="jumbotron">

			<div class="success">
				<h3>
					Thank You, <br>${mem.name} !
				</h3>

				<br> <img src="images/done.png" width="89" height="89" /><br>
				<br>Registration Successful<br>
				<h3>Your Member ID : ${mem.member_id}</h3>
			</div>
			<input type="hidden" name="member_id" value="${mem.member_id}">
		<input type="hidden" name="gender" value="${mem.gender}"> 
		<input type="hidden" name="doorno" value="${mem.doorno}">
		<input type="hidden" name="dob" value="${mem.dob}"> 
		<input type="hidden" name="area" value="${mem.area}"> 
		<input type="hidden" name="district" value="${mem.district}">
		 <input type="hidden" name="state" value="${mem.state}"> 
		 <input type="hidden" name="pincode" value="${mem.pincode}">

		</div>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>