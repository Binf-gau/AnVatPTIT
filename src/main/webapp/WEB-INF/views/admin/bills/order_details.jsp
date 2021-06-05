<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Quản lý đơn hàng</title>
<body>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-angle-right"></i><a href='<c:url value="/admin"/>'>Trang chủ</a> <i class="fa fa-angle-right"></i>Đơn hàng</li>
   	</ol>
   	<div class="agile-tables">
	   	<table id="table-two-axis" class="two-axis">
			<thead>
			  <tr>
				<th>Khách hàng</th>
				<th>Ngày tạo</th>
				<th>Địa chỉ</th>
				<th>Tổng tiền</th>
				<th>Trạng thái</th>
				<th>Xác nhận</th>
			  </tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${ bills }">
					<tr>
						<td><a href="#"><span class="prfil-img"><img src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt=""></span>${ item.display_name }</a></td>
						<td>${ item.created_at }</td>
						<td>${ item.address }</td>
						<td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.total }" />₫</td>
						<form:form action="confirm/${item.getId()}" method="POST" modelAttribute="status" class="form-horizontal">
							<td>
								<form:select name="selector1" id="selector1" class="form-control1" path="id">
		                              <c:forEach var="item_status" items="${ liststatus }">
		                              	  <c:if test="${item.getId_status() == item_status.getId()}">
		                                  	<form:option selected="selected" value="${ item_status.id }" label="${ item_status.name }" />
		                                  </c:if>
		                                  <c:if test="${item.getId_status() != item_status.getId()}">
		                                  	<form:option value="${ item_status.id }" label="${ item_status.name }" />
		                                  </c:if>
		                              </c:forEach>
		                        </form:select>
		                    </td>
		                    <td><input type="submit" value="Thay đổi" class="shopBtn exclusive"></td>
	                    </form:form>
					</tr>
				</c:forEach>
			</tbody>
		  </table>
	</div>
</body>
