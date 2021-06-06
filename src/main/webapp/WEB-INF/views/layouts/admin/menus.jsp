<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<!--/sidebar-menu-->
	<div class="sidebar-menu">
	    <header class="logo1">
	        <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
	    </header>
	    <div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
	   <div class="menu">
	       <ul id="menu">
	           <li><a href='<c:url value="/admin"/>'><i class="fa fa-tachometer"></i> <span>Trang chủ</span><div class="clearfix"></div></a></li>
	           <li id="menu-academico" ><a href='<c:url value="/admin/message"/>'><i class="fa fa-envelope nav_icon"></i><span>Tin nhắn</span><div class="clearfix"></div></a></li>
	           <li id="menu-academico"><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i><span>Sản phẩm</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
	               <ul id="menu-academico-sub">
		                <c:forEach var="item" items="${ categorys }">
							<li id="menu-academico-avaliacoes"><a href='<c:url value="/admin/san-pham/${ item.id }"/>'> ${ item.name }</a></li>
						</c:forEach>
	               </ul>
	           </li>
	           <li><a href='<c:url value="/admin/loai-san-pham"/>'><i class="fa fa-th"></i> <span>Loại sản phẩm</span><div class="clearfix"></div></a></li>
	           <li><a href='<c:url value="/admin/don-hang"/>'><i class="fa fa-file-text-o"></i>  <span>Đơn Hàng</span><div class="clearfix"></div></a></li>
	           <li id="menu-academico"><a href="#"><i class="fa fa-plus" aria-hidden="true"></i><span>Thêm</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
	           	   <ul id="menu-academico-sub">
						<li id="menu-academico-avaliacoes"><a href='<c:url value="/admin/them-san-pham"/>'> Thêm sản phẩm</a></li>
						<li id="menu-academico-avaliacoes"><a href='<c:url value="/admin/them-loai-san-pham"/>'> Thêm loại sản phẩm</a></li>
	               </ul>
	           </li>
	           <li id="menu-academico"><a href='<c:url value="/admin/them-quan-ly"/>'><i class="fa fa-group" aria-hidden="true"></i><span>Thêm quản lý</span><div class="clearfix"></div></a></li>
	           <li><a href='<c:url value="/admin/lich"/>'><i class="fa fa-table"></i>  <span>Lịch làm việc</span><div class="clearfix"></div></a></li>
	           <li><a href='<c:url value="/admin/maps"/>'><i class="fa fa-map-marker" aria-hidden="true"></i> <span>Bản đồ</span><div class="clearfix"></div></a></li>
	           <li><a href="#"><i class="fa fa-check-square-o nav_icon"></i><span>Thống kê</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
	                <ul>
	                    <li><a href="#">Thống kê đơn hàng</a></li>
	                    <li><a href="#">Thống kê doanh thu</a></li>
	                    <li><a href="#">Thống kê sản phẩm</a></li>
	                </ul>
	            </li>
	        </ul>
	    </div>
	</div>
	<div class="clearfix"></div>