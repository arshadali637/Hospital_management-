<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
	.paint-card{
	
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}

</style>
</head>
<body>
	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>

	<%@include file="navbar.jsp"%>
	
	<p class="text-center fs-3">Doctor Dashboard</p>
	
	<% 
	Doctor d = (Doctor)session.getAttribute("doctObj");
	DoctorDao dao = new DoctorDao(DBConnect.getConn()); %>
	
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
					<i class="fas fa-user-md fa-3x"></i>
					<p class="fs-4 text-center"></p>Doctor <br><%=dao.countDoctor() %>
					
					</div>
				</div>			
			</div>
			
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
					<i class="far fa-calendar-check fa-3x"></i>
					<p class="fs-4 text-center"></p>Total Appointment <br><%=dao.countAppointmentByDoctorId(d.getId()) %>
					
					</div>
				</div>			
			</div>	
					
		</div>
	</div>

<footer class="bg-success fixed-bottom">
		<!-- Grid container -->
		<div class="container p-4">
			<!--Grid row-->
			<div class="row">
				<!--Grid column-->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">For Doctor</h5>

					<ul class="list-unstyled mb-0 ">
						<li><a href="#!" class="text-dark">Arshad Ali</a></li>
						<li><a href="#!" class="text-dark">Sagar Gupta</a></li>
						<li><a href="#!" class="text-dark">Amin Pasha</a></li>
						<li><a href="#!" class="text-dark">Amanpreet sngh</a></li>
					</ul>
				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase mb-0">For Patient</h5>

					<ul class="list-unstyled">
						<li><a href="#!" class="text-dark">Checking</a></li>
						<li><a href="#!" class="text-dark">Fever Related</a></li>
						<li><a href="#!" class="text-dark">Gynoclogist</a></li>
						<li><a href="#!" class="text-dark">surgery</a></li>
					</ul>
				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">For Hospital</h5>

					<ul class="list-unstyled mb-0">
						<li><a href="#!" class="text-dark">New Delhi</a></li>
						<li><a href="#!" class="text-dark">Mumbai</a></li>
						<li><a href="#!" class="text-dark">Kolkata</a></li>
						<li><a href="#!" class="text-dark">Rajesthan</a></li>
					</ul>
				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase mb-0">Social</h5>

					<ul class="list-unstyled">
						<li><a href="#!" class="text-dark">Instagram</a></li>
						<li><a href="#!" class="text-dark">Facebook</a></li>
						<li><a href="#!" class="text-dark">Whatsapp</a></li>
						<li><a href="#!" class="text-dark">Twitter</a></li>
					</ul>
				</div>
				<!--Grid column-->
			</div>
			<!--Grid row-->
		</div>
		<!-- Grid container -->

		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			© 2023 Copyright: <a class="text-info"
				href="https://mdbootstrap.com/">MDBootstrap.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	
</body>
</html>