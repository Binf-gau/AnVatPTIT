<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<!--header start here-->
                <div class="header-main">
                    <div class="logo-w3-agile">
                        <h1><a href='<c:url value="/"/>'>ĂN VẶT PTIT</a></h1>
                    </div>
                    <div class="w3layouts-left">

                        <!--search-box-->
                        <div class="w3-search-box">
                            <form action="#" method="post">
                                <input type="text" placeholder="Tìm kiếm..." required="">
                                <input type="submit" value="">
                            </form>
                        </div>
                        <!--//end-search-box-->
                        <div class="clearfix"> </div>
                    </div>
                    <div class="w3layouts-right">
                        <div class="profile_details_left">
                            <!--notifications of menu start -->
                            <ul class="nofitications-dropdown">
                                <li class="dropdown head-dpdn">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="notification_header">
                                                <h3>Bạn có 3 tin nhắn mới</h3>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="user_img"><img src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt=""></div>
                                                <div class="notification_desc">
                                                    <p>Ngô Sĩ Tiến</p>
                                                    <p><span>50 phút trước</span></p>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li class="odd">
                                            <a href="#">
                                                <div class="user_img"><img src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt=""></div>
                                                <div class="notification_desc">
                                                    <p>Phan Thị Trang </p>
                                                    <p><span>2 giờ  trước</span></p>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="user_img"><img src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt=""></div>
                                                <div class="notification_desc">
                                                    <p>Bùi Tấn Sang</p>
                                                    <p><span>6 giờ trước</span></p>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="notification_bottom">
                                                <a href="#">Xem tất cả tin nhắn</a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown head-dpdn">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="notification_header">
                                                <h3>Bạn có 3 thông báo mới</h3>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="user_img"><img src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt=""></div>
                                                <div class="notification_desc">
                                                    <p>Có 1 đơn hàng mới</p>
                                                    <p><span>58 phút trước</span></p>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li class="odd">
                                            <a href="#">
                                                <div class="user_img"><img src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt=""></div>
                                                <div class="notification_desc">
                                                    <p>Có 1 đơn hàng mới</p>
                                                    <p><span>1 giờ trước</span></p>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="user_img"><img src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt=""></div>
                                                <div class="notification_desc">
                                                    <p>Có 1 đơn hàng mới</p>
                                                    <p><span>10 giờ trước</span></p>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="notification_bottom">
                                                <a href="#">Xem tất cả thông báo</a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown head-dpdn">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">9</span></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="notification_header">
                                                <h3>Bạn có 9 việc cần làm</h3>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="task-info">
                                                    <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="progress progress-striped active">
                                                    <div class="bar yellow" style="width:40%;"></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="task-info">
                                                    <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="progress progress-striped active">
                                                    <div class="bar green" style="width:90%;"></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="task-info">
                                                    <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="progress progress-striped active">
                                                    <div class="bar red" style="width: 33%;"></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="task-info">
                                                    <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="progress progress-striped active">
                                                    <div class="bar  blue" style="width: 80%;"></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="notification_bottom">
                                                <a href="#">Xem tất cả danh sách cần làm</a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <div class="clearfix"> </div>
                            </ul>
                            <div class="clearfix"> </div>
                        </div>
                        <!--notification menu end -->

                        <div class="clearfix"> </div>
                    </div>
                    <div class="profile_details w3l">
                        <ul>
                            <li class="dropdown profile_details_drop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <div class="profile_img">
                                        <span class="prfil-img"><img src="<c:url value="/assets/user/img/avata/avt.jpg"/>" alt=""> </span>
                                        <div class="user-name">
                                            <p>${ AdminInfo.last_name }</p>
                                            <span>Quản trị viên</span>
                                        </div>
                                        <i class="fa fa-angle-down"></i>
                                        <i class="fa fa-angle-up"></i>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                                <ul class="dropdown-menu drp-mnu">
                                    <li> <a href="#"><i class="fa fa-cog"></i> Cài đặt</a> </li>
                                    <li> <a href="#"><i class="fa fa-user"></i> Thông tin</a> </li>
                                    <li> <a href="logout"><i class="fa fa-sign-out"></i> Đăng xuất</a> </li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <div class="clearfix"> </div>
                </div>
                <!--heder end here-->