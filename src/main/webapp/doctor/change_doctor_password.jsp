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

			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<p class="text-center fs-3">change password</p>

					<c:if test="${not empty succMsg}">
						<p class="text-center text-success fs-5">${succMsg}</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>

					<c:if test="${not empty erorrMsg}">
						<p class="text-center text-danger fs-5">${erorrMsg}</p>
						<c:remove var="erorrMsg" scope="session" />
					</c:if>

					<div class="card-body">
						<form action="../doctorPasswordChange" method="post">

							<div class="mb-3">
								<label class="form-label">Enter New Password</label> <input
									required name="newPassword" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Enter Old Password</label> <input
									required name="oldPassword" type="text" class="form-control">
							</div>
							<input type="hidden" value="${doctObj.id}" name="uid">
							<button class="btn btn-success col-md-12">Change
								Password</button>

						</form>

					</div>

				</div>


			</div>

		</div>

	</div>


</body>
</html>