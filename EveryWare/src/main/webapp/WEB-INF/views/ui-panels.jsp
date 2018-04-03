<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Panels | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="resources/assets/vendor/dropzone/dropzone.min.css">
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
									<li><a href="ui-panels" class="active">Panels</a></li>
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
							<h1 class="page-title">Panels</h1>
							<p class="page-subtitle">Panel container for various requirements and use-case scenario.</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">UI Elements</a></li>
							<li class="active">Panels</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<!-- PANEL PROGRESS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Progress</h3>
										<div class="right">
											<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
											<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
										</div>
									</div>
									<div class="panel-body">
										<div class="text-center margin-bottom-30">
											<img src="resources/assets/img/sync-illustration.png" alt="Sync">
											<br>
											<br>
											<button type="button" class="btn btn-custom-orange">Sync my data</button>
										</div>
									</div>
									<div class="panel-footer">
										<span class="progress-state-name">Syncing your data...</span>
										<div class="progress-right-percentage">
											<div class="progress progress-xs progress-transparent custom-color-green">
												<div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width:20%"></div>
											</div>
											<span class="percentage">20%</span>
										</div>
									</div>
								</div>
								<!-- END PANEL PROGRESS -->
								<!-- PANEL TAB -->
								<div class="panel panel-tab">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Tab</h3>
										<ul class="nav nav-tabs pull-right">
											<li class="active"><a href="#tab1" data-toggle="tab"><i class="fa fa-user"></i> Tab 1</a></li>
											<li><a href="#tab2" data-toggle="tab"><i class="fa fa-feed"></i> Tab 2</a></li>
											<li><a href="#tab3" data-toggle="tab"><i class="fa fa-gear"></i> Tab 3</a></li>
										</ul>
									</div>
									<div class="panel-body">
										<div class="tab-content no-padding">
											<div class="tab-pane fade in active" id="tab1">
												Objectively repurpose superior content for extensible outsourcing. Objectively underwhelm future-proof technology rather than diverse architectures. Conveniently simplify flexible models with open-source functionalities. Authoritatively formulate world-class outsourcing.
											</div>
											<div class="tab-pane fade" id="tab2">
												Professionally maximize unique portals whereas out-of-the-box interfaces. Monotonectally optimize B2C communities through high-payoff methods of empowerment. Enthusiastically transition intermandated value whereas multidisciplinary portals. Credibly recaptiualize ethical ROI without stand-alone deliverables. Progressively extend progressive networks for one-to-one process improvements.
											</div>
											<div class="tab-pane fade" id="tab3">
												Distinctively underwhelm resource sucking products and market-driven meta-services. Uniquely target granular bandwidth through compelling customer service. Dramatically mesh parallel initiatives.
											</div>
										</div>
									</div>
								</div>
								<!-- END PANEL TAB -->
								<!-- PANEL QUICK NOTE -->
								<div class="panel panel-quick-note quick-note-create">
									<div class="panel-body">
										<form class="form-horizontal" role="form">
											<input type="text" class="form-control title" name="title" placeholder="Title">
											<textarea class="form-control" rows="1" cols="30" name="note-content" placeholder="Add quick note (click here)"></textarea>
										</form>
									</div>
									<div class="panel-footer">
										<div class="btn-group">
											<button type="button" class="btn btn-icon" title="Add Image"><i class="fa fa-image"></i>
												<span class="sr-only">Add Image</span>
											</button>
											<button type="button" class="btn btn-icon" title="Remind Me"><i class="fa fa-bell"></i>
												<span class="sr-only">Remind Me</span>
											</button>
											<button type="button" class="btn btn-icon" title="Share"><i class="fa fa-share-alt"></i>
												<span class="sr-only">Share</span>
											</button>
										</div>
										<button type="button" class="btn btn-primary pull-right"><i class="fa fa-save"></i> Save</button>
									</div>
								</div>
								<!-- END PANEL QUICK NOTE -->
								<!-- PANEL NO PADDING -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel No Padding</h3>
										<div class="right">
											<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
											<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
										</div>
									</div>
									<div class="panel-body no-padding bg-primary text-center">
										<div class="padding-top-30 padding-bottom-30">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
											<h3>No Content Padding</h3>
										</div>
									</div>
								</div>
								<!-- END PANEL NO PADDING -->
							</div>
							<div class="col-md-6">
								<!-- PANEL UPLOAD -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Upload</h3>
									</div>
									<div class="panel-body">
										<p>
											<em>Working demo, please mind your file before uploading</em>
										</p>
										<form id="panel-upload" class="dropzone" action="php/dropzone-upload.php" enctype="multipart/form-data">
											<div class="fallback">
												<input type="file" name="file" multiple>
											</div>
										</form>
									</div>
								</div>
								<!-- END PANEL UPLOAD -->
								<!-- PANEL REFRESH -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Refresh</h3>
										<div class="right">
											<button type="button" class="btn btn-success btn-xs btn-panel-refresh"><i class="fa fa-refresh"></i>
												<span>Refresh</span>
											</button>
										</div>
									</div>
									<div class="panel-body">
										<div class="overlay-refresh">
											<div class="vertical-align-wrap">
												<div class="vertical-align-middle">
													<i class="fa fa-refresh fa-spin"></i>
													<span>Refreshing...</span>
												</div>
											</div>
										</div>
										<div class="alert alert-info"><i class="fa fa-info-circle"></i> Click Refresh button above to simulate panel refresh event</div>
										<table class="table">
											<thead>
												<tr>
													<th>#</th>
													<th>First Name</th>
													<th>Last Name</th>
													<th>Username</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Steve</td>
													<td>Jobs</td>
													<td>@steve</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Simon</td>
													<td>Philips</td>
													<td>@simon</td>
												</tr>
												<tr>
													<td>3</td>
													<td>Jane</td>
													<td>Doe</td>
													<td>@jane</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!-- END PANEL REFRESH -->
								<!-- SAVED NOTES -->
								<div class="quick-note">
									<div class="quick-note-header">
										<h3 class="quick-note-title">Saved Note Example (click)</h3>
									</div>
									<div class="quick-note-content">
										<p>Completely leverage existing customer directed ideas rather than multifunctional customer service. Uniquely formulate economically sound portals whereas professional web services. Proactively productize team building materials without state of the art benefits. Collaboratively re-engineer progressive vortals.</p>
									</div>
								</div>
								<!-- quick note modal -->
								<div class="modal fade" id="quick-note-modal" tabindex="-1" role="dialog" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-body">
												<div class="panel panel-quick-note quick-note-edit">
													<div class="panel-body">
														<form class="form-horizontal" role="form">
															<input type="text" class="form-control title" name="title" value="Saved Note Example" placeholder="Title">
															<textarea class="form-control" rows="7" cols="30" name="note-content" placeholder="Add quick note">Completely leverage existing customer directed ideas rather than multifunctional customer service. Uniquely formulate economically sound portals whereas professional web services. Proactively productize team building materials without state of the art benefits. Collaboratively re-engineer progressive vortals.</textarea>
														</form>
													</div>
													<div class="panel-footer">
														<div class="btn-group">
															<button type="button" class="btn btn-icon" title="Add Image"><i class="fa fa-image"></i>
																<span class="sr-only">Add Image</span>
															</button>
															<button type="button" class="btn btn-icon" title="Remind Me"><i class="fa fa-bell"></i>
																<span class="sr-only">Remind Me</span>
															</button>
															<button type="button" class="btn btn-icon" title="Share"><i class="fa fa-share-alt"></i>
																<span class="sr-only">Share</span>
															</button>
														</div>
														<button type="button" class="btn btn-primary btn-save pull-right"><i class="fa fa-save"></i>
															<span>Save</span>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end quick note modal -->
								<!-- END SAVED NOTES -->
							</div>
						</div>
						<!-- PANEL HEADLINE -->
						<div class="panel panel-headline">
							<div class="panel-heading">
								<h3 class="panel-title">Panel Headline</h3>
								<p class="panel-subtitle">Panel to display most important information</p>
							</div>
							<div class="panel-body">
								<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
							</div>
						</div>
						<!-- END PANEL HEADLINE -->
						<div class="row">
							<div class="col-md-6">
								<!-- PANEL DEFAULT -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Default</h3>
									</div>
									<div class="panel-body">
										<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
									</div>
								</div>
								<!-- END PANEL DEFAULT -->
							</div>
							<div class="col-md-6">
								<!-- PANEL WITH CONTROLS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Right Controls</h3>
										<div class="right">
											<button type="button" class="btn-toggle-collapse"><i class="fa fa-minus"></i></button>
											<button type="button" class="btn-remove"><i class="fa fa-close"></i></button>
										</div>
									</div>
									<div class="panel-body">
										<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
									</div>
								</div>
								<!-- END PANEL WITH CONTROLS -->
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<!-- PANEL WITH CONTEXTUAL MENU -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Contextual Menu</h3>
										<div class="right">
											<div class="dropdown">
												<a href="#" class="toggle-dropdown" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="fa fa-fw fa-refresh"></i>Refresh</a></li>
													<li><a href="#"><i class="fa fa-fw fa-bell-slash-o"></i>Mute</a></li>
													<li><a href="#"><i class="fa fa-fw fa-cog"></i>Settings</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="panel-body">
										<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
									</div>
								</div>
								<!-- END PANEL WITH LINK MENU -->
							</div>
							<div class="col-md-6">
								<!-- PANEL WITH LINK -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Link</h3>
										<div class="right">
											<span class="link"><i class="fa fa-shopping-bag"></i> <a href="#">View all purchases (846)</a></span>
										</div>
									</div>
									<div class="panel-body">
										<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
									</div>
								</div>
								<!-- END PANEL WITH LINK -->
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<!-- PANEL WITH BUTTON -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Button</h3>
										<div class="right">
											<button type="button" class="btn btn-primary"><i class="fa fa-save"></i>Save</button>
										</div>
									</div>
									<div class="panel-body">
										<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
									</div>
								</div>
								<!-- END PANEL WITH BUTTON -->
							</div>
							<div class="col-md-6">
								<!-- PANEL NO DIVIDER HEADING -->
								<div class="panel">
									<div class="panel-heading no-divider">
										<h3 class="panel-title">Panel No Divider Heading</h3>
										<div class="right">
											<div class="dropdown">
												<a href="#" class="toggle-dropdown" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="fa fa-fw fa-refresh"></i>Refresh</a></li>
													<li><a href="#"><i class="fa fa-fw fa-bell-slash-o"></i>Mute</a></li>
													<li><a href="#"><i class="fa fa-fw fa-cog"></i>Settings</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="panel-body">
										<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
									</div>
								</div>
								<!-- END PANEL NO DIVIDER HEADING -->
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<!-- PANEL WITH RIGHT TEXT -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Right Text</h3>
										<div class="right">
											<span class="panel-info">Note: 12 hours data</span>
										</div>
									</div>
									<div class="panel-body">
										<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
									</div>
								</div>
								<!-- END PANEL WITH RIGHT TEXT -->
							</div>
							<div class="col-md-6">
								<!-- PANEL SCROLLING -->
								<div id="panel-scrolling-demo" class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Panel Scrolling</h3>
									</div>
									<div class="panel-body">
										<div class="scroll-area">
											<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
											<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
											<p>Objectively network visionary methodologies via best-of-breed users. Phosfluorescently initiate go forward leadership skills before an expanded array of infomediaries. Monotonectally incubate web-enabled communities rather than process-centric.</p>
										</div>
									</div>
								</div>
								<!-- END PANEL SCROLLING -->
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
		<script src="resources/assets/vendor/dropzone/dropzone.min.js"></script>
		<script src="resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
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
			Dropzone.autoDiscover = false;
			$('#panel-upload').dropzone(
			{
				url: "php/dropzone-upload.php",
				addRemoveLinks: true,
				maxFilesize: 0.5,
				maxFiles: 5,
				acceptedFiles: 'image/*, application/pdf, .txt',
				dictResponseError: 'File Upload Error.'
			});
		});
		</script>
	</body>
</html>