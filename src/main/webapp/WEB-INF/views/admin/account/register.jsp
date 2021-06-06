<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Thêm quản lý</title>
<body>
	<ol class="breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-angle-right"></i><a href='<c:url value="/admin"/>'>Trang chủ</a><i class="fa fa-angle-right"></i>Thêm quản lý</li>
    </ol>
    
    <c:if test="${ not empty messageResponse}">
	    <div class="col-md-4 compose w3layouts">
	            <h2>${messageResponse}</h2>
		</div>
	</c:if>

<!--grid-->
 	<div class="validation-system">
 		
 		<div class="validation-form">
 	<!---->
  	    
        <form:form action="them-quan-ly" method="POST" modelAttribute="admin">  
         	<div class="vali-form">
	            <div class="col-md-6 form-group1">
	              <label class="control-label">Họ và tên đệm</label>
	              <form:input type="text" placeholder="Nhập họ và tên đệm" path="first_name" required="" />
	            </div>
	            <div class="col-md-6 form-group1 form-last">
	              <label class="control-label">Tên</label>
	              <form:input type="text" placeholder="Nhập tên" path="last_name" required="" />
	            </div>
	            <div class="clearfix"> </div>
            </div>
            
            <div class="col-md-12 form-group1 group-mail">
	              <label class="control-label">Email</label>
	              <form:input type="text" placeholder="Nhập email" path="email" required="" />
            </div>
             <div class="clearfix"> </div>
            
            <div class="vali-form vali-form1">
	            <div class="col-md-6 form-group1">
	              <label class="control-label">Mật khẩu</label>
	              <form:input type="password" placeholder="Nhập mật khẩu" path="password" required="" />
	            </div>
	            <div class="clearfix"> </div>
            </div>
            
            <div class="vali-form">
	            <div class="col-md-6 form-group1">
	              <label class="control-label">Số điện thoại</label>
	              <form:input type="text" placeholder="Nhập số điện thoại" path="phone_number" required="" />
	            </div>
	            <div class="col-md-6 form-group1 group-mail">
	              <label class="control-label">CMND/CCCD</label>
	              <form:input type="text" placeholder="Nhập số CMND/CCCD" path="cmnd" required="" />
	            </div>
	            <div class="clearfix"> </div>
            </div>
            
           	<div class="col-md-12 form-group1 ">
              <label class="control-label">Địa chỉ</label>
              <form:textarea placeholder="Nhập địa chỉ" required="" style="margin: 7.1875px 0px 0px; width: 1088px; height: 119px;" path="address" />
            </div>
           
            <div class="col-md-6 form-group1 group-mail">
              <label class="control-label ">Ngày sinh</label>
              <form:input type="Date" class="form-control1 ng-invalid ng-invalid-required" ng-model="model.date" required="" path="birthday" />
            </div>
            <div class="clearfix"> </div>
          
            <div class="col-md-12 form-group">
              <button type="submit" class="btn btn-primary">Submit</button>
              <button type="reset" class="btn btn-default">Reset</button>
            </div>
          <div class="clearfix"> </div>
        </form:form>
    
 	<!---->
 </div>

</div>
 	<!--//grid-->
</body>