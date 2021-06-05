<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
<style>
	.product-content{
		overflow-x: hidden;
	}
</style>
</head>
<body>
<!-- 
Body Section 
-->
	<div class="row product-content">
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
			
			
			<br>
			<br>
			
	</div>
	<div class="span9">
    <ul class="breadcrumb">
    <li><a href="<c:url value="/"/>">Trang chủ</a> <span class="divider">/</span></li>
    <li><a href="<c:url value="/"/>">Sản phẩm</a> <span class="divider">/</span></li>
    <li class="active">Chi tiết sản phẩm</li>
    </ul>	
	<div class="well well-small">
	<div class="row-fluid">
			<div class="span5">
			<div id="myCarousel" class="carousel slide cntr">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href="#"> <img src="<c:url value="/assets/user/img/${ product.img }"/>" alt="" style="width:100%"></a>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
            </div>
			</div>
			<div class="span7">
				<h2>${ product.name }</h3>
				<hr class="soft"/>
				
				<form class="form-horizontal qtyFrm" method="get" action="<c:url value="/AddCart/${ product.id_product }"/>">
				  <div class="control-group">
					<label class="control-label"><span><fmt:formatNumber type="number" groupingUsed="true" value="${ product.price }" />₫</span></label>
					<div class="controls">
					<input type="number" min="1" value="1" class="span6">
					</div>
				  </div>
				  ${ product.title }
				  <br>
				  <br>
				  <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Thêm giỏ hàng </button>
				</form>
			</div>
			</div>
				<hr class="softn clr"/>


            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Chi tiết sản phẩm</a></li>
              <li class=""><a href="#profile" data-toggle="tab">Sản phẩm liên quan </a></li>
            </ul>
            <div id="myTabContent" class="tab-content tabWrapper">
            <div class="tab-pane fade active in" id="home">
			  	${ product.details }
			</div>
			<div class="tab-pane fade" id="profile">
			
			<c:set var="countList" value="${ productByIDCategory.size() }" />
			<c:if test="${ productByIDCategory.size() > 6 }">
				<c:set var="countList" value="6" />
			</c:if>
			
			<c:forEach var="item" items="${ productByIDCategory }" begin="0" end="${ countList }" varStatus="loop">
				<div class="row-fluid">	  
					<div class="span2">
						<img src="<c:url value="/assets/user/img/${ item.img }"/>" alt="">
					</div>
					<div class="span6">
						<h5>${ item.name } </h5>
						<p>
						${ item.title }
						</p>
					</div>
					<div class="span4 alignR">
						<form class="form-horizontal qtyFrm">
							<h3> <fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" />₫</h3>
							<div class="btn-group">
							  <a href="<c:url value="/AddCart/${ item.id_product }"/>" class="defaultBtn"><span class=" icon-shopping-cart"></span> Thêm giỏ hàng</a>
							  <a href="<c:url value="/chi-tiet-san-pham/${ item.id_product }"/>" class="shopBtn">Xem</a>
							 </div>
						</form>
					</div>
				</div>
			<hr class="soft"/>
			</c:forEach>
			
			</div>
              
            </div>

</div>
</div>
</div> <!-- Body wrapper -->
</body>