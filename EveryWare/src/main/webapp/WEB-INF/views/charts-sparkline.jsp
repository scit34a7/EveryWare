<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Sparkline Charts | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="resources/assets/css/main.css">
		<link rel="stylesheet" href="resources/assets/css/skins/sidebar-nav-darkgray.css" type="text/css">
		<link rel="stylesheet" href="resources/assets/css/skins/navbar3.css" type="text/css">
		<!-- FOR DEMO PURPOSES ONLY. You should/may remove this in your project -->
		<link rel="stylesheet" href="resources/assets/css/demo.css">
		<link rel="stylesheet" href="resources/demo-panel/style-switcher.css">
		<!-- ICONS -->
		<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" sizes="96x96" href="resources/assets/img/favicon.png">
	</head>
	<body>
		<!-- WRAPPER -->
		<div id="wrapper">
			<!-- NAVBAR -->
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="brand">
					<a href="index">
						<img src="resources/assets/img/logo-white.png" alt="Klorofil Pro Logo" class="img-responsive logo">
					</a>
				</div>
				<div class="container-fluid">
					<div id="tour-fullwidth" class="navbar-btn">
						<button type="button" class="btn-toggle-fullwidth"><i class="ti-arrow-circle-left"></i></button>
					</div>
					<form class="navbar-form navbar-left search-form">
						<input type="text" value="" class="form-control" placeholder="Search dashboard...">
						<button type="button" class="btn btn-default"><i class="fa fa-search"></i></button>
					</form>
					<div id="navbar-menu">
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="#" class="btn-toggle-rightsidebar">
									<i class="ti-layout-sidebar-right"></i>
								</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
									<i class="ti-bell"></i>
									<span class="badge bg-danger">5</span>
								</a>
								<ul class="dropdown-menu notifications">
									<li>You have 5 new notifications</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-hdd-o custom-bg-red"></i>
											<p>
												<span class="text">System space is almost full</span>
												<span class="timestamp">11 minutes ago</span>
											</p>
										</a>
									</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-tasks custom-bg-yellow"></i>
											<p>
												<span class="text">You have 9 unfinished tasks</span>
												<span class="timestamp">20 minutes ago</span>
											</p>
										</a>
									</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-book custom-bg-green2"></i>
											<p>
												<span class="text">Monthly report is available</span>
												<span class="timestamp">1 hour ago</span>
											</p>
										</a>
									</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-bullhorn custom-bg-purple"></i>
											<p>
												<span class="text">Weekly meeting in 1 hour</span>
												<span class="timestamp">2 hours ago</span>
											</p>
										</a>
									</li>
									<li>
										<a href="#" class="notification-item">
											<i class="fa fa-check custom-bg-green"></i>
											<p>
												<span class="text">Your request has been approved</span>
												<span class="timestamp">3 days ago</span>
											</p>
										</a>
									</li>
									<li><a href="#" class="more">See all notifications</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" id="tour-help" class="dropdown-toggle" data-toggle="dropdown"><i class="ti-help"></i> <span class="hide">Help</span></a>
								<ul class="dropdown-menu">
									<li><a href="#"><i class="ti-direction"></i> Basic Use</a></li>
									<li><a href="#"><i class="ti-server"></i> Working With Data</a></li>
									<li><a href="#"><i class="ti-lock"></i> Security</a></li>
									<li><a href="#"><i class="ti-light-bulb"></i> Troubleshooting</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<img src="resources/assets/img/user.png" alt="Avatar">
									<span>Samuel</span>
								</a>
								<ul class="dropdown-menu logged-user-menu">
									<li><a href="#"><i class="ti-user"></i> <span>My Profile</span></a></li>
									<li><a href="appviews-inbox"><i class="ti-email"></i> <span>Message</span></a></li>
									<li><a href="#"><i class="ti-settings"></i> <span>Settings</span></a></li>
									<li><a href="page-lockscreen"><i class="ti-power-off"></i> <span>Logout</span></a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- END NAVBAR -->
			<!-- LEFT SIDEBAR -->
			<div id="sidebar-nav" class="sidebar">
				<nav>
					<ul class="nav" id="sidebar-nav-menu">
						<li class="menu-group">Main</li>
						<li class="panel">
							<a href="#dashboards" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-dashboard"></i> <span class="title">Dashboards</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="dashboards" class="collapse ">
								<ul class="submenu">
									<li><a href="index">Dashboard v1 <span class="label label-info">UPDATED</span></a></li>
									<li><a href="dashboard2">Dashboard v2</a></li>
									<li><a href="dashboard3">Dashboard v3</a></li>
									<li><a href="dashboard4">Dashboard v4 <span class="label label-success">NEW</span></a></li>
								</ul>
							</div>
						</li>
						<li class="panel">
							<a href="#subLayouts" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-layout"></i> <span class="title">Layouts</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="subLayouts" class="collapse ">
								<ul class="submenu">
									<li><a href="layout-topnav">Top Navigation <span class="label label-success">NEW</span></a></li>
									<li><a href="layout-minified">Minified</a></li>
									<li><a href="layout-fullwidth">Fullwidth</a></li>
									<li><a href="layout-default">Default</a></li>
									<li><a href="layout-grid">Grid</a></li>
								</ul>
							</div>
						</li>
						<li class="panel">
							<a href="#forms" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-receipt"></i> <span class="title">Forms</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="forms" class="collapse ">
								<ul class="submenu">
									<li><a href="forms-inputs">Inputs</a></li>
									<li><a href="forms-multiselect">Multiselect</a></li>
									<li><a href="forms-input-pickers">Input Pickers</a></li>
									<li><a href="forms-input-sliders">Input Sliders</a></li>
									<li><a href="forms-select2">Select2</a></li>
									<li><a href="forms-xeditable">In-place Editing</a></li>
									<li><a href="forms-dragdropupload">Drag and Drop Upload</a></li>
									<li><a href="forms-layouts">Form Layouts</a></li>
									<li><a href="forms-validation">Form Validation</a></li>
									<li><a href="forms-texteditor">Text Editor</a></li>
								</ul>
							</div>
						</li>
						<li class="panel">
							<a href="#appViews" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-layout-tab-window"></i> <span class="title">App Views</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="appViews" class="collapse ">
								<ul class="submenu">
									<li><a href="appviews-project-detail">Project Details</a></li>
									<li><a href="appviews-projects">Projects</a></li>
									<li><a href="appviews-inbox">Inbox <span class="badge">8</span></a></li>
									<li><a href="appviews-file-manager">File Manager</a></li>
								</ul>
							</div>
						</li>
						<li class="panel">
							<a href="#tables" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-layout-grid2"></i> <span class="title">Tables</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="tables" class="collapse ">
								<ul class="submenu">
									<li><a href="tables-static">Static Tables</a></li>
									<li><a href="tables-dynamic">Dynamic Tables</a></li>
								</ul>
							</div>
						</li>
						<li class="menu-group">Components</li>
						<li class="panel">
							<a href="#uiElements" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-panel"></i> <span class="title">UI Elements</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="uiElements" class="collapse ">
								<ul class="submenu">
									<li><a href="ui-sweetalert">Sweet Alert</a></li>
									<li><a href="ui-treeview">Tree View</a></li>
									<li><a href="ui-wizard">Wizard</a></li>
									<li><a href="ui-dragdrop-panel">Drag &amp; Drop Panel</a></li>
									<li><a href="ui-nestable">Nestable</a></li>
									<li><a href="ui-gauge">Gauge <span class="label label-success">NEW</span></a></li>
									<li><a href="ui-panels">Panels</a></li>
									<li><a href="ui-progressbars">Progress Bars</a></li>
									<li><a href="ui-tabs">Tabs</a></li>
									<li><a href="ui-buttons">Buttons <span class="label label-info">UPDATED</span></a></li>
									<li><a href="ui-bootstrap">Bootstrap UI</a></li>
									<li><a href="ui-social-buttons">Social Buttons</a></li>
									<li><a href="ui-icons">Icons</a></li>
								</ul>
							</div>
						</li>
						<li class="panel">
							<a href="#charts" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="active"><i class="ti-pie-chart"></i> <span class="title">Charts</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="charts" class="collapse in">
								<ul class="submenu">
									<li><a href="charts-chartjs">Chart.js</a></li>
									<li><a href="charts-chartist">Chartist</a></li>
									<li><a href="charts-flot">Flot Chart</a></li>
									<li><a href="charts-sparkline" class="active">Sparkline Chart</a></li>
								</ul>
							</div>
						</li>
						<li><a href="widgets"><i class="ti-widget"></i> <span class="title">Widgets</span></a></li>
						<li><a href="notifications"><i class="ti-bell"></i> <span class="title">Notifications</span> <span class="badge">15</span></a></li>
						<li class="panel">
							<a href="#maps" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-map"></i> <span class="title">Maps</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="maps" class="collapse ">
								<ul class="submenu">
									<li><a href="maps-jqvmap">JQVMap</a></li>
									<li><a href="maps-mapael">Mapael</a></li>
								</ul>
							</div>
						</li>
						<li class="menu-group">Extras</li>
						<li class="panel">
							<a href="#subPages" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-files"></i> <span class="title">Pages</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="submenu">
									<li><a href="page-profile">Profile</a></li>
									<li><a href="page-login">Login</a></li>
									<li><a href="page-register">Register</a></li>
									<li><a href="page-lockscreen">Lockscreen</a></li>
									<li><a href="page-forgot-password">Forgot Password</a></li>
									<li><a href="page-404">Page 404</a></li>
									<li><a href="page-500">Page 500</a></li>
									<li><a href="page-blank">Blank Page</a></li>
								</ul>
							</div>
						</li>
						<li><a href="typography"><i class="ti-paragraph"></i> <span class="title">Typography</span></a></li>
						<li class="panel">
							<a href="#" data-toggle="collapse" data-target="#submenuDemo" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-menu"></i> <span class="title">Multilevel Menu</span><i class="icon-submenu ti-angle-left"></i></a>
							<div id="submenuDemo" class="collapse">
								<ul class="submenu">
									<li class="panel">
										<a href="#" data-toggle="collapse" data-target="#submenuDemoLv2" class="collapsed">Submenu 1 <i class="icon-submenu ti-angle-left"></i></a>
										<div id="submenuDemoLv2" class="collapse">
											<ul class="submenu">
												<li><a href="#">Another menu level</a></li>
												<li><a href="#" class="active">Another menu level</a></li>
												<li><a href="#">Another menu level</a></li>
											</ul>
										</div>
									</li>
									<li><a href="#">Submenu 2</a></li>
									<li><a href="#">Submenu 3</a></li>
								</ul>
							</div>
						</li>
					</ul>
					<button type="button" class="btn-toggle-minified" title="Toggle Minified Menu"><i class="ti-arrows-horizontal"></i></button>
				</nav>
			</div>
			<!-- END LEFT SIDEBAR -->
			<!-- MAIN -->
			<div class="main">
				<!-- MAIN CONTENT -->
				<div class="main-content">
					<div class="content-heading clearfix">
						<div class="heading-left">
							<h1 class="page-title">Sparkline Charts</h1>
							<p class="page-subtitle">Small inline charts.</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">Charts</a></li>
							<li class="active">Sparkline Charts</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<!-- MINI LINE CHARTS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Mini Line Chart</h3>
										<p>Mouse over the chart to see the tooltip</p>
									</div>
									<div class="panel-body">
										<span class="inlinesparkline" id="demo-sparkline-line1">26,68,35,38,53,95,114,87,114</span>
										&nbsp;&nbsp;&nbsp;
										<span class="inlinesparkline" id="demo-sparkline-line2">9,43,50,36,95,41,69,113,50</span>
										&nbsp;&nbsp;&nbsp;
										<span class="inlinesparkline" id="demo-sparkline-line3">5,43,66,73,50,102,40,92,59</span>
										&nbsp;&nbsp;&nbsp;
										<span class="inlinesparkline" id="demo-sparkline-line4">14,89,16,35,63,63,64,124,100</span>
										&nbsp;&nbsp;&nbsp;
										<span class="inlinesparkline" id="demo-sparkline-line5">38,13,36,62,98,48,93,60,75</span>
										<br>
										<br>
										<br>
										<span class="inlinesparkline" id="demo-sparkline-line6">Loading...</span>
										&nbsp;&nbsp;&nbsp;
										<span class="inlinesparkline" id="demo-sparkline-line7">Loading...</span>
										&nbsp;&nbsp;&nbsp;
										<span class="inlinesparkline" id="demo-sparkline-line8">Loading...</span>
										&nbsp;&nbsp;&nbsp;
										<span class="inlinesparkline" id="demo-sparkline-line9">Loading...</span>
										&nbsp;&nbsp;&nbsp;
										<span class="inlinesparkline" id="demo-sparkline-line10">Loading...</span>
										<div class="margin-bottom-30"></div>
										<p>Composite Inline</p>
										<span id="demo-sparkline-compositeline">8,4,0,0,0,0,1,4,4,10,10,10,10,0,0,0,4,6,5,9,10</span>
									</div>
								</div>
								<!-- END MINI LINE CHARTS -->
								<!-- MINI BAR CHARTS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Mini Bar Chart</h3>
									</div>
									<div class="panel-body">
										<span id="mini-bar-chart1" class="mini-bar-chart"></span>
										&nbsp;&nbsp;&nbsp;
										<span id="mini-bar-chart2" class="mini-bar-chart"></span>
										&nbsp;&nbsp;&nbsp;
										<span id="mini-bar-chart3" class="mini-bar-chart"></span>
										&nbsp;&nbsp;&nbsp;
										<span id="mini-bar-chart4" class="mini-bar-chart"></span>
										&nbsp;&nbsp;&nbsp;
										<span id="mini-bar-chart5" class="mini-bar-chart"></span>
										<div class="margin-bottom-30"></div>
										<div class="row">
											<div class="col-md-4">
												<p>Negative values</p>
												<span id="mini-bar-negative" class="mini-bar-chart">25, -10, 15, 35, -15, -5, 10, 20, 15</span>
											</div>
											<div class="col-md-4">
												<p>Stacked</p>
												<span id="mini-bar-stacked" class="mini-bar-chart">2:4, 5:7, 2:9, 4:8, 3:10, 4:10, 3:6, 5:8, 2:3</span>
											</div>
											<div class="col-md-4">
												<p>Composite Bar</p>
												<span id="demo-sparkline-compositebar">4,6,7,7,4,3,2,1,4</span>
											</div>
										</div>
									</div>
								</div>
								<!-- END MINI BAR CHARTS -->
								<!-- MINI PIE CHARTS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Mini Pie Chart</h3>
									</div>
									<div class="panel-body">
										<span id="mini-pie-chart1">30, 15, 55</span>
										&nbsp;&nbsp;&nbsp;
										<span id="mini-pie-chart2">65, 25, 10</span>
										&nbsp;&nbsp;&nbsp;
										<span id="mini-pie-chart3">70, 30</span>
									</div>
								</div>
								<!-- END MINI PIE CHARTS -->
							</div>
							<div class="col-md-6">
								<!-- SIMPLE STAT -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Simple Stat</h3>
									</div>
									<div class="panel-body">
										<!-- sparkline stat medium -->
										<div class="row">
											<div class="col-md-6">
												<div class="sparkline-stat-medium">
													<div class="info">
														<span>Visits</span>
														<strong>1,363</strong>
													</div>
													<span id="sparkline-stat1" class="inlinesparkline">Loading...</span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="sparkline-stat-medium">
													<div class="info">
														<span>Unique Visitors</span>
														<strong>1,221</strong>
													</div>
													<span id="sparkline-stat2" class="inlinesparkline">Loading...</span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="sparkline-stat-medium">
													<div class="info">
														<span>Page Views</span>
														<strong>2,300</strong>
													</div>
													<span id="sparkline-stat3" class="inlinesparkline">Loading...</span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="sparkline-stat-medium">
													<div class="info">
														<span>Pages/Visit</span>
														<strong>1.19</strong>
													</div>
													<span id="sparkline-stat4" class="inlinesparkline">Loading...</span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="sparkline-stat-medium">
													<div class="info">
														<span>Avg. Visit Duration</span>
														<strong>00:00:30</strong>
													</div>
													<span id="sparkline-stat5" class="inlinesparkline">Loading...</span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="sparkline-stat-medium">
													<div class="info">
														<span>% New Visits</span>
														<strong>28.35%</strong>
													</div>
													<span id="sparkline-stat6" class="inlinesparkline">Loading...</span>
												</div>
											</div>
										</div>
										<!-- end sparkline stat medium -->
										<div class="margin-bottom-30"></div>
										<!-- sparkline stat big -->
										<div class="sparkline-stat-big clearfix">
											<div class="summary">
												<span class="big-number">260</span>
												<span class="text-right">New Orders
													<br>3% <i class="fa fa-caret-up"></i></span>
											</div>
											<div id="sparkline-stat-big1" class="inlinesparkline">340, 837, 645, 393, 412, 324, 465, 643, 987</div>
										</div>
										<!-- end sparkline stat big -->
										<div class="margin-bottom-50"></div>
										<!-- mini bar stat -->
										<div class="row">
											<div class="col-md-4">
												<div class="sparkbar-stat-item">
													<span>LIKES
														<span class="stat-value">
															<br><i class="fa fa-plus-circle"></i> 81,450</span>
													</span>
													<span id="sparkbar-chart1" class="mini-bar-chart"></span>
												</div>
											</div>
											<div class="col-md-4">
												<div class="sparkbar-stat-item">
													<span>SUBSCRIBERS
														<span class="stat-value">
															<br><i class="fa fa-plus-circle"></i> 211,530</span>
													</span>
													<span id="sparkbar-chart2" class="mini-bar-chart"></span>
												</div>
											</div>
											<div class="col-md-4">
												<div class="sparkbar-stat-item">
													<span>CUSTOMERS
														<span class="stat-value">
															<br><i class="fa fa-plus-circle"></i> 64,957</span>
													</span>
													<span id="sparkbar-chart3" class="mini-bar-chart"></span>
												</div>
											</div>
										</div>
										<!-- end mini bar stat -->
									</div>
								</div>
								<!-- END SIMPLE STAT -->
							</div>
						</div>
					</div>
				</div>
				<!-- END MAIN CONTENT -->
				<!-- RIGHT SIDEBAR -->
				<div id="sidebar-right" class="right-sidebar">
					<div class="sidebar-widget">
						<h4 class="widget-heading"><i class="fa fa-calendar"></i> TODAY</h4>
						<p class="date">Wednesday, 22 December</p>
						<div class="row margin-top-30">
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-blue first">
										<i class="fa fa-tasks"></i>
										<span>Tasks</span>
										<span class="badge">5</span>
									</div>
								</a>
							</div>
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-green">
										<i class="fa fa-envelope"></i>
										<span>Mail</span>
										<span class="badge">12</span>
									</div>
								</a>
							</div>
							<div class="col-xs-4">
								<a href="#">
									<div class="icon-transparent-area custom-color-orange last">
										<i class="fa fa-user-plus"></i>
										<span>Users</span>
										<span class="badge">24</span>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="sidebar-widget">
						<div class="widget-header">
							<h4 class="widget-heading">YOUR APPS</h4>
							<a href="#" class="show-all">Show all</a>
						</div>
						<div class="row">
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="Dropbox" data-toggle="tooltip" data-placement="top">
									<i class="fa fa-dropbox dropbox-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="WordPress" data-toggle="tooltip" data-placement="top">
									<i class="fa fa-wordpress wordpress-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="Drupal" data-toggle="tooltip" data-placement="top">
									<i class="fa fa-drupal drupal-color"></i>
								</a>
							</div>
							<div class="col-xs-3">
								<a href="#" class="icon-app" title="Github" data-toggle="tooltip" data-placement="top">
									<i class="fa fa-github github-color"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="sidebar-widget">
						<div class="widget-header">
							<h4 class="widget-heading">MY PROJECTS</h4>
							<a href="#" class="show-all">Show all</a>
						</div>
						<ul class="list-unstyled list-project-progress">
							<li>
								<a href="#" class="project-name">Project XY</a>
								<div class="progress progress-xs progress-transparent custom-color-orange">
									<div class="progress-bar" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="width:67%"></div>
								</div>
								<span class="percentage">67%</span>
							</li>
							<li>
								<a href="#" class="project-name">Growth Campaign</a>
								<div class="progress progress-xs progress-transparent custom-color-blue">
									<div class="progress-bar" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width:23%"></div>
								</div>
								<span class="percentage">23%</span>
							</li>
							<li>
								<a href="#" class="project-name">Website Redesign</a>
								<div class="progress progress-xs progress-transparent custom-color-green">
									<div class="progress-bar" role="progressbar" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100" style="width:87%"></div>
								</div>
								<span class="percentage">87%</span>
							</li>
						</ul>
					</div>
					<div class="sidebar-widget">
						<div class="widget-header">
							<h4 class="widget-heading">MY FILES</h4>
							<a href="#" class="show-all">Show all</a>
						</div>
						<ul class="list-unstyled list-justify list-file-simple">
							<li><a href="#"><i class="fa fa-file-word-o"></i>Proposal_draft.docx</a>
								<span>4 MB</span>
							</li>
							<li><a href="#"><i class="fa fa-file-pdf-o"></i>Manual_Guide.pdf</a>
								<span>20 MB</span>
							</li>
							<li><a href="#"><i class="fa fa-file-zip-o"></i>all-project-files.zip</a>
								<span>315 MB</span>
							</li>
							<li><a href="#"><i class="fa fa-file-excel-o"></i>budget_estimate.xls</a>
								<span>1 MB</span>
							</li>
						</ul>
					</div>
					<p class="text-center"><a href="#" class="btn btn-default btn-xs">More Widgets</a></p>
				</div>
				<!-- END RIGHT SIDEBAR -->
			</div>
			<!-- END MAIN -->
			<div class="clearfix"></div>
			<footer>
				<div class="container-fluid">
					<p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
				</div>
			</footer>
		</div>
		<!-- END WRAPPER -->
		<!-- Javascript -->
		<script src="resources/assets/vendor/jquery/jquery.min.js"></script>
		<script src="resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="resources/assets/vendor/pace/pace.min.js"></script>
		<script src="resources/assets/vendor/jquery-sparkline/js/jquery.sparkline.min.js"></script>
		<script src="resources/assets/scripts/klorofilpro-common.js"></script>
		<!-- DEMO PANEL -->
		<!-- for demo purpose only, you should remove it on your project directory -->
		<script type="text/javascript">
		var toggleDemoPanel = function(e)
		{
			e.preventDefault();
			var panel = document.getElementById('demo-panel');
			if (panel.className) panel.className = '';
			else panel.className = 'active';
		}
		// fix each iframe src when back button is clicked
		$(function()
		{
			$('iframe').each(function()
			{
				this.src = this.src;
			});
		});
		</script>
		<div id="demo-panel">
			<a href="#" onclick="toggleDemoPanel(event);"><i class="fa fa-cog fa-spin"></i></a>
			<iframe src="resources/demo-panel/index.html"></iframe>
		</div>
		<!-- END DEMO PANEL -->
		<script>
		$(function()
		{
			// MINI LINE CHARTS
			var params = {
				width: '60px',
				height: '30px',
				lineWidth: '2',
				lineColor: '#1D92AF',
				fillColor: 'rgba(29,146,175,0.2) ',
				spotRadius: '2',
				highlightLineColor: '#aedaff',
				highlightSpotColor: '#71aadb',
				spotColor: false,
				minSpotColor: false,
				maxSpotColor: false,
				disableInteraction: false
			};
			// values from HTML script
			$('#demo-sparkline-line1').sparkline('html', params);
			params.lineColor = '#ef2020';
			params.fillColor = 'rgba(239,32,32,0.2)';
			$('#demo-sparkline-line2').sparkline('html', params);
			params.lineColor = '#ff9800';
			params.fillColor = 'rgba(255,152,0,0.2)';
			$('#demo-sparkline-line3').sparkline('html', params);
			params.lineColor = '#7CAC25';
			params.fillColor = 'rgba(124,172,37,0.2)';
			$('#demo-sparkline-line4').sparkline('html', params);
			params.lineColor = '#777';
			params.fillColor = 'rgba(119,119,119,0.2)';
			$('#demo-sparkline-line5').sparkline('html', params);
			// values from Javascript
			var values1 = getRandomValues();
			params.lineColor = '#1D92AF';
			params.fillColor = false;
			$('#demo-sparkline-line6').sparkline(values1[0], params);
			params.lineColor = '#ef2020';
			params.fillColor = false;
			$('#demo-sparkline-line7').sparkline(values1[1], params);
			params.lineColor = '#ff9800';
			params.fillColor = false;
			$('#demo-sparkline-line8').sparkline(values1[2], params);
			params.lineColor = '#7CAC25';
			params.fillColor = false;
			$('#demo-sparkline-line9').sparkline(values1[3], params);
			params.lineColor = '#777';
			params.fillColor = false;
			$('#demo-sparkline-line10').sparkline(values1[4], params);
			// Simple stat
			params.lineColor = '#00AAFF';
			params.width = '' + $('.sparkline-stat-medium').width() + '';
			$('#sparkline-stat1').sparkline(values1[0], params);
			$('#sparkline-stat2').sparkline(values1[1], params);
			$('#sparkline-stat3').sparkline(values1[2], params);
			$('#sparkline-stat4').sparkline(values1[3], params);
			$('#sparkline-stat5').sparkline(values1[4], params);
			$('#sparkline-stat6').sparkline(values1[5], params);
			// Sparkline big
			var paramsBig = {
				width: '' + $('#sparkline-stat-big1').innerWidth() + '',
				height: '80px',
				spotRadius: '2',
				spotColor: false,
				minSpotColor: false,
				maxSpotColor: false,
				lineWidth: 1,
				lineColor: "rgba(87,90,103, 0.5)",
				fillColor: "rgba(87,90,103, 0.1)",
				highlightLineColor: '#fff',
				highlightSpotColor: '#fff',
				disableInteraction: true,
				chartRangeMin: 0,
				chartRangeMax: 1000
			};
			$('#sparkline-stat-big1').sparkline('html', paramsBig);
			// MINI BAR CHARTS
			var values2 = getRandomValues();
			var paramsBar = {
				type: 'bar',
				barWidth: 5,
				height: 25,
				barColor: '#0E9BE2'
			};
			$('#mini-bar-chart1').sparkline(values2[0], paramsBar);
			paramsBar.barColor = '#7CAC25';
			$('#mini-bar-chart2').sparkline(values2[1], paramsBar);
			paramsBar.barColor = '#FF4402';
			$('#mini-bar-chart3').sparkline(values2[2], paramsBar);
			paramsBar.barColor = '#ff9800';
			$('#mini-bar-chart4').sparkline(values2[3], paramsBar);
			paramsBar.barColor = '#777';
			$('#mini-bar-chart5').sparkline(values2[4], paramsBar);
			//simple stat
			paramsBar.barColor = '#7CAC25';
			$('#sparkbar-chart1').sparkline(values2[0], paramsBar);
			paramsBar.barColor = '#FF4402';
			$('#sparkbar-chart2').sparkline(values2[1], paramsBar);
			paramsBar.barColor = '#ff9800';
			$('#sparkbar-chart3').sparkline(values2[2], paramsBar);
			// negative values;
			$('#mini-bar-negative').sparkline('html', paramsBar);
			// stacked bar
			$('#mini-bar-stacked').sparkline('html', paramsBar);
			// composite
			$('#demo-sparkline-compositeline').sparkline('html',
			{
				fillColor: false,
				lineColor: '#ff9800',
				width: '200px',
				height: '30px',
				lineWidth: '2',
			});
			$('#demo-sparkline-compositeline').sparkline([4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7],
			{
				composite: true,
				fillColor: false,
				lineColor: '#777',
				lineWidth: '2',
				chartRangeMin: 0,
				chartRangeMax: 10
			});
			$('#demo-sparkline-compositebar').sparkline('html',
			{
				type: 'bar',
				barColor: '#7CAC25',
				barWidth: 5,
				height: 25,
			});
			$('#demo-sparkline-compositebar').sparkline([4, 1, 5, 7, 9, 9, 8, 7, 6],
			{
				composite: true,
				fillColor: false,
				lineColor: '#777',
			});
			// MINI PIE CHARTS
			var paramsPie = {
				type: "pie",
				sliceColors: ["#0E9BE2", "#ff9800", "#7CAC25"]
			};
			$('#mini-pie-chart1').sparkline('html', paramsPie);
			$('#mini-pie-chart2').sparkline('html', paramsPie);
			$('#mini-pie-chart3').sparkline('html', paramsPie);
			function getRandomValues()
			{
				// data setup
				var values = new Array(20);
				for (var i = 0; i < values.length; i++)
				{
					values[i] = [5 + randomVal(), 10 + randomVal(), 15 + randomVal(), 20 + randomVal(), 30 + randomVal(),
						35 + randomVal(), 40 + randomVal(), 45 + randomVal(), 50 + randomVal()
					];
				}
				return values;
			}
			function randomVal()
			{
				return Math.floor(Math.random() * 80);
			}
		});
		</script>
	</body>
</html>