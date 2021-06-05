<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
        <title>Sửa sản phẩm</title>

        <body>
        	<ol class="breadcrumb">
                <li class="breadcrumb-item"><i class="fa fa-angle-right"></i><a href='<c:url value="/admin"/>'>Trang chủ</a> <i class="fa fa-angle-right"></i>Sửa sản phẩm</li>
            </ol>
            <div class="grid-form1">
                <div class="tab-content">
                    <div class="tab-pane active" id="horizontal-form">
                        <form:form class="form-horizontal" action="" method="POST" modelAttribute="product">
                            <div class="form-group">
                                <label for="selector1" class="col-sm-2 control-label">Loại sản phẩm</label>
                                <div class="col-sm-8">
                                    <form:select name="selector1" id="selector1" class="form-control1" path="id_category">
                                        <c:forEach var="item" items="${ categorys }">
                                            <form:option value="${ item.id }" label="${ item.name }" />
                                        </c:forEach>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="focusedinput" class="col-sm-2 control-label">Tên sản phẩm</label>
                                <div class="col-sm-8">
                                    <form:input type="text" class="form-control1" id="focusedinput" placeholder="Nhập tên sản phẩm" path="name" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="disabledinput" class="col-sm-2 control-label">Mô tả</label>
                                <div class="col-sm-8">
                                    <form:input type="text" class="form-control1" id="disabledinput" placeholder="Nhập mô tả" path="title" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtarea1" class="col-sm-2 control-label">Chi tiết</label>
                                <div class="col-sm-8">
                                    <form:textarea rows="9" cols="50" class="form-control1" path="details" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword" class="col-sm-2 control-label">Giá bán</label>
                                <div class="col-sm-8">
                                    <form:input type="number" min="0" value="100000" class="form-control1" id="inputPassword" placeholder="Nhập giá bán" path="price" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword" class="col-sm-2 control-label">Giảm giá bao nhiêu %</label>
                                <div class="col-sm-8">
                                    <form:input type="number" min="0" max="100" value="0" class="form-control1" id="inputPassword" placeholder="0" path="sale" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="checkbox" class="col-sm-2 control-label">Có đánh dấu là sản phẩm nổi bật không?</label>
                                <div class="col-sm-8">
                                    <div class="checkbox-inline">
                                        <label><form:checkbox value="1" path="highlight"/></label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="radio" class="col-sm-2 control-label">Có đánh dấu là sản phẩm mới không?</label>
                                <div class="col-sm-8">
                                    <div class="checkbox-inline">
                                        <label><form:checkbox value="1" path="new_product"/></label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword" class="col-sm-2 control-label">Ngày tạo</label>
                                <div class="col-sm-8">
                                    <form:input type="Date" class="form-control1" ng-model="model.date" required="" path="created_at" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile" class="col-sm-2 control-label">Tải ảnh lên đây</label>
                                <div class="col-sm-8">
                                    <form:input type="file" id="exampleInputFile" path="img" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-2">
                                        <button type="submit" class="btn-primary btn">Sửa sản phẩm</button>
                                        <button type="submit" class="btn-default btn">Cancel</button>
                                        <button type="submit" class="btn-inverse btn">Reset</button>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
            <!--//grid-->
        </body>