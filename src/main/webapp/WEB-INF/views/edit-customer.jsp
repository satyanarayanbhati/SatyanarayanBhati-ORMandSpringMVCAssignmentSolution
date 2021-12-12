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
			<h1>Customer Relationship Management</h1></div><br><br>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<h2>Save Customer</h2>
			
						
			<form action="/crmproject/customer/save" method="post">
			<div style="text-align: left">
			  <div class="mb-3">
			    <input type="hidden" class="form-control" name="id" value="${customer.id}">
			  </div>
			  <div class="mb-3">
			    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp First Name:
			    &nbsp&nbsp&nbsp<input type="text" id="firstName" name="firstName" value="${customer.firstName}">
			  </div>
			  <div class="mb-3">
			    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Last Name:
			   &nbsp&nbsp&nbsp<input type="text" id="lastName" name="lastName" value="${customer.lastName}">
			  </div>
			  <div class="mb-3">
			    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspEmail:
			    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" id="emailaddress" name="emailaddress" value="${customer.emailaddress}">
			  </div>
			  
			  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-secondary">Save</button></div><br><br>
			  
			 <a href="/crmproject/customer/list" >Back to List</a>
			</form>
		</div>
		
	</body>
</html>