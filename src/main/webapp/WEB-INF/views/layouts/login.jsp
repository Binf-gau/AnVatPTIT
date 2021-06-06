<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%> 
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Trang quản trị</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
	<link href="<c:url value="/assets/admin/css/bootstrap.min.css" />" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
	<link href="<c:url value="/assets/admin/css/style.css" />" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="<c:url value="/assets/admin/css/morris.css" />" type="text/css"/>
	<!-- Graph CSS -->
	<link href="<c:url value="/assets/admin/css/font-awesome.css" />" rel="stylesheet"> 
	<link rel="stylesheet" href="<c:url value="/assets/admin/css/jquery-ui.css" />"> 
	<!-- jQuery -->
	<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<!-- lined-icons -->
	<link rel="stylesheet" href="<c:url value="/assets/admin/css/icon-font.min.css" />" type='text/css' />
	<!-- //lined-icons -->
</head>

<body>
	<div class="main-wthree">
	<div class="container">
	<div class="sin-w3-agile">
		<h2>Đăng nhập tài khoản quản trị</h2>
		<form action="#" method="post">
			<div class="username">
				<span class="username">Tài khoản:</span>
				<input type="text" name="name" class="name" placeholder="" required="">
				<div class="clearfix"></div>
			</div>
			<div class="password-agileits">
				<span class="username">Mật khẩu:</span>
				<input type="password" name="password" class="password" placeholder="" required="">
				<div class="clearfix"></div>
			</div>
			<div class="login-w3">
					<input type="submit" class="login" value="Sign In">
			</div>
			<div class="clearfix"></div>
		</form>
		<div class="back">
			<a href='<c:url value="/"/>'>Quay lại trang chủ</a>
		</div>
	</div>
	</div>
	</div>
</body>