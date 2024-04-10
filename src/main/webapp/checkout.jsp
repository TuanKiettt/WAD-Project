<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.CartImp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_components/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_components/navbar.jsp"%>
	<c:if test="${ empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<c:if test="${not empty successMsg }">
		<div class="alert alert-success" role="alert">${successMsg }</div>
		<c:remove var="successMsg" scope="session"/>
	</c:if>
	<c:if test="${not empty failedMsg }">
		<div class="alert alert-danger" role="alert">${failedMsg }</div>
		<c:remove var="failedMsg" scope="session"/>
	</c:if>
	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">

				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-success text-center">Your selected items:</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Book Name</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							<%
								User u= (User)session.getAttribute("userobj");
;								CartImp cartImp= new CartImp(DBconnect.getConnection());
								List<Cart> cart=cartImp.getBookByUser(u.getId());
								Double totalPrice=0.00;
								for(Cart c : cart){
									totalPrice=c.getTotal_price();
							%>
								<tr>
									<th scope="row"><%=c.getBookName() %></th>
									<td><%=c.getAuthor() %></td>
									<td><%=c.getPrice() %><i class="fa-solid fa-dollar-sign"></i></td>
									<td>
										<a href="remove_book?bid=<%=c.getBid() %>&&uid=<%=c.getUid() %>" class="btn btn-danger"><i class="fa-solid fa-trash"></i></a>
									</td>
								</tr>
							<%
								}	
							%>
								<tr>
									<td>Total Price</td>
									<td></td>
									<td></td>
									<td><%=totalPrice %><i class="fa-solid fa-dollar-sign"></i>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-success text-center">Your Details for Order</h3>
						<form class="row g-3 mt-2">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Name</label> <input
									type="text" class="form-control" id="inputEmail4" value="<%=u.getName()%>" readonly="readonly">
							</div>
							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Email</label>
								<input type="email" class="form-control" id="inputPassword4" value="<%=u.getEmail()%>">
							</div>
						</form>
						<form class="row g-3 mt-2">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone Number</label> <input
									type="number" class="form-control" id="inputEmail4" value="<%=u.getPhone_no()%>">
							</div>
							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Address</label>
								<input type="text" class="form-control" id="inputPassword4" >
							</div>
						</form>
							<form class="row g-3 mt-2">
								<div class="col-md-6">
									<label for="inputEmail4" class="form-label">City</label> <input
										type="text" class="form-control" id="inputEmail4">
								</div>
								<div class="col-md-6">
									<label for="inputPassword4" class="form-label">Zip</label>
									<input type="number" class="form-control" id="inputPassword4">
								</div>
							</form>
							<div class="form-group mt-2">
								<label class="mt-1">Payment Mode</label>
								<select class="form-control">
									<option>--Select--
									<option>Cash On Delivery(COD)
									<option>Banking
								</select>
							</div>
							<div class="text-center mt-2">
								<button class="btn btn-warning">Order Now</button>
								<a href="index.jsp" class="btn btn-success">Continue Shopping</a>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>