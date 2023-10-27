<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Details</title>
<%@include file="../component/allcss.jsp"%>

<style type="text/css">
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}

</style>
</head>
<body>
<%@include file="navbar.jsp"%>

			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Patient Details</p>
						
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Address</th>
									<th scope="col">Status</th>
									
								</tr>
							</thead>
							<tbody>
								<%
								
								AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
								DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
								List<Appointment> list = dao.getAllAppointment();
								for (Appointment ap : list) {
									Doctor d = dao2.getDoctorById(ap.getDoctorId());
								%>
								<tr>
									<th><%=ap.getFullName()%></th>
									<td><%=ap.getGender()%></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppoinDate()%></td>
									<td><%=ap.getEmail()%></td>
									<td><%=ap.getPhNo()%></td>
									<td><%=ap.getDiseases()%></td>
									<td><%=d.getFullName()%></td>
									<td><%=ap.getAddress()%></td>
									<td><%=ap.getStatus()%></td>
									
								</tr>
								<%
								}
								%>
							</tbody>
						</table>

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
			� 2023 Copyright: <a class="text-info"
				href="https://mdbootstrap.com/">MDBootstrap.com</a>
		</div>
		<!-- Copyright -->
	</footer>

</body>
</html>