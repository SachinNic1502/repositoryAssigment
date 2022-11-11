<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<%@include file="all_css.jsp" %>	
</head>
<body class="bg-light">
<%@include file="navbar.jsp" %>
<div class="container p-4">
<%-- 
<%
	Connection conn=DbConnect.getConn();
	out.print(conn);
%> --%>
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-body">
					<p class="fs-3 text-center"> Add Employee</p>
					
					<c:if test="${not empty SuccessMsg }">
						<p class="fs-4 text-center text-success">${SuccessMsg }</p>
						<c:remove var="SuccessMsg"/>
					</c:if>
					<c:if test="${not empty ErroMsg }">
						<p class="fs-4 text-center text-danger">${ErroMsg }</p>
						<c:remove var="ErroMsg"/>
					</c:if>
					
					<form action="register" method="post">
					<div class="mb-3">
    						<label class="form-label">Full Name</label>
    						<input type="text" class="form-control" name="name" >
    					</div>
    					<div class="mb-3">
    						<label class="form-label">Date Of Join</label>
    						<input type="date" class="form-control" name="doj">
    					</div>
    					<div class="mb-3">
    						<label class="form-label">Year of Experience</label>
    						<input type="text" class="form-control" name="yoe">
    					</div>
    					<div class="mb-3">
    						<label class="form-label">Designation</label>
    						<input type="text" class="form-control" name="desig">
    					</div>
						
						  
						  <div class=" container p-4 row">
						  	<button type="submit" class="btn btn-primary col-md-5">Submit</button>
						  <button type="submit" class="btn btn-primary col-md-5 mx-auto">Cancel</button>
						  </div>
						  
						</form>
  
				
				</div>
			
			</div>
			
		</div>
	</div>

</div>

</body>
</html>