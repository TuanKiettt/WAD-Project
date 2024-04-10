
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@include file="all_components/allCSS.jsp"%>
<style type="text/css">
	a{
		text-decoration: none;
		color:black;
	}
	a:hover{
		text-decoration: none;
	}
</style>
</head>
<body style="background-color:#D9D3D3">
	<%@include file="all_components/navbar.jsp"%>
	<% User u= (User)session.getAttribute("userobj");%>
	<div class="container">
		<h3 class="text-center">Hello,<%=u.getName() %></h3>
		<div class="row">
			<div class="col-md-6">
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-book-open fa-3x text-primary"></i>
							<h3>Sell Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6">
				<a>
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-book-open fa-3x text-primary"></i>
							<h3>Edit Profile</h3>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</body>
</html>