<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member Enrollment</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.0.1/css/datepicker.css" rel="stylesheet">
<style>

	body{
		background-image: url("images/bg.jpg");
	}
	h2{
		text-align: center;
	}
	.member-enrollment-form {
		width: 440px;
    	margin: 50px auto;
	}
    .member-enrollment-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .member-enrollment-form h2 {
        margin: 0 0 15px;
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

<div class="member-enrollment-form">
    <form action="SelectPlan" method="post">
        <h2>Member Enrollment</h2>    

       	<!-- Member Name -->


        <div class="form-group">
            <input type="text" class="form-control" placeholder="Name" required="required" name="name">
        </div>

         <!-- Member Gender -->

         <div class="form-group">
            <select class="form-control" required="required" name="gender">
    		<option disabled selected>Gender</option>
            <option value="M">Male</option>
            <option value="F">Female</option></select>
        </div>

           <!-- Member DOB -->

		<div class="form-group">
            <input type="date"  class="form-control" placeholder="DOB" required="required" name="dob">
        </div>           

           <!-- Member Door No -->

         <div class="form-group">
            <input type="text" class="form-control" placeholder="Flat/Door No" required="required" name="doorno">
        </div>           

          <!-- Member Area -->

         <div class="form-group">
            <input type="text" class="form-control" placeholder="Area" required="required" name="area">
        </div>           


         <!-- Member District -->

         <div class="form-group">
            <input type="text" class="form-control" placeholder="District" required="required" name="district">
        </div>           

           <!-- Member State -->

        <div class="form-group">
    	<select class="form-control" required="required" name="state">
			<option disabled selected>State</option>
			<option value="Andhra Pradesh">Andhra Pradesh</option>
			<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
			<option value="Arunachal Pradesh">Arunachal Pradesh</option>
			<option value="Assam">Assam</option>
			<option value="Bihar">Bihar</option>
			<option value="Chandigarh">Chandigarh</option>
			<option value="Chhattisgarh">Chhattisgarh</option>
			<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
			<option value="Daman and Diu">Daman and Diu</option>
			<option value="Delhi">Delhi</option>
			<option value="Lakshadweep">Lakshadweep</option>
			<option value="Puducherry">Puducherry</option>
			<option value="Goa">Goa</option>
			<option value="Gujarat">Gujarat</option>
			<option value="Haryana">Haryana</option>
			<option value="Himachal Pradesh">Himachal Pradesh</option>
			<option value="Jammu and Kashmir">Jammu and Kashmir</option>
			<option value="Jharkhand">Jharkhand</option>
			<option value="Karnataka">Karnataka</option>
			<option value="Kerala">Kerala</option>
			<option value="Madhya Pradesh">Madhya Pradesh</option>
			<option value="Maharashtra">Maharashtra</option>
			<option value="Manipur">Manipur</option>
			<option value="Meghalaya">Meghalaya</option>
			<option value="Mizoram">Mizoram</option>
			<option value="Nagaland">Nagaland</option>
			<option value="Odisha">Odisha</option>
			<option value="Punjab">Punjab</option>
			<option value="Rajasthan">Rajasthan</option>
			<option value="Sikkim">Sikkim</option>
			<option value="Tamilnadu">Tamilnadu</option>
			<option value="Telangana">Telangana</option>
			<option value="Tripura">Tripura</option>
			<option value="UttarPradesh">Uttar Pradesh</option>
			<option value="Uttarakhand">Uttarakhand</option>
			<option value="West Bengal">West Bengal</option>
			</select>
        </div>

           <!-- Member Pincode -->

         <div class="form-group">
            <input type="text" class="form-control" placeholder="Pincode" required="required" name="pincode">
        </div>           


        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Click Here to Proceed</button>
        </div>
      
    </form>

</div>


<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap.datepicker.js"></script>
</body>
</html>