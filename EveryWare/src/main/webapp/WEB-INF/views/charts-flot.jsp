<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Flot Charts | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
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
									<li><a href="charts-flot" class="active">Flot Chart</a></li>
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
							<h1 class="page-title">Flot Charts</h1>
							<p class="page-subtitle">Simple usage, attractive looks and interactive features.</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">Charts</a></li>
							<li class="active">Flot Chart</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Flot Chart: Line Chart</h3>
									</div>
									<div class="panel-body">
										<div class="demo-flot-chart" id="demo-flot-line-chart"></div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Flot Chart: Area Chart</h3>
									</div>
									<div class="panel-body">
										<div class="demo-flot-chart sales-chart" id="demo-flot-area-chart"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Flot Chart: Vertical Bar Chart</h3>
									</div>
									<div class="panel-body">
										<div class="demo-flot-chart" id="demo-flot-vertical-bar-chart"></div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Flot Chart: Horizontal Bar Chart</h3>
									</div>
									<div class="panel-body">
										<div class="demo-flot-chart" id="demo-flot-horizontal-bar-chart"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Flot Chart: Combining Chart Types</h3>
									</div>
									<div class="panel-body">
										<div class="demo-flot-chart" id="demo-flot-multi-types-chart"></div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Flot Chart: Donut Chart</h3>
									</div>
									<div class="panel-body">
										<div class="demo-flot-chart" id="demo-flot-donut-chart"></div>
									</div>
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
		<script src="resources/assets/vendor/Flot/jquery.flot.js"></script>
		<script src="resources/assets/vendor/Flot/jquery.flot.resize.js"></script>
		<script src="resources/assets/vendor/Flot/jquery.flot.time.js"></script>
		<script src="resources/assets/vendor/Flot/jquery.flot.pie.js"></script>
		<script src="resources/assets/vendor/flot.tooltip/jquery.flot.tooltip.js"></script>
		<script src="resources/assets/vendor/flot.orderbars/jquery.flot.orderBars.js"></script>
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
			var plot, visit, val;
			visit = [
				[gt(2013, 1, 1), 200],
				[gt(2013, 2, 1), 300],
				[gt(2013, 3, 1), 360],
				[gt(2013, 4, 1), 340],
				[gt(2013, 5, 1), 440],
				[gt(2013, 6, 1), 600],
				[gt(2013, 7, 1), 1050],
				[gt(2013, 8, 1), 1700],
				[gt(2013, 9, 1), 1100],
				[gt(2013, 10, 1), 1200],
				[gt(2013, 11, 1), 1300],
				[gt(2013, 12, 1), 1500]
			];
			val = [
				[gt(2013, 1, 1), 100],
				[gt(2013, 2, 1), 155],
				[gt(2013, 3, 1), 180],
				[gt(2013, 4, 1), 172],
				[gt(2013, 5, 1), 222],
				[gt(2013, 6, 1), 300],
				[gt(2013, 7, 1), 550],
				[gt(2013, 8, 1), 452],
				[gt(2013, 9, 1), 552],
				[gt(2013, 10, 1), 600],
				[gt(2013, 11, 1), 680],
				[gt(2013, 12, 1), 750]
			];
			// Line Chart
			plot = $.plot($('#demo-flot-line-chart'), [
				{
					data: visit,
					label: "Visits"
				},
				{
					data: val,
					label: "Sales"
				}],
				{
					series:
					{
						lines:
						{
							show: true,
							lineWidth: 2,
							fill: false
						},
						points:
						{
							show: true,
							lineWidth: 3,
							fill: true,
							fillColor: "#fafafa"
						},
						shadowSize: 0
					},
					grid:
					{
						hoverable: true,
						clickable: true,
						borderWidth: 0,
						tickColor: "#f4f4f4",
					},
					colors: ["#d9d9d9", "#5399D6"],
					xaxis:
					{
						mode: "time",
						timezone: "browser",
						minTickSize: [1, "month"],
						font:
						{
							color: "#676a6d"
						},
						tickColor: "transparent",
						autoscaleMargin: 0.02
					},
					yaxis:
					{
						font:
						{
							color: "#676a6d"
						},
						ticks: 8,
					},
					legend:
					{
						labelBoxBorderColor: "transparent",
						backgroundColor: "transparent"
					},
					tooltip: true,
					tooltipOpts:
					{
						content: '%s: %y'
					}
				}
			);
			// Area Chart
			plot = $.plot($('#demo-flot-area-chart'), [
				{
					data: visit,
					label: "Visits",
					lines:
					{
						show: true,
						lineWidth: 2,
						fill: true,
					},
					points:
					{
						show: true,
						lineWidth: 3,
						fill: true,
						fillColor: "#fafafa"
					}
				},
				{
					data: val,
					label: "Sales",
					lines:
					{
						show: true,
						fill: true
					},
					points:
					{
						show: true,
						fill: true,
						fillColor: "#fafafa"
					},
				}],
				{
					series:
					{
						lines:
						{
							lineWidth: 2,
							fillColor:
							{
								colors: [
								{
									opacity: 0.1
								},
								{
									opacity: 0.1
								}]
							}
						},
						points:
						{
							lineWidth: 3,
						},
						shadowSize: 0
					},
					grid:
					{
						hoverable: true,
						clickable: true,
						borderWidth: 0,
						tickColor: "#f4f4f4"
					},
					colors: ["#7d939a", "#1D92AF"],
					xaxis:
					{
						mode: "time",
						timezone: "browser",
						minTickSize: [1, "day"],
						timeformat: "%a",
						font:
						{
							color: "#676a6d"
						},
						tickColor: "transparent",
						autoscaleMargin: 0.02
					},
					yaxis:
					{
						font:
						{
							color: "#676a6d"
						},
						tickColor: "transparent",
						ticks: 8
					},
					legend:
					{
						labelBoxBorderColor: "transparent",
						backgroundColor: "transparent"
					},
					tooltip: true,
					tooltipOpts:
					{
						content: '%s: %y'
					}
				});
			// Vertical Bar Chart
			var basic = [
				[gt(2013, 10, 21), 188],
				[gt(2013, 10, 22), 205],
				[gt(2013, 10, 23), 250],
				[gt(2013, 10, 24), 230],
				[gt(2013, 10, 25), 245],
				[gt(2013, 10, 26), 260],
				[gt(2013, 10, 27), 290]
			];
			var gold = [
				[gt(2013, 10, 21), 100],
				[gt(2013, 10, 22), 110],
				[gt(2013, 10, 23), 155],
				[gt(2013, 10, 24), 120],
				[gt(2013, 10, 25), 135],
				[gt(2013, 10, 26), 150],
				[gt(2013, 10, 27), 175]
			];
			var platinum = [
				[gt(2013, 10, 21), 75],
				[gt(2013, 10, 22), 65],
				[gt(2013, 10, 23), 80],
				[gt(2013, 10, 24), 60],
				[gt(2013, 10, 25), 65],
				[gt(2013, 10, 26), 80],
				[gt(2013, 10, 27), 110]
			];
			plot = $.plot($('#demo-flot-vertical-bar-chart'), [
			{
				data: basic,
				label: "Basic"
			},
			{
				data: gold,
				label: "Gold"
			},
			{
				data: platinum,
				label: "Platinum"
			}],
			{
				bars:
				{
					show: true,
					barWidth: 15 * 60 * 60 * 300,
					align: "center",
					fill: true,
					order: true,
					lineWidth: 0,
					fillColor:
					{
						colors: [
						{
							opacity: 1
						},
						{
							opacity: 1
						}]
					}
				},
				grid:
				{
					hoverable: true,
					clickable: true,
					borderWidth: 0,
					tickColor: "#f4f4f4",
				},
				colors: ["#d9d9d9", "#5399D6", "#d7ea2b"],
				xaxis:
				{
					mode: "time",
					timezone: "browser",
					minTickSize: [1, "day"],
					timeformat: "%a",
					font:
					{
						color: "#676a6d"
					},
					tickColor: "transparent",
					autoscaleMargin: 0.2
				},
				yaxis:
				{
					font:
					{
						color: "#676a6d"
					},
					tickColor: "#f4f4f4",
					ticks: 8,
				},
				legend:
				{
					labelBoxBorderColor: "transparent",
					backgroundColor: "transparent"
				},
				tooltip: true,
				tooltipOpts:
				{
					content: '%s: %y'
				}
			});
			// Horizontal Bar Chart
			var productA = [
				[220, 1],
				[180, 2],
				[225, 3],
				[240, 4],
				[250, 5]
			];
			var productB = [
				[190, 1],
				[160, 2],
				[180, 3],
				[200, 4],
				[210, 5]
			];
			var productC = [
				[100, 1],
				[90, 2],
				[150, 3],
				[120, 4],
				[145, 5]
			];
			plot = $.plot($('#demo-flot-horizontal-bar-chart'), [
			{
				data: productA,
				label: "Product A"
			},
			{
				data: productB,
				label: "Product B"
			},
			{
				data: productC,
				label: "Product C"
			}],
			{
				bars:
				{
					show: true,
					horizontal: true,
					barWidth: 0.2,
					align: "center",
					fill: true,
					order: true,
					fillColor:
					{
						colors: [
						{
							opacity: 1
						},
						{
							opacity: 1
						}]
					}
				},
				grid:
				{
					hoverable: true,
					clickable: true,
					borderWidth: 0,
					tickColor: "#f4f4f4",
				},
				colors: ["#d9d9d9", "#5399D6", "#d7ea2b"],
				xaxis:
				{
					autoscaleMargin: 0.2,
					font:
					{
						color: "#676a6d"
					}
				},
				yaxis:
				{
					font:
					{
						color: "#676a6d"
					},
				},
				legend:
				{
					labelBoxBorderColor: "transparent",
					backgroundColor: "transparent"
				},
				tooltip: true,
				tooltipOpts:
				{
					content: '%s: %x'
				}
			});
			// Multiple Charts
			visit = [
				[gt(2013, 10, 1), 100],
				[gt(2013, 10, 2), 140],
				[gt(2013, 10, 3), 160],
				[gt(2013, 10, 4), 190],
				[gt(2013, 10, 5), 170],
				[gt(2013, 10, 6), 200],
				[gt(2013, 10, 7), 220],
				[gt(2013, 10, 8), 250],
				[gt(2013, 10, 9), 280],
				[gt(2013, 10, 10), 240],
				[gt(2013, 10, 11), 250],
				[gt(2013, 10, 12), 260],
				[gt(2013, 10, 13), 220],
				[gt(2013, 10, 14), 280],
				[gt(2013, 10, 15), 300]
			];
			val = [
				[gt(2013, 10, 1), 20],
				[gt(2013, 10, 2), 28],
				[gt(2013, 10, 3), 32],
				[gt(2013, 10, 4), 40],
				[gt(2013, 10, 5), 35],
				[gt(2013, 10, 6), 40],
				[gt(2013, 10, 7), 45],
				[gt(2013, 10, 8), 25],
				[gt(2013, 10, 9), 60],
				[gt(2013, 10, 10), 48],
				[gt(2013, 10, 11), 53],
				[gt(2013, 10, 12), 58],
				[gt(2013, 10, 13), 60],
				[gt(2013, 10, 14), 65],
				[gt(2013, 10, 15), 66]
			];
			plot = $.plot($('#demo-flot-multi-types-chart'), [
				{
					data: visit,
					label: "Visits",
					bars:
					{
						show: true,
						fill: false,
						barWidth: 0.1,
						align: "center",
						lineWidth: 18
					}
				},
				{
					data: val,
					label: "Sales"
				}],
				{
					series:
					{
						lines:
						{
							show: true,
							lineWidth: 2,
							fill: false
						},
						points:
						{
							show: true,
							lineWidth: 3,
							fill: true,
							fillColor: "#fafafa"
						},
						shadowSize: 0
					},
					grid:
					{
						hoverable: true,
						clickable: true,
						borderWidth: 0,
						tickColor: "#f4f4f4",
					},
					colors: ["rgba(14, 155, 226, 0.2)", "#5399D6"],
					xaxis:
					{
						mode: "time",
						timezone: "browser",
						minTickSize: [1, "day"],
						font:
						{
							color: "#676a6d"
						},
						tickColor: "transparent",
						autoscaleMargin: 0.02
					},
					yaxis:
					{
						font:
						{
							color: "#676a6d"
						},
						ticks: 8,
					},
					legend:
					{
						labelBoxBorderColor: "transparent",
						backgroundColor: "transparent"
					},
					tooltip: true,
					tooltipOpts:
					{
						content: '%s: %y'
					}
				}
			);
			// Donut Chart
			var data = [
			{
				label: "Direct",
				data: 65
			},
			{
				label: "Referral",
				data: 20
			},
			{
				label: "Others",
				data: 15
			}];
			$.plot('#demo-flot-donut-chart', data,
			{
				series:
				{
					pie:
					{
						show: true,
						innerRadius: 0.4,
						stroke:
						{
							width: 4,
							color: "#F9F9F9"
						},
						label:
						{
							show: true,
							radius: 3 / 4,
							formatter: donutLabelFormatter
						}
					},
				},
				legend:
				{
					show: false
				},
				grid:
				{
					hoverable: true
				},
				colors: ["#7d939a", "#5399D6", "#d7ea2b"],
			});
			// get day function
			function gt(y, m, d)
			{
				return new Date(y, m - 1, d).getTime();
			}
			function donutLabelFormatter(label, series)
			{
				return "<div class=\"flot-donut-label\">" + label + "<br/>" + Math.round(series.percent) + "%</div>";
			}
		});
		</script>
	</body>
</html>