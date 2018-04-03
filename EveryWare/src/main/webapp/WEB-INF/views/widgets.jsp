<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Widgets | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="resources/assets/css/vendor/animate/animate.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/x-editable/bootstrap3-editable/css/bootstrap-editable.css">
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
							<a href="#charts" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="collapsed"><i class="ti-pie-chart"></i> <span class="title">Charts</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="charts" class="collapse ">
								<ul class="submenu">
									<li><a href="charts-chartjs">Chart.js</a></li>
									<li><a href="charts-chartist">Chartist</a></li>
									<li><a href="charts-flot">Flot Chart</a></li>
									<li><a href="charts-sparkline">Sparkline Chart</a></li>
								</ul>
							</div>
						</li>
						<li><a href="widgets" class="active"><i class="ti-widget"></i> <span class="title">Widgets</span></a></li>
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
							<h1 class="page-title">Widgets</h1>
							<p class="page-subtitle">Reusable and flexible components serving specific functions</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li class="active">Widgets</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-3">
								<div class="widget widget-metric_1 animate">
									<span class="icon-wrapper custom-bg-orange"><i class="fa fa-area-chart"></i></span>
									<div class="right">
										<span class="value">$3642 <i class="change-icon change-up fa fa-sort-up text-indicator-green"></i></span>
										<span class="title">PROFIT
											<span class="change text-indicator-green">(+ $254)</span>
										</span>
									</div>
								</div>
								<div class="widget widget-metric_4">
									<span class="title text-muted">Sales Performance</span>
									<span class="chart inlinesparkline" id="sales-performance">20,70,100,55,80,40,64,90,150</span>
									<span class="note">
										<span class="text-indicator-red">-3.74%</span> comp. to last month</span>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="widget widget-mini-bar">
									<div id="mini-bar-chart" class="mini-bar-chart">22,42,65,53,77,44,80</div>
									<span>20K SUBSCRIBERS</span>
								</div>
								<div class="widget widget-metric_5">
									<span class="title text-muted">Customer Satisfaction</span>
									<ul class="list-inline list-value">
										<li>
											<i class="fa fa-frown-o"></i>
											<span class="percentage text-indicator-red">10%</span>
										</li>
										<li>
											<i class="fa fa-meh-o"></i>
											<span class="percentage">13%</span>
										</li>
										<li>
											<i class="fa fa-smile-o"></i>
											<span class="percentage text-indicator-green">77%</span>
										</li>
									</ul>
									<span class="note">See detailed scoring <a href="#">here</a></span>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="widget widget-metric_2 animate">
									<i class="fa fa-envelope-open-o icon"></i>
									<div class="right">
										<span class="title">OPENED EMAIL</span>
										<span class="value">28652</span>
										<span class="percentage custom-text-orange2">44.15%</span>
									</div>
								</div>
								<div class="widget widget-metric_3">
									<span class="title text-muted">Avg. Handle Time</span>
									<span class="value">1m:24s</span>
									<span class="note">Min: 30s &nbsp; Max: 2m:15s</span>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="widget widget-metric_3">
									<span class="title text-muted">Your Performance Index</span>
									<span class="value">8.73</span>
									<span class="note">
										<span class="text-indicator-green">+13.42%</span> comp. to last month</span>
								</div>
								<div class="widget widget-stat">
									<div class="media">
										<div class="media-left media-middle">
											<i class="fa fa-shopping-bag icon-transparent-area custom-color-purple"></i>
										</div>
										<div class="media-body">
											<span class="title">SALES</span>
											<span class="value">734</span>
										</div>
									</div>
									<p class="footer text-success"><i class="fa fa-caret-up"></i> 18%
										<span>comp. to last week</span>
									</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="widget widget-task-progress">
									<div class="top clearfix">
										<span class="title">Review Final Design</span>
										<span class="percentage">85%</span>
									</div>
									<div class="progress progress-sm task-progress progress-transparent custom-color-blue3">
										<div class="progress-bar" data-transitiongoal="85" aria-valuenow="85" style="width: 85%;"></div>
									</div>
									<div class="bottom clearfix">
										<i class="fa fa-check text-success"></i> <a href="#">Mark complete</a>
										<span class="note">12 days remaining</span>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="widget widget-mini-realtime-usage">
									<div class="chart" id="real-time-usage"></div>
									<div class="usage-info clearfix">
										<div class="left">
											<span class="title">MEMORY AVAILABLE</span>
											<span class="value">512 GB</span>
										</div>
										<div class="right">
											<span class="title">MEMORY USED</span>
											<span class="value">
												<span class="number">19.30</span> GB</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="widget widget-metric_6">
									<span class="icon-wrapper custom-bg-yellow"><i class="fa fa-download"></i></span>
									<div class="right">
										<span class="value">1252</span>
										<span class="title">Downloads</span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<div class="widget">
									<div id="progress-share" class="progress-semicircle" data-max="500">
										<div class="bar-overflow">
											<div class="bar"></div>
										</div>
										<span class="content">
											<i class="fa fa-share-alt icon"></i>
											<span class="value">380</span>
											<h4 class="heading">Share more products!</h4>
											<p class="text-muted">Get free product if you reach 500 shares goal</p>
											<button type="button" class="btn btn-primary">Share Now</button>
										</span>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="widget completeness-meter">
									<p class="complete-info">Your profile is almost awesome</p>
									<div class="progress margin-bottom-30">
										<div class="progress-bar progress-bar-primary completeness-progress" data-transitiongoal="50"></div>
									</div>
									<p>Please provide information below:</p>
									<ul class="list-unstyled fa-ul list-complete-profile">
										<li class="done"><i class="fa-li fa fa-check-circle"></i> Confirm your email</li>
										<li class="done"><i class="fa-li fa fa-check-circle"></i> Setup two-way authentication</li>
										<li>
											<i class="fa-li fa fa-circle-o"></i> <a href="#" id="complete-phone-number" data-type="text" data-pk="1" data-title="Phone number">Add your phone number</a>
										</li>
										<li>
											<i class="fa-li fa fa-circle-o"></i> <a href="#" id="complete-nickname" data-type="text" data-pk="1" data-title="Nickname" data-placeholder="your nickname">Add your nickname</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-md-3">
								<div class="file-item">
									<a href="#">
										<span class="file-preview pdf">
											<i class="fa fa-file-pdf-o"></i>
											<span class="file-extension">.pdf</span>
										</span>
									</a>
									<div class="file-info">
										<a href="#">
											<span class="file-name">Proposal_FINAL.pdf</span>
										</a>
										<span class="file-date">Added 11 Jun 2017</span>
										<div class="dropdown">
											<a href="#" class="toggle-dropdown" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="fa fa-cloud-download"></i> Download</a></li>
												<li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
												<li><a href="#"><i class="fa fa-trash"></i> Delete</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="widget widget-system-load">
									<div id="load-chart" class="chart easy-pie-chart" data-percent="70">
										<span class="percent">70</span>
									</div>
									<div class="info">
										<h4 class="heading-title">System Load</h4>
										<div class="row">
											<div class="col-xs-4">
												<span class="title">LOW</span>
												<span class="value">
													<span class="number">45</span>%</span>
											</div>
											<div class="col-xs-4">
												<span class="title">AVERAGE</span>
												<span class="value">
													<span class="number">73</span>%</span>
											</div>
											<div class="col-xs-4">
												<span class="title">HIGH</span>
												<span class="value">
													<span class="number">95</span>%</span>
											</div>
										</div>
										<div class="controls">
											<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-cog"></i> MANAGE</a>
											<a href="#" class="btn btn-default btn-sm"><i class="fa fa-file-text-o"></i> VIEW SYS DOC</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="widget">
									<ul class="list-unstyled list-widget-horizontal no-border row">
										<li class="col-md-6">
											<div class="widget-metric_2">
												<i class="fa fa-calendar-o icon"></i>
												<div class="right">
													<span class="title">WEEKLY REVENUE</span>
													<span class="value">$738</span>
													<span class="percentage text-indicator-red"><i class="fa fa-level-down"></i> 2.67%</span>
												</div>
											</div>
										</li>
										<li class="col-md-6">
											<div class="widget-metric_2">
												<i class="fa fa-shopping-basket icon"></i>
												<div class="right">
													<span class="title">WEEKLY SALES</span>
													<span class="value">236</span>
													<span class="percentage text-indicator-green"><i class="fa fa-level-up"></i> 14.86%</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
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
		<script src="resources/assets/vendor/Flot/jquery.flot.js"></script>
		<script src="resources/assets/vendor/Flot/jquery.flot.resize.js"></script>
		<script src="resources/assets/vendor/bootstrap-progressbar/js/bootstrap-progressbar.min.js"></script>
		<script src="resources/assets/vendor/x-editable/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
		<script src="resources/assets/vendor/jquery.maskedinput/jquery.maskedinput.min.js"></script>
		<script src="resources/assets/vendor/jquery-appear/jquery.appear.min.js"></script>
		<script src="resources/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
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
			// mini bar chart
			$('#mini-bar-chart').sparkline('html',
			{
				type: 'bar',
				barWidth: 8,
				height: 45,
				barColor: '#72BB23',
				chartRangeMin: 0,
				chartRangeMax: 100
			});
			// mini line chart
			$('#sales-performance').sparkline('html',
			{
				width: '100%',
				height: '40px',
				lineWidth: '2',
				lineColor: '#00aaff',
				fillColor: false,
				spotRadius: '2',
				highlightLineColor: '#aedaff',
				highlightSpotColor: '#71aadb',
				spotColor: false,
				minSpotColor: false,
				maxSpotColor: false,
				disableInteraction: false
			});
			// real-time usage chart
			var usageData = [],
				totalPoints = 20;
			function getRandomData()
			{
				if (usageData.length > 0)
					usageData = usageData.slice(1);
				while (usageData.length < totalPoints)
				{
					var y = Math.random() * 100
					usageData.push(y);
				}
				var result = [];
				for (var i = 0; i < usageData.length; ++i)
				{
					result.push([i, usageData[i]])
				}
				return result;
			}
			var usageChart = $.plot($('#real-time-usage'), [getRandomData()],
			{
				series:
				{
					lines:
					{
						fill: true,
						fillColor: '#53c265'
					}
				},
				colors: ['#53c265'],
				grid:
				{
					show: false,
				},
			});
			setInterval(function()
			{
				usageChart.setData([getRandomData()]);
				usageChart.draw();
				$('.widget-mini-realtime-usage').find('.number').text((Math.random() * 100).toFixed(2));
			}, 1000);
			// profile completeness meter
			var cPbar = $('.completeness-progress');
			if ($('.progress-bar').length > 0)
			{
				cPbar.progressbar(
				{
					display_text: 'fill',
					update: function(current_percentage)
					{
						if (current_percentage == 100)
						{
							$('.complete-info').addClass('text-success').html('<i class="fa fa-check-circle"></i> Hooray, it\'s done!');
							cPbar.removeClass('progress-bar-info').addClass('progress-bar-success');
							$('.completeness-meter .editable').editable('disable');
						}
					}
				});
			}
			$.fn.editable.defaults.mode = 'inline';
			$('#complete-phone-number').on('shown', function(e, editable)
			{
				editable.input.$input.mask('(999) 999-9999');
			}).on('hidden', function(e, reason)
			{
				if (reason == 'save')
				{
					$(this).parent().prepend('Phone: ');
					updateProfileMeter($(this), cPbar, 25);
				}
			});
			$('#complete-nickname').on('shown', function(e, editable)
			{
				editable.input.$input.val('');
			}).on('hidden', function(e, reason)
			{
				if (reason == 'save')
				{
					$(this).parent().prepend('Nickname: ');
					updateProfileMeter($(this), cPbar, 25);
				}
			});
			$('.completeness-meter #complete-phone-number').editable();
			$('#complete-nickname').editable();
			function updateProfileMeter(el, pbar, valueAdded)
			{
				// update progress bar
				pbar.attr('data-transitiongoal', parseInt(pbar.attr('data-transitiongoal')) + valueAdded).progressbar();
				// update element
				$(el).parent().find('i').removeClass('fa-circle-o').addClass('fa-check-circle');
				$(el).parent().addClass('done');
			}
			// progress shares goal
			var runProgressShareOnce = false;
			$('#progress-share').bind('appear', function()
			{
				if (runProgressShareOnce) return false;
				$(this).each(function()
				{
					var $bar = $(this).find(".bar");
					var $val = $(this).find(".value");
					var perc = parseInt($val.text(), 10);
					var scale = 180 / parseInt($(this).attr('data-max'));
					$(
					{
						p: 0
					}).animate(
					{
						p: perc
					},
					{
						duration: 3000,
						easing: "swing",
						step: function(p)
						{
							$bar.css(
							{
								transform: "rotate(" + (45 + (p * scale)) + "deg)",
							});
							$val.text(p | 0);
						}
					});
				});
				runProgressShareOnce = true;
			});
			// real-time pie chart
			var sysLoad = $('#load-chart').easyPieChart(
			{
				size: 130,
				barColor: function(percent)
				{
					return "rgb(" + Math.round(200 * percent / 100) + ", " + Math.round(200 * (1.1 - percent / 100)) + ", 0)";
				},
				trackColor: 'rgba(187, 202, 213, .2)',
				scaleColor: false,
				lineWidth: 8,
				lineCap: "round",
				animate: 800
			});
			var updateInterval = 3000; // in milliseconds
			setInterval(function()
			{
				var randomVal;
				randomVal = getRandomInt(0, 100);
				sysLoad.data('easyPieChart').update(randomVal);
				sysLoad.find('.percent').text(randomVal);
				$('.widget-system-load .info .number').each(function()
				{
					$(this).text(getRandomInt(0, 100))
				});
			}, updateInterval);
			function getRandomInt(min, max)
			{
				return Math.floor(Math.random() * (max - min + 1)) + min;
			}
		});
		</script>
	</body>
</html>