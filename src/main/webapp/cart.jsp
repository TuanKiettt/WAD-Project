<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart page</title>
<%@include file="all_components/allCSS.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_components/navbar.jsp" %>
<div class="container">
	<div class="row p-2">
		<div class="col-md-6">
			
			<div class="card bg-white">
				<div class="card-body">
				<h3 class="text-center text-success">Your selected items</h3>
					<table class="table table-striped">
					  <thead>
					    <tr>
					      <th scope="col">#</th>
					      <th scope="col">First</th>
					      <th scope="col">Last</th>
					      <th scope="col">Handle</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>Mark</td>
					      <td>Otto</td>
					      <td>@mdo</td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td>Jacob</td>
					      <td>Thornton</td>
					      <td>@fat</td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td>Larry</td>
					      <td>the Bird</td>
					      <td>@twitter</td>
					    </tr>
					  </tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card">
				<div class="card-body">
					<h3 class="text-center text-success">Your details for order </h3>
					<form>
						<div class="row p-2">
							    <div class="form-group col-md-6">
							      <label for="inputEmail4">Name</label>
							      <input type="email" class="form-control" id="inputEmail4" placeholder="Name">
							    </div>
							    <div class="form-group col-md-6">
							      <label for="inputPassword4">Email</label>
							      <input type="password" class="form-control" id="inputPassword4" placeholder="Email">
							    </div>
						  </div>
						  <div class="row p-2">
							    <div class="form-group col-md-6">
							      <label for="inputEmail4">Phone no</label>
							      <input type="email" class="form-control" id="inputEmail4" placeholder="Phone number">
							    </div>
							    <div class="form-group col-md-6">
							      <label for="inputPassword4">Address</label>
							      <input type="password" class="form-control" id="inputPassword4" placeholder="Address">
							    </div>
						  </div>
						  <div class="row p-2">
							    <div class="form-group col-md-6">
							      <label for="inputEmail4">City</label>
							      <input type="email" class="form-control" id="inputEmail4" placeholder="City">
							    </div>
							    <div class="form-group col-md-6">
							      <label>Payment type</label>
							      <select class="form-control">
							      	<option>--Select--</option>
							      	<option>--Cash On Delivery(COD)</option>
							      	<option>Credit Card</option>
							      </select>
							    </div>
						  </div>
						  <div class="text-center">
						  		 <button class="btn btn-warning">Order Now</button>
						  		 <a href="index.jsp" class="btn btn-success">Continue Shopping</a>
						  </div>
						  
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>