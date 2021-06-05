<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Loại Sản phẩm</title>
<body>
	<ol class="breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-angle-right"></i><a href='<c:url value="/admin"/>'>Trang chủ</a><i class="fa fa-angle-right"></i>Loại sản phẩm </li>
    </ol>
    
	<div class="agile-tables">
		 <table id="table-max-height" class="max-height">
			<thead>
			  <tr>
				<th>Tên loại sản phẩm</th>
				<th>Miêu tả loại sản phẩm</th>
				<th colspan="2">Chỉnh sửa</th>
			  </tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${ categorys }">
					<tr>
						<td>${ item.name }</td>
						<td>${ item.description }</td>
						<td><a href='<c:url value="/admin/sua-loai-san-pham/${ item.id }"/>'>Sửa</a></td>
						<td><a href='<c:url value="/admin/xoa-loai-san-pham/${ item.id }"/>'>Xóa</a></td>
					</tr>
				</c:forEach>
			</tbody>
		  </table>
	  </div>
</body>