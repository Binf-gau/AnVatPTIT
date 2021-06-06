<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
	<head>
		<title>Đăng ký tài khoản</title>
	</head>

	<body>
		<!-- 
Body Section 
-->
		<div class="row">
		
			<div id="sidebar" class="span3">
			
				<div class="well well-small">
					<ul class="nav nav-list">
	
						<c:forEach var="item" items="${ categorys }">
							<li><a href='<c:url value="/san-pham/${ item.id }"/>'><span
									class="icon-circle-blank"></span> ${ item.name }</a></li>
							<li>
						</c:forEach>
	
					</ul>
				</div>
	
				<div class="well well-small alert alert-warning cntr">
					<h2>Giảm giá 50%</h2>
					<p>
						Áp dụng cho đơn hàng online đầu tiên <br> <br> <a
							class="defaultBtn" href="#">Nhận mã giảm giá </a>
					</p>
				</div>			
	
			</div>
			
			<div class="span9">
				<ul class="breadcrumb">
					<li><a href="<c:url value="/"/>">Trang chủ</a> <span class="divider">/</span></li>
					<li class="active">Người dùng</li>
				</ul>
				<hr class="soft" />

				<c:if test="${ not empty messageResponse}">
					<div class="alert alert-${alert}">	
						<p>${messageResponse}</p>
					</div>
				</c:if>


				<div class="row">
					<div class="span4">
						<div class="well">
							<h5>Đăng ký tài khoản</h5>
							<br />
							<form:form action="dang-ky" method="POST" modelAttribute="user">  
								<div class="control-group">
									<label class="control-label" for="inputEmail">Email</label>
									<div class="controls">
										<form:input type="email" class="span3" placeholder="Mời nhập email" path="user" />  
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="inputEmail">Mật khẩu</label>
									<div class="controls">
										<form:input type="password" class="span3" placeholder="Mời nhập mật khẩu" path="password" />  
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="inputEmail">Họ và tên</label>
									<div class="controls">
										<form:input type="text" class="span3" placeholder="Mời nhập họ và tên" path="display_name" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="inputEmail">Địa chỉ</label>
									<div class="controls">
										<form:input type="text" class="span3" placeholder="Mời nhập địa chỉ" path="address" />
									</div>
								</div>

								<div class="controls">
									<button type="submit" class="btn block">Đăng ký thành viên</button>
								</div>
							</form:form>  
						</div>
					</div>
					<div class="span1"> &nbsp;</div>
					<div class="span4">
						<div class="well">
							<h5>Đăng nhập hệ thống</h5>
								<h1> ${ statusLogin }</h1>
							
							<form:form action="dang-nhap" method="POST" modelAttribute="user"> 
								<div class="control-group">
									<label class="control-label" for="inputEmail">Tài khoản</label>
									<div class="controls">
										<form:input type="email" class="span3" placeholder="Mời nhập email" path="user" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="inputPassword">Mật khẩu</label>
									<div class="controls">
										<form:input type="password" class="span3" placeholder="Mời nhập mật khẩu" path="password" />
									</div>
								</div>
								<div class="control-group">
									<div class="controls">
										<button type="submit" class="defaultBtn">Đăng nhập</button> <a href="#">Quên mật khẩu?</a>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</body>