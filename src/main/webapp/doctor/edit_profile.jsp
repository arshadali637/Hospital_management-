<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
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
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	
	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>

	</c:if>
	
	<%@include file="navbar.jsp"%>

	<div class="container p-4">

		<div class="row">


			<div class="col-md-5 offset-md-4">

				<div class="card paint-card">
				<p class="text-center fs-3">Edit Profile</p>
				
					<c:if test="${not empty succMsgd}">
						<p class="text-center text-success fs-5">${succMsgd}</p>
						<c:remove var="succMsgd" scope="session" />
					</c:if>

					<c:if test="${not empty erorrMsgd}">
						<p class="text-center text-danger fs-5">${erorrMsgd}</p>
						<c:remove var="erorrMsgd" scope="session" />
					</c:if>

					<div class="card-body">

						<form action="../updateDoctorProfile" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control" value="${doctObj.fullName}">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control" value="${doctObj.dob}">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" required name="qualification" class="form-control" value="${doctObj.qualification}">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option>${doctObj.specialist }</option>

									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecalistName()%></option>
									<%
									}
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email" readonly
									required name="email" class="form-control" value="${doctObj.email}">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob no</label> <input type="tel"
									required name="mobno" class="form-control" value="${doctObj.mobNo}">
							</div>
							<input type="hidden" name="id" value="${doctObj.id }">
							<button type="submit" class="btn btn-primary col-md-12">Update</button>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>


</body>
</html>