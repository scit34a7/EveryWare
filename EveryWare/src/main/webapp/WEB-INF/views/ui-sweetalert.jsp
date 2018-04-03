<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Sweet Alert | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="resources/assets/vendor/sweetalert2/sweetalert2.css">
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
							<a href="#uiElements" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="active"><i class="ti-panel"></i> <span class="title">UI Elements</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="uiElements" class="collapse in">
								<ul class="submenu">
									<li><a href="ui-sweetalert" class="active">Sweet Alert</a></li>
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
							<h1 class="page-title">Sweet Alert</h1>
							<p class="page-subtitle">A beautiful, responsive and customizable replacement for Javasript's popup boxes.</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">UI Elements</a></li>
							<li class="active">Sweet Alert</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Contextual</h3>
									</div>
									<div class="panel-body">
										<table class="table">
											<tr>
												<td>
													<button class="btn btn-success" id="btn-sw-success">Click me</button>
												</td>
												<td>A success message</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-danger" id="btn-sw-error">Click me</button>
												</td>
												<td>An error message</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-warning" id="btn-sw-warning">Click me</button>
												</td>
												<td>A warning message</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-info" id="btn-sw-info">Click me</button>
												</td>
												<td>An info message</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-question">Click me</button>
												</td>
												<td>A question message</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Action</h3>
									</div>
									<div class="panel-body">
										<table class="table">
											<tr>
												<td>
													<button class="btn btn-primary" id="btn-sw-confirmation">Click me</button>
												</td>
												<td>Confirmation prior action</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-primary" id="btn-sw-confirmation2">Click me</button>
												</td>
												<td>Confirmation prior action, with function on Cancel</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-primary" id="btn-sw-chaining">Click me</button>
												</td>
												<td>Chaining modals (queue)</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-primary" id="btn-sw-dynamic">Click me</button>
												</td>
												<td>Dynamic queue</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-primary" id="btn-sw-ajax">Click me</button>
												</td>
												<td>Ajax request</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Input Types</h3>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<table class="table">
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-text">Click me</button>
												</td>
												<td>Text input</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-email">Click me</button>
												</td>
												<td>Email input</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-url">Click me</button>
												</td>
												<td>URL input</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-password">Click me</button>
												</td>
												<td>Password input</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-textarea">Click me</button>
												</td>
												<td>Textarea input</td>
											</tr>
										</table>
									</div>
									<div class="col-md-6">
										<table class="table">
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-select">Click me</button>
												</td>
												<td>Select input</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-radio">Click me</button>
												</td>
												<td>Radio input</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-checkbox">Click me</button>
												</td>
												<td>Checkbox input</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-file">Click me</button>
												</td>
												<td>File input</td>
											</tr>
											<tr>
												<td>
													<button class="btn btn-default" id="btn-sw-range">Click me</button>
												</td>
												<td>Range input</td>
											</tr>
										</table>
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
		<script src="resources/assets/vendor/sweetalert2/sweetalert2.js"></script>
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
			$('#btn-sw-success').on('click', function()
			{
				swal(
					'Good job!',
					'You clicked the button!',
					'success'
				).catch(swal.noop);
			});
			$('#btn-sw-error').on('click', function()
			{
				swal(
					'Error!',
					'Please check again',
					'error'
				).catch(swal.noop);
			});
			$('#btn-sw-warning').on('click', function()
			{
				swal(
					'Warning!',
					'Your storage is almost full',
					'warning'
				).catch(swal.noop);
			});
			$('#btn-sw-info').on('click', function()
			{
				swal(
					'Hello!',
					'Welcome to Klorofil Pro',
					'info'
				).catch(swal.noop);
			});
			$('#btn-sw-question').on('click', function()
			{
				swal(
					'Any question?',
					'Please contact us at support@themeineed.com',
					'info'
				).catch(swal.noop);
			});
			$('#btn-sw-confirmation').on('click', function()
			{
				swal(
				{
					title: 'Are you sure?',
					text: "You won't be able to revert this!",
					type: 'warning',
					showCancelButton: true,
					confirmButtonColor: '#F9354C',
					cancelButtonColor: '#41B314',
					confirmButtonText: 'Yes, delete it!'
				}).then(function()
				{
					swal(
						'Deleted!',
						'Your file has been deleted.',
						'success'
					);
				}).catch(swal.noop);
			});
			$('#btn-sw-confirmation2').on('click', function()
			{
				swal(
				{
					title: 'Are you sure?',
					text: "You won't be able to revert this!",
					type: 'warning',
					allowOutsideClick: false,
					showCancelButton: true,
					confirmButtonColor: '#F9354C',
					cancelButtonColor: '#41B314',
					confirmButtonText: 'Yes, delete it!'
				}).then(function()
				{
					swal(
						'Deleted!',
						'Your file has been deleted.',
						'success'
					).catch(swal.noop);
				}, function(dismiss)
				{
					if (dismiss === 'cancel')
					{
						swal(
							'Cancelled',
							'Your file is safe',
							'info'
						).catch(swal.noop);
					}
				});
			});
			$('#btn-sw-chaining').on('click', function()
			{
				swal.setDefaults(
				{
					input: 'text',
					confirmButtonText: 'Next &rarr;',
					showCancelButton: true,
					animation: false,
					progressSteps: ['1', '2', '3']
				});
				var steps = [
				{
					title: 'Question 1',
					text: 'What\'s your name?'
				},
				{
					title: 'Question 2',
					text: 'How old are you?'
				},
				{
					title: 'Question 3',
					text: 'Where are you come from?'
				}];
				swal.queue(steps).then(function(result)
				{
					swal.resetDefaults();
					swal(
					{
						title: 'All done!',
						html: 'Your answer: <pre>' +
							JSON.stringify(result) +
							'</pre>',
						confirmButtonText: 'Confirm!',
						showCancelButton: false
					}, function()
					{
						swal.resetDefaults();
					});
				}).catch(function()
				{
					swal.resetDefaults();
					swal.noop;
				});
			});
			$('#btn-sw-dynamic').on('click', function()
			{
				swal.queue([
				{
					title: 'Your public IP',
					confirmButtonText: 'Show my public IP',
					text: 'Your public IP will be received via AJAX request',
					showLoaderOnConfirm: true,
					preConfirm: function()
					{
						return new Promise(function(resolve)
						{
							$.get('https://api.ipify.org?format=json')
								.done(function(data)
								{
									swal.insertQueueStep(data.ip);
									resolve();
								});
						});
					}
				}]).catch(swal.noop);
			});
			$('#btn-sw-ajax').on('click', function()
			{
				swal(
				{
					title: 'Submit your email',
					text: 'Use taken@example.com to simulate AJAX error',
					input: 'email',
					showCancelButton: true,
					confirmButtonText: 'Submit',
					showLoaderOnConfirm: true,
					preConfirm: function(email)
					{
						return new Promise(function(resolve, reject)
						{
							setTimeout(function()
							{
								if (email === 'taken@example.com')
								{
									reject('This email is already taken.');
								}
								else
								{
									resolve();
								}
							}, 2000);
						});
					},
					allowOutsideClick: false,
				}).then(function(email)
				{
					swal(
					{
						type: 'success',
						title: 'Ajax request finished!',
						html: 'Submitted email: ' + email
					});
				}).catch(swal.noop);
			});
			$('#btn-sw-text').on('click', function()
			{
				swal(
				{
					title: 'Input something',
					text: 'Try to input blank input to simulate error',
					input: 'text',
					showCancelButton: true,
					inputValidator: function(value)
					{
						return new Promise(function(resolve, reject)
						{
							if (value)
							{
								resolve();
							}
							else
							{
								reject('You need to write something!');
							}
						});
					}
				}).then(function(result)
				{
					swal(
					{
						type: 'success',
						html: 'You entered: ' + result
					});
				}).catch(swal.noop);
			});
			$('#btn-sw-email').on('click', function()
			{
				swal(
				{
					title: 'Input email address',
					input: 'email'
				}).then(function(email)
				{
					swal(
					{
						type: 'success',
						html: 'Entered email: ' + email
					});
				}).catch(swal.noop);
			});
			$('#btn-sw-url').on('click', function()
			{
				swal(
				{
					title: 'Input URL',
					input: 'url'
				}).then(function(url)
				{
					swal(
					{
						type: 'success',
						html: 'Entered URL: ' + url
					});
				}).catch(swal.noop);
			});
			$('#btn-sw-password').on('click', function()
			{
				swal(
				{
					title: 'Enter your password',
					input: 'password',
					inputAttributes:
					{
						'maxlength': 10,
						'autocapitalize': 'off',
						'autocorrect': 'off'
					}
				}).then(function(password)
				{
					if (password)
					{
						swal(
						{
							type: 'success',
							html: 'Entered password: ' + password
						});
					}
				}).catch(swal.noop);
			});
			$('#btn-sw-textarea').on('click', function()
			{
				swal(
				{
					input: 'textarea',
					showCancelButton: true
				}).then(function(text)
				{
					if (text)
					{
						swal(text);
					}
				}).catch(swal.noop);
			});
			$('#btn-sw-select').on('click', function()
			{
				swal(
				{
					title: 'Select Ukraine',
					input: 'select',
					inputOptions:
					{
						'SRB': 'Serbia',
						'UKR': 'Ukraine',
						'HRV': 'Croatia'
					},
					inputPlaceholder: 'Select country',
					showCancelButton: true,
					inputValidator: function(value)
					{
						return new Promise(function(resolve, reject)
						{
							if (value === 'UKR')
							{
								resolve();
							}
							else
							{
								reject('You need to select Ukraine :)');
							}
						});
					}
				}).then(function(result)
				{
					swal(
					{
						type: 'success',
						html: 'You selected: ' + result
					});
				}).catch(swal.noop);
			});
			$('#btn-sw-radio').on('click', function()
			{
				var inputOptions = new Promise(function(resolve)
				{
					setTimeout(function()
					{
						resolve(
						{
							'#ff0000': 'Red',
							'#00ff00': 'Green',
							'#0000ff': 'Blue'
						})
					}, 2000);
				});
				swal(
				{
					title: 'Select color',
					input: 'radio',
					inputOptions: inputOptions,
					inputValidator: function(result)
					{
						return new Promise(function(resolve, reject)
						{
							if (result)
							{
								resolve();
							}
							else
							{
								reject('You need to select something!');
							}
						});
					}
				}).then(function(result)
				{
					swal(
					{
						type: 'success',
						html: 'You selected: ' + result
					});
				}).catch(swal.noop);
			});
			$('#btn-sw-checkbox').on('click', function()
			{
				swal(
				{
					title: 'Terms and conditions',
					input: 'checkbox',
					inputPlaceholder: 'I agree with the terms and conditions',
					confirmButtonText: 'Continue <i class="fa fa-arrow-right"></i>',
					inputValidator: function(result)
					{
						return new Promise(function(resolve, reject)
						{
							if (result)
							{
								resolve();
							}
							else
							{
								reject('You need to agree with T&C')
							}
						});
					}
				}).then(function(result)
				{
					swal(
					{
						type: 'success',
						text: 'You agreed with T&C :)'
					});
				}).catch(swal.noop);
			});
			$('#btn-sw-file').on('click', function()
			{
				swal(
				{
					title: 'Select image',
					input: 'file',
					inputAttributes:
					{
						accept: 'image/*'
					}
				}).then(function(file)
				{
					var reader = new FileReader
					reader.onload = function(e)
					{
						swal(
						{
							imageUrl: e.target.result
						});
					}
					reader.readAsDataURL(file);
				}).catch(swal.noop);
			});
			$('#btn-sw-range').on('click', function()
			{
				swal(
				{
					title: 'How old are you?',
					type: 'question',
					input: 'range',
					inputAttributes:
					{
						min: 8,
						max: 120,
						step: 1
					},
					inputValue: 25
				}).catch(swal.noop);
			});
		});
		</script>
	</body>
</html>