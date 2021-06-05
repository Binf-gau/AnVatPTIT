<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
		<header id="header">
			<div class="row">

				
				<div class="span8 " style="text-align:center;">
					<h1>
						<a class="logo" href="<c:url value="/"/>" ><span>Twitter Bootstrap
								ecommerce template</span> <img src="<c:url value="/assets/user/img/logo/LOGO.jpg" />"
							alt="bootstrap sexy shop"> </a>
					</h1>
				</div>
				<div class="span4 alignR">
					<img src="<c:url value="/assets/user/img/logo/bg-hotline.png" />" alt="bootstrap sexy shop">
					<center>
					<strong style="font-size:20px;color:#FF8C00;font-weight:bold"> 
						0327 710 091 
					</strong>
					</center>
					<br>
					<c:if test="${ empty TotalQuantyCart}">
					<span class="btn btn-mini">[ 0 ] <span class="icon-shopping-cart"></span></span>
					</c:if>
					<c:if test="${ not empty TotalQuantyCart}">
					<span class="btn btn-mini">[ ${ TotalQuantyCart } ] <span class="icon-shopping-cart"></span></span>
					</c:if>
					<span class="btn btn-warning btn-mini">97 Man Thiện, P.Hiệp Phú, Q.9</span>
				</div>
			</div>
		</header>

		<!--
Navigation Bar Section 
-->
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar"> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="nav-collapse">
						<ul class="nav">
							<c:forEach var="item" items="${ menus }" varStatus="index">
								<c:if test="${ index.first }">
									<li class="active">
								</c:if>
								<c:if test="${ not index.first }">
									<li class="">
								</c:if>
								<a href='<c:url value="/${ item.url }"/>'>${ item.name } </a>
								</li>
							</c:forEach>

						</ul>
						<form action="#" class="navbar-search pull-left">
							<input type="text" placeholder="Search" class="search-query span2">
						</form>
					</div>
				</div>
			</div>
		</div>