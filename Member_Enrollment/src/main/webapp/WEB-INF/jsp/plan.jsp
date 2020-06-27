<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plans Available</title>
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

p {
	text-align: center;
}
</style>

<body>
<form action="ConfirmEnrolment" method="POST">
		<input type="hidden" name="member_id" value="${mem.member_id}">
		<input type="hidden" name="name" value="${mem.name}"> <input
			type="hidden" name="gender" value="${mem.gender}"> <input
			type="hidden" name="doorno" value="${mem.doorno}"> <input
			type="hidden" name="dob" value="${mem.dob}"> <input
			type="hidden" name="area" value="${mem.area}"> <input
			type="hidden" name="district" value="${mem.district}"> <input
			type="hidden" name="state" value="${mem.state}"> <input
			type="hidden" name="pincode" value="${mem.pincode}">

	<div class="container">
		<h2>Select Plan</h2>
		<p>Plans Available for You</p>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Plan Name</th>
					<th>Cost</th>
					<th>Feature</th>
					<th>Opt Code</th>
					<th>Select</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${plan}" var="plan">
					<tr>
						<td>${plan.plan_name}</td>
						<td>$ ${plan.cost}</td>
						<td>${plan.feature}</td>
						<td>${plan.opt_code}</td>
						<td><input type="radio" name="plan_id" value="${plan.plan_id}" required></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>




		<center>
			<div class="form-group">
				<button type="submit" class="btn btn-success">Click to
					Proceed</button>
			</div>
		</center>

	</form>

</body>
</html>