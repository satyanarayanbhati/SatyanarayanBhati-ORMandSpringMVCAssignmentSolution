<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>
	<body>
		<div class="container" >
		<div style="background-color:MediumSeaGreen;">
			<h1>Customer Relationship Management</h1></div>
			<hr />
			
			<h2>
				<a href="/crmproject/customer/new" class="btn btn-primary btn-sm float-start" style="background-color:Gray;">Add a customer</a>
			</h2><br><br>
			<table class="table table-bordered table-striped">
				<thead>
					<tr style="background-color:MediumSeaGreen;">
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${customers}" var="customer">
						<tr>
							<td><c:out value="${customer.firstName}" /></td>
							<td><c:out value="${customer.lastName}"/></td>
							<td><c:out value="${customer.emailaddress}" /></td>
							<td>
								<a href="/crmproject/customer/edit?id=${customer.id}">Update</a>
								<a href="/crmproject/customer/delete?id=${customer.id}" onclick="return confirm('Are you sure you want to delete?');">Delete</a>
							</td>
						</tr>	
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	</body>
</html>