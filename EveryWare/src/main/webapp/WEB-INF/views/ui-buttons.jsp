<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Buttons | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
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
							<a href="#uiElements" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="active"><i class="ti-panel"></i> <span class="title">UI Elements</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="uiElements" class="collapse in">
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
									<li><a href="ui-buttons" class="active">Buttons <span class="label label-info">UPDATED</span></a></li>
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
							<h1 class="page-title">Buttons</h1>
							<p class="page-subtitle">A collection of buttons with various styles and functions.</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">UI Elements</a></li>
							<li class="active">Buttons</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<!-- GENERAL BUTTONS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">General Buttons</h3>
									</div>
									<div class="panel-body">
										<p class="demo-button">
											<button type="button" class="btn btn-default">Default</button>
											<button type="button" class="btn btn-primary">Primary</button>
											<button type="button" class="btn btn-info">Info</button>
											<button type="button" class="btn btn-success">Success</button>
											<button type="button" class="btn btn-warning">Warning</button>
											<button type="button" class="btn btn-danger">Danger</button>
											<button type="button" class="btn btn-link">Button Link</button>
										</p>
										<hr>
										<h4>Button Outline</h4>
										<p class="demo-button">
											<button type="button" class="btn btn-default btn-outline">Default</button>
											<button type="button" class="btn btn-primary btn-outline">Primary</button>
											<button type="button" class="btn btn-info btn-outline">Info</button>
											<button type="button" class="btn btn-success btn-outline">Success</button>
											<button type="button" class="btn btn-warning btn-outline">Warning</button>
											<button type="button" class="btn btn-danger btn-outline">Danger</button>
										</p>
										<hr>
										<h4>Active State</h4>
										<p class="demo-button">
											<button type="button" class="btn btn-default active">Default</button>
											<button type="button" class="btn btn-primary active">Primary</button>
											<button type="button" class="btn btn-info active">Info</button>
											<button type="button" class="btn btn-success active">Success</button>
											<button type="button" class="btn btn-warning active">Warning</button>
											<button type="button" class="btn btn-danger active">Danger</button>
											<button type="button" class="btn btn-link active">Button Link</button>
										</p>
										<hr>
										<h4>Disabled State</h4>
										<p class="demo-button">
											<button type="button" class="btn btn-default" disabled>Default</button>
											<button type="button" class="btn btn-primary" disabled>Primary</button>
											<button type="button" class="btn btn-info" disabled>Info</button>
											<button type="button" class="btn btn-success" disabled>Success</button>
											<button type="button" class="btn btn-warning" disabled>Warning</button>
											<button type="button" class="btn btn-danger" disabled>Danger</button>
											<button type="button" class="btn btn-link" disabled>Button Link</button>
										</p>
									</div>
								</div>
								<!-- END GENERAL BUTTONS -->
								<!-- BUTTON DROPDOWN -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Button Dropdown &amp; Dropup</h3>
									</div>
									<div class="panel-body">
										<div class="btn-group">
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Dropdown
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li class="dropdown-header">Dropdown Header</li>
												<li><a href="#">Action</a></li>
												<li class="disabled"><a href="#">Disabled link</a></li>
												<li><a href="#">Something else here</a></li>
												<li class="divider"></li>
												<li class="dropdown-header">Dropdown Header</li>
												<li><a href="#">Separated link</a></li>
											</ul>
										</div>
										<div class="btn-group dropup">
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Dropup
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Action</a></li>
												<li><a href="#">Another Action</a></li>
												<li><a href="#">Something else here</a></li>
											</ul>
										</div>
										<div class="btn-group">
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><i class="fa fa-share-alt"></i>
												<span>Share</span>&nbsp;&nbsp;
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
												<li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
												<li><a href="#"><i class="fa fa-google-plus"></i> Google Plus</a></li>
											</ul>
										</div>
										<div class="btn-group">
											<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><i class="fa fa-share-alt"></i>&nbsp;&nbsp;
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
												<li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
												<li><a href="#"><i class="fa fa-google-plus"></i> Google Plus</a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- END BUTTON DROPDOWN -->
								<!-- BUTTON SIZING -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Button Sizing</h3>
									</div>
									<div class="panel-body">
										<p class="demo-button">
											<button type="button" class="btn btn-primary btn-lg">Large Size</button>
											<button type="button" class="btn btn-primary">Default Size</button>
											<button type="button" class="btn btn-primary btn-sm">Small Size</button>
											<button type="button" class="btn btn-primary btn-xs">Extra Small Size</button>
										</p>
									</div>
								</div>
								<!-- END BUTTON SIZING -->
							</div>
							<div class="col-md-6">
								<!-- BUTTONS WITH ICON -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Buttons with Icon</h3>
									</div>
									<div class="panel-body">
										<p class="demo-button">
											<button type="button" class="btn btn-default"><i class="fa fa-plus-square"></i>
												<span>Default</span>
											</button>
											<button type="button" class="btn btn-primary"><i class="fa fa-refresh"></i>
												<span>Primary</span>
											</button>
											<button type="button" class="btn btn-info"><i class="fa fa-info-circle"></i>
												<span>Info</span>
											</button>
											<button type="button" class="btn btn-primary" disabled="disabled"><i class="fa fa-refresh fa-spin"></i>
												<span>Refreshing...</span>
											</button>
										</p>
										<br>
										<p class="demo-button">
											<button type="button" class="btn btn-success"><i class="fa fa-check-circle"></i>
												<span>Success</span>
											</button>
											<button type="button" class="btn btn-warning"><i class="fa fa-warning"></i>
												<span>Warning</span>
											</button>
											<button type="button" class="btn btn-danger"><i class="fa fa-trash-o"></i>
												<span>Danger</span>
											</button>
											<button type="button" class="btn btn-primary" disabled="disabled"><i class="fa fa-spinner fa-spin"></i>
												<span>Loading...</span>
											</button>
										</p>
										<br>
										<p class="demo-button">
											<button type="button" class="btn btn-danger"><i class="fa fa-heart"></i>
												<span>Love</span>
											</button>
											<button type="button" class="btn btn-danger">
												<span>Love</span> <i class="fa fa-heart"></i></button>
											<button type="button" class="btn btn-danger">
												<span class="sr-only">Love</span> <i class="fa fa-heart"></i></button>
										</p>
										<br>
										<p class="demo-button">
											<button type="button" class="btn btn-default" title="Refresh"><i class="fa fa-refresh"></i>
												<span class="sr-only">Refresh</span>
											</button>
											<button type="button" class="btn btn-default" title="Copy"><i class="fa fa-files-o"></i>
												<span class="sr-only">Copy</span>
											</button>
											<button type="button" class="btn btn-success" title="Save"><i class="fa fa-save"></i>
												<span class="sr-only">Save</span>
											</button>
											<button type="button" class="btn btn-danger" title="Delete"><i class="fa fa-trash-o"></i>
												<span class="sr-only">Delete</span>
											</button>
										</p>
									</div>
								</div>
								<!-- END BUTTONS WITH ICON -->
								<!-- BUTTON GROUPS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Button Groups</h3>
									</div>
									<div class="panel-body">
										<div class="btn-group">
											<a class="btn btn-default" href="#"><i class="fa fa-align-left"></i></a>
											<a class="btn btn-default active" href="#"><i class="fa fa-align-center"></i></a>
											<a class="btn btn-default" href="#"><i class="fa fa-align-right"></i></a>
											<a class="btn btn-default" href="#"><i class="fa fa-align-justify"></i></a>
										</div>
										<br>
										<br>
										<div class="btn-group">
											<button type="button" class="btn btn-default">Button 1</button>
											<button type="button" class="btn btn-default active">Button 2</button>
											<div class="btn-group">
												<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Dropdown
													<span class="caret"></span>
												</button>
												<ul class="dropdown-menu">
													<li><a href="#">Dropdown link</a></li>
													<li><a href="#">Dropdown link</a></li>
												</ul>
											</div>
										</div>
										<br>
										<br>
										<div class="btn-group btn-group-justified">
											<a class="btn btn-default" href="#">Left</a>
											<a class="btn btn-default active" href="#">Middle</a>
											<a class="btn btn-default" href="#">Right</a>
										</div>
										<br>
										<div class="btn-group">
											<a class="btn btn-default" href="#">
												<span class="sr-only">Refresh</span><i class="fa fa-refresh"></i></a>
											<a class="btn btn-success" href="#">
												<span class="sr-only">Ok</span><i class="fa fa-check"></i></a>
											<a class="btn btn-danger" href="#">
												<span class="sr-only">Remove</span><i class="fa fa-remove"></i></a>
										</div>
									</div>
								</div>
								<!-- END BUTTON GROUPS -->
								<!-- BLOCK BUTTONS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Block Buttons</h3>
									</div>
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6">
												<button type="button" class="btn btn-primary btn-block">Button Block</button>
											</div>
											<div class="col-md-6">
												<button type="button" class="btn btn-warning btn-block">Button Block</button>
											</div>
										</div>
									</div>
								</div>
								<!-- END BLOCK BUTTONS -->
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
	</body>
</html>