<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%> 
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title><decorator:title default="Master-layout"/></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Bootstrap Core CSS -->
	<link href="<c:url value="/assets/admin/css/bootstrap.min.css" />" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
	<link href="<c:url value="/assets/admin/css/style.css" />" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="<c:url value="/assets/admin/css/morris.css" />" type="text/css"/>
	<!-- Graph CSS -->
	<link href="<c:url value="/assets/admin/css/font-awesome.css" />" rel="stylesheet"> 
	<!-- jQuery -->
	<script src="<c:url value="/assets/admin/js/jquery-2.1.4.min.js"/>" > </script>
	<!-- //jQuery -->
	<!-- calendar -->
	<link rel="stylesheet" href="<c:url value="/assets/admin/css/monthly.css" />">
	<!-- //calendar -->
	<!-- tables -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/css/table-style.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/css/basictable.css" />" />
	<script type="text/javascript" src="<c:url value="/assets/admin/js/jquery.basictable.min.js"/>" ></script>
	<script type="text/javascript">
	    $(document).ready(function() {
	      $('#table').basictable();
	
	      $('#table-breakpoint').basictable({
	        breakpoint: 768
	      });
	
	      $('#table-swap-axis').basictable({
	        swapAxis: true
	      });
	
	      $('#table-force-off').basictable({
	        forceResponsive: false
	      });
	
	      $('#table-no-resize').basictable({
	        noResize: true
	      });
	
	      $('#table-two-axis').basictable();
	
	      $('#table-max-height').basictable({
	        tableWrapper: true
	      });
	    });
	</script>
	<!-- //tables -->
	<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<!-- lined-icons -->
	<link rel="stylesheet" href="<c:url value="/assets/admin/css/icon-font.min.css" />" type='text/css' />
	<!-- //lined-icons -->
	
	<style>
	.pagination {	
		display: flex;
		justify-content: center;
	}
	
	.pagination a {
		color: black;
		float: left;
		padding: 8px 16px;
		text-decoration: none;
		transition: background-color .3s;
		border: 1px solid #ddd;
	}
	
	.pagination a.active {
		background-color: #4CAF50;
		color: white;
		border: 1px solid #4CAF50;
	}
	
	.pagination a:hover:not (.active ) {
		background-color: #ddd;
	}
	</style>

	<!-- Favicons -->
	<link rel="shortcut icon" href="<c:url value="/assets/user/ico/favicon.ico" />">
	<decorator:head/>
</head>
<body>

	<div class="page-container">
		<div class="left-content">
			<div class="mother-grid-inner">
				<%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>
				<decorator:body/>
	            <div class="copyrights">
	                <p>© 2021 Pooled. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
	            </div>
			</div>
		</div>
		<%@include file="/WEB-INF/views/layouts/admin/menus.jsp" %>
	</div>
	
	<script>
        var toggle = true;

        $(".sidebar-icon").click(function() {
            if (toggle) {
                $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                $("#menu span").css({
                    "position": "absolute"
                });
            } else {
                $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                setTimeout(function() {
                    $("#menu span").css({
                        "position": "relative"
                    });
                }, 400);
            }

            toggle = !toggle;
        });
       
    </script>
    
  	<!--js -->
   	<script src="<c:url value="/assets/admin/js/jquery.nicescroll.js"/>" ></script>
   	<script src="<c:url value="/assets/admin/js/scripts.js"/>" ></script>
   	<!-- Bootstrap Core JavaScript -->
   	   <script src="<c:url value="/assets/admin/js/bootstrap.min.js"/>" ></script>
   	   <!-- /Bootstrap Core JavaScript -->	
   	   <!-- calendar -->
	<script type="text/javascript" src="<c:url value="/assets/admin/js/monthly.js"/>"></script>
	<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				
			});

			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				setWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});

		switch(window.location.protocol) {
		case 'http:':
		case 'https:':
		// running on a server, should be good.
		break;
		case 'file:':
		alert('Just a heads-up, events will not work when run locally.');
		}

		});
	</script>
	<!-- //calendar -->  
   	<!-- morris JavaScript -->	
   	<script src="<c:url value="/assets/admin/js/raphael-min.js"/>" ></script>
   	<script src="<c:url value="/assets/admin/js/morris.js"/>" ></script>
    <script>
        $(document).ready(function() {
            //BOX BUTTON SHOW AND CLOSE
            jQuery('.small-graph-box').hover(function() {
                jQuery(this).find('.box-button').fadeIn('fast');
            }, function() {
                jQuery(this).find('.box-button').fadeOut('fast');
            });
            jQuery('.small-graph-box .box-close').click(function() {
                jQuery(this).closest('.small-graph-box').fadeOut(200);
                return false;
            });

            //CHARTS
            function gd(year, day, month) {
                return new Date(year, month - 1, day).getTime();
            }

            graphArea2 = Morris.Area({
                element: 'hero-area',
                padding: 10,
                behaveLikeLine: true,
                gridEnabled: false,
                gridLineColor: '#dddddd',
                axes: true,
                resize: true,
                smooth: true,
                pointSize: 0,
                lineWidth: 0,
                fillOpacity: 0.85,
                data: [{
                    period: '2014 Q1',
                    iphone: 2668,
                    ipad: null,
                    itouch: 2649
                }, {
                    period: '2014 Q2',
                    iphone: 15780,
                    ipad: 13799,
                    itouch: 12051
                }, {
                    period: '2014 Q3',
                    iphone: 12920,
                    ipad: 10975,
                    itouch: 9910
                }, {
                    period: '2014 Q4',
                    iphone: 8770,
                    ipad: 6600,
                    itouch: 6695
                }, {
                    period: '2015 Q1',
                    iphone: 10820,
                    ipad: 10924,
                    itouch: 12300
                }, {
                    period: '2015 Q2',
                    iphone: 9680,
                    ipad: 9010,
                    itouch: 7891
                }, {
                    period: '2015 Q3',
                    iphone: 4830,
                    ipad: 3805,
                    itouch: 1598
                }, {
                    period: '2015 Q4',
                    iphone: 15083,
                    ipad: 8977,
                    itouch: 5185
                }, {
                    period: '2016 Q1',
                    iphone: 10697,
                    ipad: 4470,
                    itouch: 2038
                }, {
                    period: '2016 Q2',
                    iphone: 8442,
                    ipad: 5723,
                    itouch: 1801
                }],
                lineColors: ['#ff4a43', '#a2d200', '#22beef'],
                xkey: 'period',
                redraw: true,
                ykeys: ['iphone', 'ipad', 'itouch'],
                labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
                pointSize: 2,
                hideHover: 'auto',
                resize: true
            });


        });
    </script>
	<decorator:getProperty property="page.script"/>
</body>
</html>