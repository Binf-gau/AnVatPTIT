<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Trang quản trị</title>
<body>
    <!--/content-inner-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><i class="fa fa-angle-right"></i><a href='<c:url value="/admin"/>'>Trang chủ</a></li>
            </ol>
            <!--four-grids here-->
            <div class="four-grids">
                <div class="col-md-3 four-grid">
                    <div class="four-agileits">
                        <div class="icon">
                            <i class="glyphicon glyphicon-user" aria-hidden="true"></i>
                        </div>
                        <div class="four-text">
                            <h3>Người dùng</h3>
                            <h4> ${ totalUsers } </h4>
                        </div>

                    </div>
                </div>
                <div class="col-md-3 four-grid">
                    <div class="four-agileinfo">
                        <div class="icon">
                            <i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
                        </div>
                        <div class="four-text">
                            <h3>Đơn hàng</h3>
                            <h4>${ totalBills }</h4>

                        </div>

                    </div>
                </div>
                <div class="col-md-3 four-grid">
                    <div class="four-w3ls">
                        <div class="icon">
                            <i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>
                        </div>
                        <div class="four-text">
                            <h3>Sản phẩm</h3>
                            <h4>${ totalProducts }</h4>

                        </div>

                    </div>
                </div>
                <div class="col-md-3 four-grid">
                    <div class="four-wthree">
                        <div class="icon">
                            <i class="glyphicon glyphicon-briefcase" aria-hidden="true"></i>
                        </div>
                        <div class="four-text">
                            <h3>Loại sản phẩm</h3>
                            <h4>${ totalCategorys }</h4>

                        </div>

                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!--//four-grids here-->
            <!--agileinfo-grap-->
            <div class="agileinfo-grap">
                <div class="agileits-box">
                    <header class="agileits-box-header clearfix">
                        <h3>Số liệu thống kê</h3>
                        <div class="toolbar">
                            <div class="pull-left">
                                <div class="btn-group">
                                    <a href="#" class="btn btn-default btn-xs">Hàng ngày</a>
                                    <a href="#" class="btn btn-default btn-xs active">Hàng tháng</a>
                                    <a href="#" class="btn btn-default btn-xs">Hàng năm</a>
                                </div>
                            </div>
                            <div class="pull-right">
                                <div class="btn-group">
                                    <a aria-expanded="false" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
Export <i class="fa fa-angle-down"></i>
 </a>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Export as PDF</a></li>
                                        <li><a href="#">Export as CSV</a></li>
                                        <li><a href="#">Export as PNG</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-cog"></i></a>
                            </div>
                        </div>
                    </header>
                    <div class="agileits-box-body clearfix">
                        <div id="hero-area"></div>
                    </div>
                </div>
            </div>
            <!--//agileinfo-grap-->
            <!--photoday-section-->


            <div class="col-sm-4 wthree-crd">
                <div class="card">
                    <div class="card-body">
                        <div class="widget widget-report-table">
                            <header class="widget-header m-b-15">
                            </header>

                            <div class="row m-0 md-bg-grey-100 p-l-20 p-r-20">
                                <div class="col-md-6 col-sm-6 col-xs-6 w3layouts-aug">
                                    <h3>Tháng 6  2021</h3>
                                    <p>BÁO CÁO</p>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6 ">
                                    <h2 class="text-right c-teal f-300 m-t-20"><fmt:formatNumber type="number" groupingUsed="true" value="${ totalRevenueOfMonth }" />₫</h2>
                                </div>
                            </div>

                            <div class="widget-body p-15">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Id Hóa đơn</th>
                                            <th>Khách hàng</th>
                                            <th>Tổng tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="item" items="${ listBillsOfMonth }">
	                                    	<tr>
	                                            <td>${ item.id }</td>
	                                            <td>${ item.display_name }</td>
	                                            <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.total }" />₫</td>
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-contact-list">
                    <div class="agileinfo-cdr">
                        <div class="card-header">
                            <h3>Quản lý</h3>
                        </div>
                        <div class="card-body p-b-20">
                            <div class="list-group">
                                <a class="list-group-item media" href="">
                                    <div class="pull-left">
                                        <img class="lg-item-img" src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt="">
                                    </div>
                                    <div class="media-body">
                                        <div class="pull-left">
                                            <div class="lg-item-heading">Bình</div>
                                            <small class="lg-item-text">nvbnvb13112000@gmail.com</small>
                                        </div>
                                        <div class="pull-right">
                                            <div class="lg-item-heading">CEO</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="col-md-8 agile-info-stat">
                    <div class="stats-info stats-last widget-shadow">
                    	<header class="widget-header">
                                <h4 class="widget-title">Sản phẩm bán chạy</h4>
                        </header>
                        <table class="table stats-table ">
                            <thead>
                                <tr>
                                    <th>Xếp hạng</th>
                                    <th>Sản phẩm</th>
                                    <th>Số lượng đã bán</th>
                                    <th>Tổng tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach var="item" items="${ topSellProducts }">
	                                    	<tr>
	                                    		<th scope="row"><span class="label label-info">Top</span></th>
	                                            <td>${ item.name_product }</td>
	                                            <td><span class="label label-success">${ item.so_luong }<i class="fa fa-level-up"></i></span></td>
	                                            <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.tong_tien }" />₫</td>
	                                        </tr>
								</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            <div class="clearfix"></div>

            <!--//photoday-section-->
            <!--w3-agileits-pane-->
            <div class="w3-agileits-pane">
                <div class="col-sm-4 w3-agileits-crd">
                
            </div>
                
                <div class="clearfix"></div>
            </div>
            <!--//w3-agileits-pane-->
            <!-- script-for sticky-nav -->
            <script>
                $(document).ready(function() {
                    var navoffeset = $(".header-main").offset().top;
                    $(window).scroll(function() {
                        var scrollpos = $(window).scrollTop();
                        if (scrollpos >= navoffeset) {
                            $(".header-main").addClass("fixed");
                        } else {
                            $(".header-main").removeClass("fixed");
                        }
                    });

                });
            </script>
            <!-- /script-for sticky-nav -->
            <!--inner block start here-->
            <div class="inner-block">

            </div>
            <!--inner block end here-->
    <!--//content-inner-->
    
    <div class="clearfix"></div>


</body>