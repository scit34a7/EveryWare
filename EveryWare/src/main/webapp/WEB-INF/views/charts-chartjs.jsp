<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Chart.js | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
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
									<li><a href="charts-chartjs" class="active">Chart.js</a></li>
									<li><a href="charts-chartist">Chartist</a></li>
									<li><a href="charts-flot">Flot Chart</a></li>
									<li><a href="charts-sparkline">Sparkline Chart</a></li>
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
							<h1 class="page-title">Chart.js</h1>
							<p class="page-subtitle">Simple yet flexible JavaScript charting for designers & developers</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">Charts</a></li>
							<li class="active">Chart.js</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<!-- line chart -->
								<div class="panel">
									<div class="panel-heading">
										<h2 class="panel-title">Line Chart</h2>
									</div>
									<div class="panel-body">
										<canvas id="line-chart" height="150"></canvas>
										<form class="margin-top-30">
											<p class="text-muted">Play with controls below to see other chart options demo</p>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="straightLine">
													<span>Straight Lines</span>
												</label>
											</span>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="diamondPoint">
													<span>Diamond Points</span>
												</label>
											</span>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="stepped">
													<span>Stepped Line</span>
												</label>
											</span>
										</form>
									</div>
								</div>
								<!-- end line chart -->
								<!-- area chart -->
								<div class="panel">
									<div class="panel-heading">
										<h2 class="panel-title">Area Chart</h2>
									</div>
									<div class="panel-body">
										<canvas id="area-chart" height="150"></canvas>
										<form class="margin-top-30">
											<p class="text-muted">Play with controls below to see other chart options demo</p>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="straightArea">
													<span>Straight Area</span>
												</label>
											</span>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="addRemoveAreaDataset">
													<span>Add/Remove Dataset</span>
												</label>
											</span>
										</form>
									</div>
								</div>
								<!-- end area chart -->
								<!-- donut chart -->
								<div class="panel">
									<div class="panel-heading">
										<h2 class="panel-title">Pie Chart</h2>
									</div>
									<div class="panel-body">
										<canvas id="pie-chart" height="150"></canvas>
										<form class="margin-top-30">
											<p class="text-muted">Play with controls below to see other chart options demo</p>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="addRemovePieDataset">
													<span>Add/Remove Dataset</span>
												</label>
											</span>
										</form>
									</div>
								</div>
								<!-- end donut chart -->
								<!-- polar chart -->
								<div class="panel">
									<div class="panel-heading">
										<h2 class="panel-title">Radar Chart</h2>
									</div>
									<div class="panel-body">
										<canvas id="polar-chart"></canvas>
									</div>
								</div>
								<!-- end polar chart -->
							</div>
							<div class="col-md-6">
								<!-- bar chart -->
								<div class="panel">
									<div class="panel-heading">
										<h2 class="panel-title">Bar Chart</h2>
									</div>
									<div class="panel-body">
										<canvas id="bar-chart" height="150"></canvas>
										<form class="margin-top-30">
											<p class="text-muted">Play with controls below to see other chart options demo</p>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="addRemoveBarDataset">
													<span>Add/Remove Dataset</span>
												</label>
											</span>
										</form>
									</div>
								</div>
								<!-- end bar chart -->
								<!-- donut chart -->
								<div class="panel">
									<div class="panel-heading">
										<h2 class="panel-title">Doughnut Chart</h2>
									</div>
									<div class="panel-body">
										<canvas id="donut-chart" height="150"></canvas>
										<form class="margin-top-30">
											<p class="text-muted">Play with controls below to see other chart options demo</p>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="addRemoveDonutDataset">
													<span>Add/Remove Dataset</span>
												</label>
											</span>
										</form>
									</div>
								</div>
								<!-- end donut chart -->
								<!-- radar chart -->
								<div class="panel">
									<div class="panel-heading">
										<h2 class="panel-title">Radar Chart</h2>
									</div>
									<div class="panel-body">
										<canvas id="radar-chart" height="150"></canvas>
										<form class="margin-top-30">
											<p class="text-muted">Play with controls below to see other chart options demo</p>
											<span class="fancy-checkbox custom-bgcolor-blue">
												<label>
													<input type="checkbox" id="addRemoveRadarDataset">
													<span>Add/Remove Dataset</span>
												</label>
											</span>
										</form>
									</div>
								</div>
								<!-- end radar chart -->
								<!-- horizontal bar chart -->
								<div class="panel">
									<div class="panel-heading">
										<h2 class="panel-title">Horizontal Bar Chart</h2>
									</div>
									<div class="panel-body">
										<canvas id="horizontalbar-chart" height="150"></canvas>
									</div>
								</div>
								<!-- end horizontal bar chart -->
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
		<script src="resources/assets/vendor/chart-js/Chart.min.js"></script>
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
			// general config and options
			Chart.defaults.global.defaultFontColor = '#a0aeba';
			var chartLabels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
			var chartData = [123, 129, 124, 130, 132, 139, 140];
			var chartData2 = [125, 127, 123, 132, 129, 138, 144];
			var chartData3 = [-90, -70, -40, 35, 50, 70, 90];
			var chartData4 = [-20, -50, -20, 15, 30, 50, 70];
			var scalesOptions = {
				xAxes: [
				{
					gridLines:
					{
						display: false
					}
				}],
				yAxes: [
				{
					gridLines:
					{
						color: '#eff3f6',
						drawBorder: false,
					},
				}]
			};
			// line chart
			var ctxLineChart = document.getElementById("line-chart").getContext("2d");
			var lineChart = new Chart(ctxLineChart,
			{
				type: 'line',
				data:
				{
					labels: chartLabels,
					datasets: [
					{
						data: chartData,
						label: 'Data 1',
						fill: false,
						borderWidth: 2,
						pointRadius: 3,
						pointHoverRadius: 5,
						borderColor: '#45aeef',
						backgroundColor: '#fff',
					},
					{
						data: chartData2,
						label: 'Data 2',
						fill: false,
						borderWidth: 2,
						borderDash: [5, 5],
						pointRadius: 3,
						pointHoverRadius: 5,
						borderColor: '#f89b03',
						backgroundColor: '#fff'
					}]
				},
				options:
				{
					responsive: true,
					scales: scalesOptions,
				}
			});
			$('#straightLine').on('change', function()
			{
				lineChart.options.elements.line.tension = $(this).is(':checked') ? 0.000001 : 0.4;
				lineChart.update();
			});
			$('#diamondPoint').on('change', function()
			{
				lineChart.options.elements.point.pointStyle = $(this).is(':checked') ? 'rectRot' : 'circle';
				lineChart.update();
			});
			$('#stepped').on('change', function()
			{
				lineChart.options.elements.line.stepped = $(this).is(':checked') ? true : false;;
				lineChart.update();
			});
			// bar chart
			var ctxBarChart = document.getElementById("bar-chart").getContext("2d");
			var barChart = new Chart(ctxBarChart,
			{
				type: 'bar',
				data:
				{
					labels: chartLabels,
					datasets: [
					{
						data: chartData3,
						label: 'Data',
						borderColor: 'transparent',
						backgroundColor: 'rgba(1,153,248,.50)'
					}]
				},
				options:
				{
					responsive: true,
					scales: scalesOptions,
				}
			});
			$('#addRemoveBarDataset').on('change', function()
			{
				// console.log('adding');
				var newBarDataset = {
					data: chartData4,
					label: 'Newly Added Data',
					borderColor: 'transparent',
					backgroundColor: 'rgba(248,155,2,0.50)',
				};
				if ($(this).is(':checked'))
				{
					console.log('checked');
					barChart.data.datasets.push(newBarDataset);
				}
				else
				{
					barChart.data.datasets.pop();
				}
				barChart.update();
			});
			// area chart
			var ctxAreaChart = document.getElementById("area-chart").getContext("2d");
			var areaChart = new Chart(ctxAreaChart,
			{
				type: 'line',
				data:
				{
					labels: chartLabels,
					datasets: [
					{
						data: chartData2,
						label: 'Data 1',
						backgroundColor: 'rgba(0, 183, 253, .25)',
						borderColor: 'rgb(0, 183, 253)',
						borderWidth: 2,
					}, ],
				},
				options:
				{
					responsive: true,
					scales: scalesOptions,
					elements:
					{
						point:
						{
							radius: 2,
						},
					},
					legend:
					{
						position: 'right'
					}
				}
			});
			$('#straightArea').on('change', function()
			{
				areaChart.options.elements.line.tension = $(this).is(':checked') ? 0.000001 : 0.4;
				areaChart.update();
			});
			$('#addRemoveAreaDataset').on('change', function()
			{
				var newDataset = {
					data: chartData,
					label: 'Data 2',
					backgroundColor: 'rgba(248,155,2,0.50)',
					borderColor: 'rgb(248,155,2)',
					borderWidth: 2,
				};
				if ($(this).is(':checked'))
				{
					areaChart.data.datasets.push(newDataset);
				}
				else
				{
					areaChart.data.datasets.pop();
				}
				areaChart.options.scales.yAxes.stacked = true;
				areaChart.update();
			});
			// donut chart
			var ctxDonutChart = document.getElementById("donut-chart").getContext("2d");
			var donutChart = new Chart(ctxDonutChart,
			{
				type: 'doughnut',
				data:
				{
					labels: chartLabels,
					datasets: [
						{
							data: chartData,
							backgroundColor: ['#4A90E2', '#7CAC25', '#FF4402', '#AB7DF6', '#F3BB23', '#20B2AA', '#1DBB8E'],
						}
					]
				},
				options:
				{
					responsive: true,
					legend:
					{
						position: 'right',
					},
				}
			});
			$('#addRemoveDonutDataset').on('change', function()
			{
				var newDataset = {
					data: chartData2,
					backgroundColor: ['#4A90E2', '#7CAC25', '#FF4402', '#AB7DF6', '#F3BB23', '#20B2AA', '#1DBB8E'],
				};
				if ($(this).is(':checked'))
				{
					donutChart.data.datasets.push(newDataset);
				}
				else
				{
					donutChart.data.datasets.pop();
				}
				donutChart.update();
			});
			// pie chart
			var ctxPieChart = document.getElementById("pie-chart").getContext("2d");
			var pieChart = new Chart(ctxPieChart,
			{
				type: 'pie',
				data:
				{
					labels: chartLabels,
					datasets: [
					{
						data: chartData,
						backgroundColor: ['#4A90E2', '#7CAC25', '#FF4402', '#AB7DF6', '#F3BB23', '#20B2AA', '#1DBB8E'],
					}]
				},
				options:
				{
					responsive: true,
					legend:
					{
						position: 'left',
					},
				}
			});
			$('#addRemovePieDataset').on('change', function()
			{
				var newDataset = {
					data: chartData2,
					backgroundColor: ['#4A90E2', '#7CAC25', '#FF4402', '#AB7DF6', '#F3BB23', '#20B2AA', '#1DBB8E'],
				};
				if ($(this).is(':checked'))
				{
					pieChart.data.datasets.push(newDataset);
				}
				else
				{
					pieChart.data.datasets.pop();
				}
				pieChart.update();
			});
			// radar chart
			var ctxRadarChart = document.getElementById("radar-chart").getContext("2d");
			var radarChart = new Chart(ctxRadarChart,
			{
				type: 'radar',
				data:
				{
					labels: ['HTML', 'CSS', 'Javascript', 'Angular', 'ReactJS'],
					datasets: [
					{
						label: 'Skills',
						data: [90, 65, 75, 90, 75],
						backgroundColor: 'rgba(248,155,2,0.50)',
						borderColor: 'rgb(248,155,2)',
						pointBackgroundColor: 'rgb(248,155,2)',
						borderWidth: 2
					}]
				},
				options:
				{
					legend:
					{
						position: 'top'
					},
					scale:
					{
						ticks:
						{
							beginAtZero: true
						}
					},
				}
			});
			$('#addRemoveRadarDataset').on('change', function()
			{
				var newDataset = {
					label: 'Average',
					data: [85, 75, 70, 80, 90],
					backgroundColor: 'rgba(0, 183, 253, .25)',
					borderColor: 'rgb(0, 183, 253)',
					borderWidth: 2
				};
				if ($(this).is(':checked'))
				{
					radarChart.data.datasets.push(newDataset);
				}
				else
				{
					radarChart.data.datasets.pop();
				}
				radarChart.update();
			});
			// polar chart
			var ctxPolarChart = document.getElementById("polar-chart").getContext("2d");
			var polarChart = Chart.PolarArea(ctxPolarChart,
			{
				data:
				{
					labels: chartLabels,
					datasets: [
					{
						data: [10, 20, 40, 60, 80, 90, 50],
						backgroundColor: [
							'rgba(73,143,226,.5)',
							'rgba(124,172,37,.5)',
							'rgba(255,68,2,.5)',
							'rgba(171,125,246,.5)',
							'rgba(243,187,36,.5)',
							'rgba(32,178,170,.5)',
							'rgba(29,187,142,.5)',
						],
					}]
				},
				options:
				{
					responsive: true,
					legend:
					{
						position: 'right'
					},
					scale:
					{
						ticks:
						{
							beginAtZero: true
						},
						reverse: false
					},
				}
			});
			// horizontal bar chart
			var ctxHorizontalBarChart = document.getElementById("horizontalbar-chart").getContext("2d");
			var horizontalBarChart = new Chart(ctxHorizontalBarChart,
			{
				type: 'horizontalBar',
				data:
				{
					labels: chartLabels,
					datasets: [
					{
						data: chartData3,
						label: 'Data',
						borderColor: 'transparent',
						backgroundColor: 'rgba(29,187,142,.5)'
					}]
				},
				options:
				{
					responsive: true,
				}
			});
		});
		</script>
	</body>
</html>