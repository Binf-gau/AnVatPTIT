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
	<decorator:getProperty property="page.script"/>
</body>
</html>