<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
        <title>Thêm loại sản phẩm</title>

        <body>
        	<ol class="breadcrumb">
                <li class="breadcrumb-item"><i class="fa fa-angle-right"></i><a href='<c:url value="/admin"/>'>Trang chủ</a> <i class="fa fa-angle-right"></i>Thêm loại sản phẩm</li>
            </ol>
            
            <c:if test="${ not empty messageResponse}">
			    <ol class="breadcrumb">
                	<li class="breadcrumb-item compose w3layouts"> <h2>${messageResponse}</h2></li>
            	</ol>
            </c:if>
            
            <div class="grid-form1">
                <div class="tab-content">
                    <div class="tab-pane active" id="horizontal-form">
                        <form:form class="form-horizontal" action="them-loai-san-pham" method="POST" modelAttribute="category">
                        	<div class="form-group">
                                <label for="focusedinput" class="col-sm-2 control-label">Tên loại sản phẩm</label>
                                <div class="col-sm-8">
                                    <form:input type="text" class="form-control1" id="focusedinput" placeholder="Nhập tên loại sản phẩm" path="name" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="disabledinput" class="col-sm-2 control-label">Miêu tả loại sản phẩm</label>
                                <div class="col-sm-8">
                                    <form:input type="text" class="form-control1" id="disabledinput" placeholder="Nhập miêu tả loại sản phẩm" path="description" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-2">
                                        <button type="submit" class="btn-primary btn">Thêm loại sản phẩm</button>
                                        <button type="reset" class="btn-inverse btn">Reset</button>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </body>