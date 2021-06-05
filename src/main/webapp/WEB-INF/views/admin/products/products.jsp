<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Sản phẩm</title>
<body>
	<ol class="breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-angle-right"></i><a href='<c:url value="/admin"/>'>Trang chủ</a><i class="fa fa-angle-right"></i>Sản phẩm <i class="fa fa-angle-right"></i>${ category.name }</li>
    </ol>
	<div>
		<table id="table">
			<thead>
				<tr>
					<th>Hình ảnh</th>
					<th>Tên sản phẩm</th>
					<th>Giá bán</th>
					<th colspan="2">Chỉnh sửa</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="item" items="${ productsPaginate }">
					<tr>
						<td><img width="100"
							src="<c:url value="/assets/user/img/${ item.img }"/>" alt=""></td>
						<td>${ item.name }</td>
						<td><fmt:formatNumber type="number" groupingUsed="true"
								value="${ item.price }" /> ₫</td>
						<td>
							<a href="<c:url value="/admin/sua-san-pham/${ item.id_product }"/>" class="">Sửa</a>									
						</td>
						<td>
							<a href="<c:url value="/admin/xoa-san-pham/${ item.id_product }"/>" class="">Xóa</a>								
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

		<div class="pagination">
			<c:forEach var="item" begin="1" end="${ paginateInfo.totalPage }"
				varStatus="loop">
				<c:if test="${ (loop.index) == paginateInfo.currentPage }">
					<a
						href="<c:url value="/admin/san-pham/${ idCategory }/${ loop.index }"/>"
						class="active">${ loop.index }</a>
				</c:if>
				<c:if test="${ (loop.index) != paginateInfo.currentPage }">
					<a
						href="<c:url value="/admin/san-pham/${ idCategory }/${ loop.index }"/>">${ loop.index }</a>
				</c:if>
			</c:forEach>
		</div>
	</div>
</body>