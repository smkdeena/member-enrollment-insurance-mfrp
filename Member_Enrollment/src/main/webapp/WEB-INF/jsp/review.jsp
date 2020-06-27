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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<style type="text/css">
.review-table {
	width: 840px;
	margin: 50px auto;
}

h2 {
	color: #333;
	text-align: center;
	position: relative;
	margin: 30px 0 60px;
}

h2::after {
	content: "";
	width: 100px;
	position: absolute;
	margin: 0 auto;
	height: 3px;
	background: #8fbc54;
	left: 0;
	right: 0;
	bottom: -10px;
}

.col-center {
	margin: 0 auto;
	float: none !important;
}

.carousel {
	margin: 50px auto;
	padding: 0 70px;
}

.carousel .item {
	color: #999;
	font-size: 14px;
	text-align: center;
	overflow: hidden;
	min-height: 40px;
}

.carousel .item .img-box {
	width: 135px;
	height: 135px;
	margin: 0 auto;
	padding: 5px;
	border: 1px solid #ddd;
	border-radius: 50%;
}

.carousel .testimonial {
	padding: 30px 0 10px;
}

.carousel .overview {
	size: 30px;
	color: black;
	font-weight: bold;
}

.carousel .overview b {
	text-transform: uppercase;
	color: green;
	size: 100px;
	font-weight: bold;
}

.carousel .carousel-control {
	width: 40px;
	height: 40px;
	margin-top: -20px;
	top: 50%;
	background: none;
}

.carousel-control i {
	font-size: 68px;
	line-height: 42px;
	position: absolute;
	display: inline-block;
	color: rgba(0, 0, 0, 0.8);
	text-shadow: 0 3px 3px #e6e6e6, 0 0 0 #000;
}

.carousel .carousel-indicators {
	bottom: -40px;
}

.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	margin: 1px 3px;
	border-radius: 50%;
}

.carousel-indicators li {
	background: #999;
	border-color: transparent;
	box-shadow: inset 0 2px 1px rgba(0, 0, 0, 0.2);
}

.carousel-indicators li.active {
	background: #555;
	box-shadow: inset 0 2px 1px rgba(0, 0, 0, 0.2);
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
		<input type="hidden" name="name" value="${mem.name}"> <input
			type="hidden" name="gender" value="${mem.gender}"> <input
			type="hidden" name="doorno" value="${mem.doorno}"> <input
			type="hidden" name="dob" value="${mem.dob}"> <input
			type="hidden" name="area" value="${mem.area}"> <input
			type="hidden" name="district" value="${mem.district}"> <input
			type="hidden" name="state" value="${mem.state}"> <input
			type="hidden" name="pincode" value="${mem.pincode}"> <input
			type="hidden" name="plan_id" value="${plan.plan_id}">


		<div class="container">
			<div class="row">
				<div class="col-md-8 col-center m-auto">
					<h2>Provider Available for You</h2>

					<div id="myCarousel" class="carousel slide" data-ride="carousel">


						<div class="carousel-inner">
							<div class="item carousel-item active">
								<p class="overview">Available Provider for Pincode</p>
								<p class="overview">
									<b>${mem.pincode}</b>
								</p>
							</div>

							<c:forEach items="${hospital}" var="hospital">
								<div class="item carousel-item">
									<p class="overview">
										<b>${hospital.hospitalName}</b>
									</p>
									<p class="overview">${hospital.address}</p>
								</div>
							</c:forEach>
						</div>
						<a class="carousel-control left carousel-control-prev"
							href="#myCarousel" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="carousel-control right carousel-control-next"
							href="#myCarousel" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>


				</div>
			</div>
		</div>

		<br> <br>

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