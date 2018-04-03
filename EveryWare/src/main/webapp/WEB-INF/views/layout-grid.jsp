<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Grid | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
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
							<a href="#subLayouts" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="active"><i class="ti-layout"></i> <span class="title">Layouts</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="subLayouts" class="collapse in">
								<ul class="submenu">
									<li><a href="layout-topnav">Top Navigation <span class="label label-success">NEW</span></a></li>
									<li><a href="layout-minified">Minified</a></li>
									<li><a href="layout-fullwidth">Fullwidth</a></li>
									<li><a href="layout-default">Default</a></li>
									<li><a href="layout-grid" class="active">Grid</a></li>
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
							<h1 class="page-title">Grid</h1>
							<p class="page-subtitle">Grid systems are used for creating page layouts through a series of rows and columns that house your content</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">Layouts</a></li>
							<li class="active">Grid</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Grid Options</h3>
							</div>
							<div class="panel-body">
								<p>See how aspects of the Bootstrap grid system work across multiple devices with a handy table.</p>
								<div class="table-responsive">
									<table class="table table-bordered table-striped">
										<thead>
											<tr>
												<th></th>
												<th> Extra small devices
													<small>Phones (&lt;768px)</small>
												</th>
												<th> Small devices
													<small>Tablets (≥768px)</small>
												</th>
												<th> Medium devices
													<small>Desktops (≥992px)</small>
												</th>
												<th> Large devices
													<small>Desktops (≥1200px)</small>
												</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="text-nowrap" scope="row">Grid behavior</th>
												<td>Horizontal at all times</td>
												<td colspan="3">Collapsed to start, horizontal above breakpoints</td>
											</tr>
											<tr>
												<th class="text-nowrap" scope="row">Container width</th>
												<td>None (auto)</td>
												<td>750px</td>
												<td>970px</td>
												<td>1170px</td>
											</tr>
											<tr>
												<th class="text-nowrap" scope="row">Class prefix</th>
												<td>
													<code>.col-xs-</code>
												</td>
												<td>
													<code>.col-sm-</code>
												</td>
												<td>
													<code>.col-md-</code>
												</td>
												<td>
													<code>.col-lg-</code>
												</td>
											</tr>
											<tr>
												<th class="text-nowrap" scope="row"># of columns</th>
												<td colspan="4">12</td>
											</tr>
											<tr>
												<th class="text-nowrap" scope="row">Column width</th>
												<td class="text-muted">Auto</td>
												<td>~62px</td>
												<td>~81px</td>
												<td>~97px</td>
											</tr>
											<tr>
												<th class="text-nowrap" scope="row">Gutter width</th>
												<td colspan="4">30px (15px on each side of a column)</td>
											</tr>
											<tr>
												<th class="text-nowrap" scope="row">Nestable</th>
												<td colspan="4">Yes</td>
											</tr>
											<tr>
												<th class="text-nowrap" scope="row">Offsets</th>
												<td colspan="4">Yes</td>
											</tr>
											<tr>
												<th class="text-nowrap" scope="row">Column ordering</th>
												<td colspan="4">Yes</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Stacked-to-horizontal</h3>
							</div>
							<div class="panel-body">
								<p>Using a single set of
									<code>.col-md-*</code> grid classes, you can create a basic grid system that starts out stacked on mobile devices and tablet devices (the extra small to small range) before becoming horizontal on desktop (medium) devices. Place grid columns in any
									<code>.row</code>.</p>
								<div class="row show-grid">
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
									<div class="col-md-1">.col-md-1</div>
								</div>
								<div class="row show-grid">
									<div class="col-md-8">.col-md-8</div>
									<div class="col-md-4">.col-md-4</div>
								</div>
								<div class="row show-grid">
									<div class="col-md-4">.col-md-4</div>
									<div class="col-md-4">.col-md-4</div>
									<div class="col-md-4">.col-md-4</div>
								</div>
								<div class="row show-grid">
									<div class="col-md-6">.col-md-6</div>
									<div class="col-md-6">.col-md-6</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Mobile and desktop</h3>
							</div>
							<div class="panel-body">
								<p>Don't want your columns to simply stack in smaller devices? Use the extra small and medium device grid classes by adding
									<code>.col-xs-*</code>
									<code>.col-md-*</code> to your columns. See the example below for a better idea of how it all works.</p>
								<div class="row show-grid">
									<div class="col-xs-12 col-md-8">.col-xs-12 .col-md-8</div>
									<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
								</div>
								<div class="row show-grid">
									<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
									<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
									<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
								</div>
								<div class="row show-grid">
									<div class="col-xs-6">.col-xs-6</div>
									<div class="col-xs-6">.col-xs-6</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Mobile, tablet, desktop</h3>
							</div>
							<div class="panel-body">
								<p>Build on the previous example by creating even more dynamic and powerful layouts with tablet
									<code>.col-sm-*</code> classes.</p>
								<div class="row show-grid">
									<div class="col-xs-12 col-sm-6 col-md-8">.col-xs-12 .col-sm-6 .col-md-8</div>
									<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
								</div>
								<div class="row show-grid">
									<div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
									<div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
									<div class="clearfix visible-xs-block"></div>
									<div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Responsive column resets</h3>
							</div>
							<div class="panel-body">
								<p>With the four tiers of grids available you're bound to run into issues where, at certain breakpoints, your columns don't clear quite right as one is taller than the other. To fix that, use a combination of a
									<code>.clearfix</code> and our <a href="#responsive-utilities">responsive utility classes</a>.</p>
								<div class="row show-grid">
									<div class="col-xs-6 col-sm-3"> .col-xs-6 .col-sm-3
										<br> Resize your viewport or check it out on your phone for an example.
									</div>
									<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
									<div class="clearfix visible-xs-block"></div>
									<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
									<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Offsetting columns</h3>
							</div>
							<div class="panel-body">
								<p>Move columns to the right using
									<code>.col-md-offset-*</code> classes. These classes increase the left margin of a column by
									<code>*</code> columns. For example,
									<code>.col-md-offset-4</code> moves
									<code>.col-md-4</code> over four columns.</p>
								<div class="row show-grid">
									<div class="col-md-4">.col-md-4</div>
									<div class="col-md-4 col-md-offset-4">.col-md-4 .col-md-offset-4</div>
								</div>
								<div class="row show-grid">
									<div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
									<div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
								</div>
								<div class="row show-grid">
									<div class="col-md-6 col-md-offset-3">.col-md-6 .col-md-offset-3</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Nesting columns</h3>
							</div>
							<div class="panel-body">
								<p>To nest your content with the default grid, add a new
									<code>.row</code> and set of
									<code>.col-sm-*</code> columns within an existing
									<code>.col-sm-*</code> column. Nested rows should include a set of columns that add up to 12 or fewer (it is not required that you use all 12 available columns).</p>
								<div class="row show-grid">
									<div class="col-sm-9"> Level 1: .col-sm-9
										<div class="row show-grid">
											<div class="col-xs-8 col-sm-6"> Level 2: .col-xs-8 .col-sm-6 </div>
											<div class="col-xs-4 col-sm-6"> Level 2: .col-xs-4 .col-sm-6 </div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">Column ordering</h3>
							</div>
							<div class="panel-body">
								<p>Easily change the order of our built-in grid columns with
									<code>.col-md-push-*</code> and
									<code>.col-md-pull-*</code> modifier classes.</p>
								<div class="row show-grid">
									<div class="col-md-9 col-md-push-3">.col-md-9 .col-md-push-3</div>
									<div class="col-md-3 col-md-pull-9">.col-md-3 .col-md-pull-9</div>
								</div>
							</div>
						</div>
						<div class="panel" id="responsive-utilities">
							<div class="panel-heading">
								<h3 class="panel-title">Responsive utilities</h3>
							</div>
							<div class="panel-body">
								<p>For faster mobile-friendly development, use these utility classes for showing and hiding content by device via media query. Use a single or combination of the available classes for toggling content across viewport breakpoints.</p>
								<div class="table-responsive">
									<table class="table table-bordered table-striped responsive-utilities">
										<thead>
											<tr>
												<th></th>
												<th> Extra small devices
													<small>Phones (&lt;768px)</small>
												</th>
												<th> Small devices
													<small>Tablets (≥768px)</small>
												</th>
												<th> Medium devices
													<small>Desktops (≥992px)</small>
												</th>
												<th> Large devices
													<small>Desktops (≥1200px)</small>
												</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">
													<code>.visible-xs-*</code>
												</th>
												<td class="is-visible">Visible</td>
												<td class="is-hidden">Hidden</td>
												<td class="is-hidden">Hidden</td>
												<td class="is-hidden">Hidden</td>
											</tr>
											<tr>
												<th scope="row">
													<code>.visible-sm-*</code>
												</th>
												<td class="is-hidden">Hidden</td>
												<td class="is-visible">Visible</td>
												<td class="is-hidden">Hidden</td>
												<td class="is-hidden">Hidden</td>
											</tr>
											<tr>
												<th scope="row">
													<code>.visible-md-*</code>
												</th>
												<td class="is-hidden">Hidden</td>
												<td class="is-hidden">Hidden</td>
												<td class="is-visible">Visible</td>
												<td class="is-hidden">Hidden</td>
											</tr>
											<tr>
												<th scope="row">
													<code>.visible-lg-*</code>
												</th>
												<td class="is-hidden">Hidden</td>
												<td class="is-hidden">Hidden</td>
												<td class="is-hidden">Hidden</td>
												<td class="is-visible">Visible</td>
											</tr>
										</tbody>
										<tbody>
											<tr>
												<th scope="row">
													<code>.hidden-xs</code>
												</th>
												<td class="is-hidden">Hidden</td>
												<td class="is-visible">Visible</td>
												<td class="is-visible">Visible</td>
												<td class="is-visible">Visible</td>
											</tr>
											<tr>
												<th scope="row">
													<code>.hidden-sm</code>
												</th>
												<td class="is-visible">Visible</td>
												<td class="is-hidden">Hidden</td>
												<td class="is-visible">Visible</td>
												<td class="is-visible">Visible</td>
											</tr>
											<tr>
												<th scope="row">
													<code>.hidden-md</code>
												</th>
												<td class="is-visible">Visible</td>
												<td class="is-visible">Visible</td>
												<td class="is-hidden">Hidden</td>
												<td class="is-visible">Visible</td>
											</tr>
											<tr>
												<th scope="row">
													<code>.hidden-lg</code>
												</th>
												<td class="is-visible">Visible</td>
												<td class="is-visible">Visible</td>
												<td class="is-visible">Visible</td>
												<td class="is-hidden">Hidden</td>
											</tr>
										</tbody>
									</table>
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