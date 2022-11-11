<%@page import="com.entity.Emp"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assigment</title>
<%@include file="all_css.jsp"%>
<script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
	</script>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-body">
						<p class="text-center fs-2 fw-bold">All Employee Details</p>
						<div class="input-group mb-3">
							<form action="" method="get">
								<input type="text" class="form-control" placeholder="Search"
								aria-label="Recipient's username"
								aria-describedby="button-addon2" name="search" id="searchKey" >
							</form>
								<a class="btn btn-danger" aria-current="page" href="Add_Employee.jsp">Add
									
								</a>
						</div>
						<table class="table" id="mytable">
							<thead>
								<tr>
									<th scope="col">EID</th>
									<th scope="col">Employee Name</th>
									<th scope="col">Date Of Join</th>
									<th scope="col">Year of Experience</th>
									<th scope="col">Designation</th>
								</tr>
							</thead>
							<tbody id="tbodys">
							
							<%
								EmpDao dao=new EmpDao(DbConnect.getConn());
							
								
								List<Emp> list= dao.getAllEmp();
								for(Emp e:list)
								{
							%>
							
							<tr>
									<th scope="row"> <%= e.getEmpId() %> </th>
									<td><%= e.getName() %></td>
									<td><%= e.getDoj() %></td>
									<td><%= e.getYoe() %></td>
									<td><%= e.getDesignation() %></td>

								</tr>
							<%} %>
								

							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
	
	<!-- <script type="text/javascript">
		const searchFun=>(){
			let filter=document.getElementById('searchKey');
			let mytable=document.getElementById('mytable');
			let tr=mytable.getElementsByTagName('tr');
			for(var i=0;i<tr.length;i++){
				let td=tr[i].getElementsByTagName('td')[1];
				if('td'){
					let textValue=td.textContent || td.innerHTML;
					if(textValue.toUpperCase().indexOf(filter)>-1){
						tr[i].style.display="";
					}else{
						tr[i].style.display="none";
					}
				}
			}
		}
	</script>	 -->
	<script>
			$(document).ready(function() {
				$("#searchKey").on("keyup", function() {
					var value = $(this).val().toLowerCase();
					$("#tbodys tr").filter(function() {
						$(this).toggle($(this).text()
						.toLowerCase().indexOf(value) > -1)
					});
				});
			});
		</script>
</body>
</html>