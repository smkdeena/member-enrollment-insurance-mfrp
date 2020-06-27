<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
</head>

<style type="text/css">
.review-table {
	width: 840px;
	margin: 50px auto;
}

h2 {
	text-align: center;
}

h3 {
	text-align: center;
	color: red;
}

.form-control, .btn {
	min-height: 38px;
	border-radius: 2px;
}

.btn {
	font-size: 15px;
	font-weight: bold;
}
</style>
</head>
<body>
	<form action="MemberAdded" method="POST">
		<input type="hidden" name="member_id" value="${mem.member_id}">
		<input type="hidden" name="gender" value="${mem.gender}"> <input
			type="hidden" name="doorno" value="${mem.doorno}"> <input
			type="hidden" name="dob" value="${mem.dob}"> <input
			type="hidden" name="area" value="${mem.area}"> <input
			type="hidden" name="district" value="${mem.district}"> <input
			type="hidden" name="state" value="${mem.state}"> <input
			type="hidden" name="pincode" value="${mem.pincode}">
		<div>
			<h2>Provider Available for You</h2>
		</div>
		<h3>Sorry, No Provider Available for You</h3>

		<br>

		<table>
			<tr>
				<th>Hospital Name</th>
				<th>Address</th>
			</tr>

			<c:forEach items="${hospital}" var="hospital">
				<tr>
					<td>${hospital.hospitalName}</td>
					<td>${hospital.address}</td>
					
				</tr>

			</c:forEach>
		</table>


		<br>

		<div class="review-table">
			<h2>Confirm Enrollment</h2>
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="table-responsive">

							<div class="box-body">
								<table class="table table-bordered">
									<thead>
										<th>Name</th>
										<th>Gender</th>
										<th>DOB</th>
										<th>Address</th>
										<th>State</th>
										<th>Pincode</th>

									</thead>
									<tbody>
										<tr>
											<td>${mem.name}</td>
											<td>${mem.gender}</td>
											<td>${mem.dob}</td>
											<td>${mem.doorno},${mem.area}<br>${mem.district}</td>
											<td>${mem.state}</td>
											<td>${mem.pincode}</td>
										</tr>

									</tbody>
								</table>

							</div>
						</div>
					</div>

				</div>

			</div>
			<center>
				<div class="form-group">
					<button type="submit" class="btn btn-success">Complete
						Enrollment</button>
				</div>
			</center>
	</form>

</body>
</html>