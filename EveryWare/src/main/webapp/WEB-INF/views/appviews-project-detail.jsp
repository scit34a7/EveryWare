<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Project Detail | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css">
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
							<a href="#appViews" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="active"><i class="ti-layout-tab-window"></i> <span class="title">App Views</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="appViews" class="collapse in">
								<ul class="submenu">
									<li><a href="appviews-project-detail" class="active">Project Details</a></li>
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
							<h1 class="page-title">Project Detail</h1>
							<p class="page-subtitle">A detailed view about project information</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">App Views</a></li>
							<li class="active">Project Detail</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-8">
								<div class="panel">
									<div class="project-heading">
										<div class="row">
											<div class="col-md-9">
												<div class="media">
													<div class="media-left">
														<img src="resources/assets/img/project-logo.png" class="project-logo" alt="Project Logo">
													</div>
													<div class="media-body">
														<h2 class="project-title">B2B eCommerce Project</h2>
														<span class="label label-success status">RUNNING</span>
													</div>
												</div>
											</div>
											<div class="col-md-3 text-right">
												<div class="btn-group">
													<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">ADD NEW
														<span class="caret"></span>
													</button>
													<ul class="dropdown-menu dropdown-menu-right" role="menu">
														<li><a href="#">Milestone</a></li>
														<li><a href="#">Task</a></li>
														<li><a href="#">People</a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="project-subheading">
											<div class="layout-table project-metrics">
												<div class="cell">
													<div class="main-info-item">
														<span class="title">DATE START</span>
														<span class="value">Jul 23, 2017</span>
													</div>
												</div>
												<div class="cell">
													<div class="main-info-item">
														<span class="title">DATE END</span>
														<span class="value">Oct 01, 2017</span>
													</div>
												</div>
												<div class="cell">
													<div class="main-info-item">
														<span class="title">EST. VALUE</span>
														<span class="value">$21,847</span>
													</div>
												</div>
												<div class="cell">
													<div class="main-info-item">
														<span class="title">PROGRESS</span>
														<div id="project-progress" class="progress progress-transparent custom-color-orange2">
															<div class="progress-bar" data-transitiongoal="85"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="panel-body">
										<div class="project-info">
											<h3 class="info-heading">DESCRIPTION</h3>
											<p class="project-description">Audire saperet necessitatibus no eam. No impedit postulant scribentur quo. Choro quidam mel id, pri te brute velit propriae, et cum sint latine docendi. Cu sed mutat posidonium, et duo exerci graece. No aliquip lobortis sit. Alii rebum ei mei. Eu tollit putent has, consul impedit accusata quo ad, veri mazim has id. Tamquam vocibus oportere ex mei, oporteat convenire cotidieque eu eos.</p>
										</div>
										<div class="project-info">
											<h3 class="info-heading">MILESTONES</h3>
											<div class="panel-group project-accordion">
												<!-- project milestone -->
												<div class="panel project-milestone">
													<div class="panel-heading">
														<h4 class="panel-title">
															<a href="#collapse1" data-toggle="collapse" data-parent="#accordion">
																<span class="milestone-title"><i class="fa fa-check icon-indicator text-success"></i> Research on eCommerce Trends</span>
																<span class="label label-success label-transparent">PAID</span>
																<i class="fa fa-minus-circle toggle-icon"></i>
															</a>
														</h4>
													</div>
													<div id="collapse1" class="panel-collapse collapse in">
														<div class="panel-body">
															<div class="milestone-section">
																<h4 class="milestone-heading">DESCRIPTION</h4>
																<p class="milestone-description">Velit elitr dolore eu pri, ut has vero imperdiet dissentiet, sit magna blandit reformidans in. Alia commune disputationi vis no, natum rebum melius in ius.</p>
															</div>
															<div class="milestone-section layout-table project-metrics">
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DATE START</span>
																		<span class="value">Jul 23, 2017</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DATE END</span>
																		<span class="value">Aug 01, 2017</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">EST. VALUE</span>
																		<span class="value">$1,200</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DELIVERABLE</span>
																		<span class="value">
																			<i class="fa fa-file-pdf-o"></i>
																			<a href="#">Research_FINAL.pdf</a>
																		</span>
																	</div>
																</div>
															</div>
															<div class="milestone-section">
																<div class="table-responsive">
																	<table class="table table-striped table-project-tasks">
																		<thead>
																			<tr>
																				<th>TASK</th>
																				<th>DEADLINE</th>
																				<th>PROGRESS</th>
																				<th>ACTIONS</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td colspan="4" class="divider">COMPLETED TASK</td>
																			</tr>
																			<tr>
																				<td>
																					<span class="task-indicator success"></span> Functional Specs</td>
																				<td>Jul 30, 2017</td>
																				<td>100%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<span class="task-indicator success"></span> Design Specs</td>
																				<td>Aug 01, 2017</td>
																				<td>100%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
														<div class="panel-footer">
															<a href="#" class="btn btn-default"><i class="fa fa-pencil"></i> EDIT MILESTONE</a>
															<a href="#" class="btn btn-default"><i class="fa fa-cloud-upload"></i> UPLOAD</a>
															<a href="#" class="btn btn-success"><i class="fa fa-file"></i> VIEW INVOICE</a>
														</div>
													</div>
												</div>
												<!-- end project milestone -->
												<!-- project milestone -->
												<div class="panel project-milestone">
													<div class="panel-heading">
														<h4 class="panel-title">
															<a href="#collapse2" data-toggle="collapse" data-parent="#accordion" class="collapsed">
																<span class="milestone-title"><i class="fa fa-check icon-indicator text-success"></i> Business Requirements</span>
																<span class="label label-danger label-transparent">DUE</span>
																<i class="fa fa-plus-circle toggle-icon"></i>
															</a>
														</h4>
													</div>
													<div id="collapse2" class="panel-collapse collapse">
														<div class="panel-body">
															<div class="milestone-section">
																<h4 class="milestone-heading">DESCRIPTION</h4>
																<p class="milestone-description">Velit elitr dolore eu pri, ut has vero imperdiet dissentiet, sit magna blandit reformidans in. Alia commune disputationi vis no, natum rebum melius in ius.</p>
															</div>
															<div class="milestone-section layout-table project-metrics">
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DATE START</span>
																		<span class="value">Aug 01, 2017</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DATE END</span>
																		<span class="value">Sep 15, 2017</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">EST. VALUE</span>
																		<span class="value">$15,600</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DELIVERABLE</span>
																		<span class="value">
																			<i class="fa fa-file-archive-o"></i>
																			<a href="#">BusinessReqs_FINAL.zip</a>
																		</span>
																	</div>
																</div>
															</div>
															<div class="milestone-section">
																<div class="table-responsive">
																	<table class="table table-striped table-project-tasks">
																		<thead>
																			<tr>
																				<th>TASK</th>
																				<th>DEADLINE</th>
																				<th>PROGRESS</th>
																				<th>ACTIONS</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td colspan="4" class="divider">COMPLETED TASK</td>
																			</tr>
																			<tr>
																				<td>
																					<span class="task-indicator success"></span> Functional Gathering</td>
																				<td>Jul 30, 2017</td>
																				<td>100%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<span class="task-indicator success"></span> Features and Specs</td>
																				<td>Aug 10, 2017</td>
																				<td>100%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
														<div class="panel-footer">
															<a href="#" class="btn btn-default"><i class="fa fa-pencil"></i> EDIT MILESTONE</a>
															<a href="#" class="btn btn-default"><i class="fa fa-cloud-upload"></i> UPLOAD</a>
															<a href="#" class="btn btn-success"><i class="fa fa-file"></i> VIEW INVOICE</a>
														</div>
													</div>
												</div>
												<!-- end project milestone -->
												<!-- project milestone -->
												<div class="panel project-milestone">
													<div class="panel-heading">
														<h4 class="panel-title">
															<a href="#collapse3" data-toggle="collapse" data-parent="#accordion" class="collapsed">
																<span class="milestone-title"><i class="fa fa-spinner icon-indicator custom-text-blue3"></i> Phase 1 Project Delivery</span>
																<span class="note">7 days until deadline</span>
																<i class="fa fa-plus-circle toggle-icon"></i>
															</a>
														</h4>
													</div>
													<div id="collapse3" class="panel-collapse collapse">
														<div class="panel-body">
															<div class="milestone-section">
																<h4 class="milestone-heading">DESCRIPTION</h4>
																<p class="milestone-description">Velit elitr dolore eu pri, ut has vero imperdiet dissentiet, sit magna blandit reformidans in. Alia commune disputationi vis no, natum rebum melius in ius.</p>
															</div>
															<div class="milestone-section layout-table project-metrics">
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DATE START</span>
																		<span class="value">Jul 23, 2017</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DATE END</span>
																		<span class="value">Oct 01, 2017</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">EST. VALUE</span>
																		<span class="value">$21,847</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DELIVERABLE</span>
																		<span class="value">
																			<i class="fa fa-file-archive-o"></i>
																			<a href="#">project_source_main.zip</a>
																		</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="panel-footer">
															<a href="#" class="btn btn-default"><i class="fa fa-pencil"></i> EDIT MILESTONE</a>
															<a href="#" class="btn btn-default"><i class="fa fa-cloud-upload"></i> UPLOAD</a>
															<a href="#" class="btn btn-success"><i class="fa fa-file"></i> CREATE INVOICE</a>
														</div>
													</div>
												</div>
												<!-- end project milestone -->
												<!-- project milestone -->
												<div class="panel project-milestone">
													<div class="panel-heading">
														<h4 class="panel-title">
															<a href="#collapse4" data-toggle="collapse" data-parent="#accordion" class="collapsed">
																<span class="milestone-title"><i class="fa fa-spinner icon-indicator custom-text-blue3"></i> UI Design</span> <i class="fa fa-minus-circle toggle-icon"></i>
															</a>
														</h4>
													</div>
													<div id="collapse4" class="panel-collapse collapse in">
														<div class="panel-body">
															<div class="milestone-section">
																<h4 class="milestone-heading">DESCRIPTION</h4>
																<p class="milestone-description">Velit elitr dolore eu pri, ut has vero imperdiet dissentiet, sit magna blandit reformidans in. Alia commune disputationi vis no, natum rebum melius in ius.</p>
															</div>
															<div class="milestone-section layout-table project-metrics">
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DATE START</span>
																		<span class="value">Jul 23, 2017</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DATE END</span>
																		<span class="value">Oct 01, 2017</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">EST. VALUE</span>
																		<span class="value">$21,847</span>
																	</div>
																</div>
																<div class="cell">
																	<div class="main-info-item">
																		<span class="title">DELIVERABLE</span>
																		<span class="value">
																			<i class="fa fa-file-archive-o"></i>
																			<a href="#">project_source_main.zip</a>
																		</span>
																	</div>
																</div>
															</div>
															<div class="milestone-section">
																<div class="table-responsive">
																	<table class="table table-striped table-project-tasks">
																		<thead>
																			<tr>
																				<th>TASK</th>
																				<th>DEADLINE</th>
																				<th>PROGRESS</th>
																				<th>ACTIONS</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td>
																					<span class="task-indicator warning"></span> Wireframing</td>
																				<td>Jul 27, 2017
																					<span class="text-muted">(9 days)</span>
																				</td>
																				<td>95%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<span class="task-indicator warning"></span> Create style guide</td>
																				<td>Jul 23, 2017
																					<span class="text-muted">(2 days)</span>
																				</td>
																				<td>75%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<span class="task-indicator danger"></span> Design Draft</td>
																				<td>Jul 12, 2017
																					<span class="text-danger">(+5 days)</span>
																				</td>
																				<td>80%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																			<tr>
																				<td colspan="4" class="divider">COMPLETED TASK</td>
																			</tr>
																			<tr>
																				<td>
																					<span class="task-indicator success"></span> Functional Specs</td>
																				<td>Jul 27, 2017</td>
																				<td>100%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<span class="task-indicator success"></span> Design Specs</td>
																				<td>Jul 27, 2017</td>
																				<td>100%</td>
																				<td>
																					<span class="actions">
																						<a href="#"><i class="fa fa-eye"></i></a>
																						<a href="#"><i class="fa fa-pencil"></i></a>
																						<a href="#"><i class="fa fa-trash"></i></a>
																					</span>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
														<div class="panel-footer">
															<a href="#" class="btn btn-default"><i class="fa fa-pencil"></i> EDIT MILESTONE</a>
															<a href="#" class="btn btn-default"><i class="fa fa-cloud-upload"></i> UPLOAD</a>
															<a href="#" class="btn btn-success"><i class="fa fa-file"></i> CREATE INVOICE</a>
														</div>
													</div>
												</div>
												<!-- end project milestone -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<!-- project team -->
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Project Team</h4>
										<div class="right">
											<button type="button" class="btn btn-primary">
												<span class="sr-only">Add Contact</span>
												<i class="fa fa-user-plus"></i>
											</button>
										</div>
									</div>
									<div class="panel-body">
										<ul class="list-unstyled list-contacts">
											<li>
												<div class="media">
													<img src="resources/assets/img/people/female3.png" class="picture" alt="">
													<span class="status online"></span>
												</div>
												<div class="info">
													<span class="name">Theresa Santos</span>
													<span class="title">Team Leader</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
											<li>
												<div class="media">
													<div class="picture custom-bg-blue3">MB</div>
													<span class="status"></span>
												</div>
												<div class="info">
													<span class="name">Michael Bradley</span>
													<span class="email">Business Analyst</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
											<li>
												<div class="media">
													<img src="resources/assets/img/people/male1.png" class="picture" alt="">
													<span class="status online"></span>
												</div>
												<div class="info">
													<span class="name">Bruce Bowman</span>
													<span class="email">UI Designer</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
											<li>
												<div class="media">
													<img src="resources/assets/img/people/female4.png" class="picture" alt="">
													<span class="status"></span>
												</div>
												<div class="info">
													<span class="name">Karen Price</span>
													<span class="email">Legal</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
											<li>
												<div class="media">
													<img src="resources/assets/img/people/female5.png" class="picture" alt="">
													<span class="status online"></span>
												</div>
												<div class="info">
													<span class="name">Martha Mendoza</span>
													<span class="email">Full-Stack Developer</span>
												</div>
												<div class="controls">
													<a href="#"><i class="fa fa-commenting-o"></i></a>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<!-- end project team -->
								<!-- resource files -->
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Resource Files</h4>
									</div>
									<div class="panel-body">
										<ul class="list-unstyled list-justify list-file-simple">
											<li><a href="#"><i class="fa fa-file-word-o"></i>Proposal.docx</a>
												<span>4 MB</span>
											</li>
											<li><a href="#"><i class="fa fa-file-pdf-o"></i>Final_Presentation.ppt</a>
												<span>20 MB</span>
											</li>
											<li><a href="#"><i class="fa fa-file-zip-o"></i>Phase1_AllFiles.zip</a>
												<span>315 MB</span>
											</li>
											<li><a href="#"><i class="fa fa-file-excel-o"></i>Meeting_Schedule.xls</a>
												<span>1 MB</span>
											</li>
										</ul>
									</div>
									<div class="panel-footer text-right">
										<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-cloud-upload"></i> UPLOAD FILE</a>
									</div>
								</div>
								<!-- end resource files -->
								<!-- project statistic -->
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Project Statistic</h4>
									</div>
									<div class="panel-body">
										<ul class="list-unstyled list-widget-vertical no-border">
											<li>
												<div class="widget-metric_7">
													<i class="fa fa-tasks icon custom-text-blue3"></i>
													<div class="right">
														<span class="value">89 / 142</span>
														<span class="title">Task Delivered</span>
													</div>
												</div>
											</li>
											<li>
												<div class="widget-metric_7">
													<i class="fa fa-money icon custom-text-green"></i>
													<div class="right">
														<span class="value">$5,834 / $21,847</span>
														<span class="title">Payment made</span>
													</div>
												</div>
											</li>
											<li>
												<div class="widget-metric_7">
													<i class="fa fa-calendar-o icon custom-text-orange"></i>
													<div class="right">
														<span class="value">165 / 312</span>
														<span class="title">Days elapsed</span>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<!-- end project statistic -->
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
		<script src="resources/assets/vendor/bootstrap-progressbar/js/bootstrap-progressbar.min.js"></script>
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
			// project progress
			$('#project-progress .progress-bar').progressbar(
			{
				display_text: 'fill'
			});
			// accordion toggle collapse
			$('.project-accordion [data-toggle="collapse"]').on('click', function()
			{
				$(this).find('.toggle-icon').toggleClass('fa-minus-circle fa-plus-circle');
			});
		});
		</script>
	</body>
</html>