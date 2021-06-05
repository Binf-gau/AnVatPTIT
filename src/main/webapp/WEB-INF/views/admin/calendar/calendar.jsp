<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Lịch làm việc</title>
<body>
	<ol class="breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-angle-right"></i><a href='<c:url value="/admin"/>'>Trang chủ</a> <i class="fa fa-angle-right"></i>Lịch làm việc</li>
    </ol>
    <div class="grids">
		<div class="agile-calendar-grid">
			<div class="page">
				<div class="w3l-calendar-left">
					<div class="calendar-heading">
					</div>
					<div class="monthly" id="mycalendar"></div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</body>