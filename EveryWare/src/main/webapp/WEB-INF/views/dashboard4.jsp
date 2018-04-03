<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="fullscreen-bg">
	<head>
		<title>Dashboard v4 | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="resources/assets/vendor/jqvmap/jqvmap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/slick/slick.css">
		<link rel="stylesheet" href="resources/assets/vendor/slick/slick-theme.css">
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
	<body class="layout-topnav">
		<!-- WRAPPER -->
		<div id="wrapper">
			<!-- NAVBAR -->
			<nav class="navbar navbar-default navbar-fixed-top">
				<!-- top bar -->
				<div class="top-bar clearfix">
					<div class="container-bar">
						<div class="brand">
							<a href="index">
								<img src="resources/assets/img/logo-white-small.png" alt="Klorofil Pro Logo" class="img-responsive logo">
							</a>
						</div>
						<div class="navbar-right">
							<form class="navbar-form navbar-left search-form">
								<input type="text" value="" class="form-control" placeholder="Type keyword here...">
								<button type="button" class="btn btn-default"><i class="fa fa-search"></i></button>
							</form>
						</div>
					</div>
				</div>
				<!-- end top bar -->
				<!-- main navigation -->
				<div id="navbar-menu" class="bottom-bar clearfix">
					<div class="navbar-header">
						<div class="brand visible-xs">
							<a href="index">
								<img src="resources/assets/img/logo-dark.png" alt="Klorofil Pro Logo" class="img-responsive logo">
							</a>
						</div>
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
							<i class="ti-menu"></i>
						</button>
					</div>
					<div class="navbar-collapse collapse" id="main-nav">
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="index" class="active" data-toggle="dropdown"><i class="ti-dashboard"></i> <span>Dashboard</span> <i class="ti-angle-down icon-submenu"></i></a>
								<ul class="dropdown-menu">
									<li><a href="index">Dashboard v1</a></li>
									<li><a href="index2">Dashboard v2</a></li>
									<li><a href="index3">Dashboard v3</a></li>
									<li><a href="index4" class="active">Dashboard v4 <span class="label label-success">NEW</span></a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" data-toggle="dropdown"><i class="ti-layout"></i> <span>Layouts</span> <i class="ti-angle-down icon-submenu"></i></a>
								<ul class="dropdown-menu">
									<li>
										<a href="layout-topnav">Top Navigation <span class="label label-success">NEW</span></a>
									</li>
									<li>
										<a href="layout-minified">Layout Minified</a>
									</li>
									<li>
										<a href="layout-fullwidth">Layout Fullwidth</a>
									</li>
									<li>
										<a href="layout-default">Layout Default</a>
									</li>
									<li>
										<a href="layout-grid">Grid</a>
									</li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" data-toggle="dropdown"><i class="ti-menu"></i> <span>Multilevel Menu</span> <i class="ti-angle-down icon-submenu"></i></a>
								<ul class="dropdown-menu">
									<li class="dropdown dropdown-sub">
										<a href="#" data-toggle="dropdown">Submenu 1 <i class="icon-submenu ti-angle-right"></i></a>
										<ul class="dropdown-menu">
											<li><a href="#">Another menu level</a></li>
											<li><a href="#">Another menu level</a></li>
										</ul>
									</li>
									<li class="dropdown dropdown-sub">
										<a href="#" data-toggle="dropdown" class="active">Submenu 2 <i class="icon-submenu ti-angle-right"></i></a>
										<ul class="dropdown-menu">
											<li><a href="#">Another menu level</a></li>
											<li><a href="#" class="active">Another menu level</a></li>
											<li><a href="#">Another menu level</a></li>
										</ul>
									</li>
									<li><a href="#">Submenu 3</a></li>
								</ul>
							</li>
							<li><a href="index"><i class="ti-back-left"></i> <span>Back to Default</span></a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="hidden-xs hidden-sm">
								<a href="#" class="btn-toggle-rightsidebar">
									<i class="ti-layout-sidebar-right"></i>
								</a>
							</li>
							<li class="dropdown hidden-xs hidden-sm">
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
							<li class="dropdown hidden-xs hidden-sm">
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
									<span>Samuel</span> <i class="ti-angle-down icon-submenu"></i></a>
								<ul class="dropdown-menu logged-user-menu">
									<li><a href="#"><i class="ti-user"></i> <span>My Profile</span></a></li>
									<li><a href="#"><i class="ti-email"></i> <span>Message</span></a></li>
									<li><a href="#"><i class="ti-settings"></i> <span>Settings</span></a></li>
									<li><a href="#"><i class="ti-power-off"></i> <span>Logout</span></a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<!-- end main navigation -->
			</nav>
			<!-- END NAVBAR -->
			<!-- MAIN -->
			<div class="main">
				<!-- MAIN CONTENT -->
				<div class="main-content">
					<div class="container">
						<div class="content-heading clearfix">
							<div class="heading-left">
								<h1 class="page-title">Dashboard v4</h1>
								<p class="page-subtitle">Dashboard with top navigation layout and centered content</p>
							</div>
							<ul class="breadcrumb">
								<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
								<li><a href="#">Dashboards</a></li>
								<li class="active">Dashboard v4</li>
							</ul>
						</div>
						<div class="row">
							<div class="col-md-9">
								<!-- METRICS -->
								<div class="row">
									<div class="col-md-4">
										<div class="widget widget-metric_8">
											<div class="heading clearfix">
												<span class="title">MILEAGE</span>
												<div class="dropdown">
													<a href="#" class="toggle-dropdown" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu dropdown-menu-right">
														<li><a href="#"><i class="fa fa-refresh"></i> Refresh</a></li>
														<li><a href="#"><i class="fa fa-pencil"></i> Modify</a></li>
													</ul>
												</div>
											</div>
											<i class="ti-truck custom-text-blue4"></i>
											<span class="value">85%</span>
											<div class="progress progress-xs progress-transparent custom-color-blue4">
												<div class="progress-bar" data-transitiongoal="85"></div>
											</div>
											<p class="info">115 miles remanining</p>
										</div>
									</div>
									<div class="col-md-4">
										<div class="widget widget-metric_8">
											<div class="heading clearfix">
												<span class="title">STORAGE</span>
												<div class="dropdown">
													<a href="#" class="toggle-dropdown" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu dropdown-menu-right">
														<li><a href="#"><i class="fa fa-refresh"></i> Refresh</a></li>
														<li><a href="#"><i class="fa fa-pencil"></i> Modify</a></li>
													</ul>
												</div>
											</div>
											<i class="ti-package custom-text-purple"></i>
											<span class="value">34%</span>
											<div class="progress progress-xs progress-transparent custom-color-purple">
												<div class="progress-bar" data-transitiongoal="34"></div>
											</div>
											<p class="info">You have 522 free space</p>
										</div>
									</div>
									<div class="col-md-4">
										<div class="widget widget-metric_8">
											<div class="heading clearfix">
												<span class="title">USED RESOURCES</span>
												<div class="dropdown">
													<a href="#" class="toggle-dropdown" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu dropdown-menu-right">
														<li><a href="#"><i class="fa fa-refresh"></i> Refresh</a></li>
														<li><a href="#"><i class="fa fa-pencil"></i> Modify</a></li>
													</ul>
												</div>
											</div>
											<i class="ti-settings custom-text-green3"></i>
											<span class="value">250/500</span>
											<div class="progress progress-xs progress-transparent custom-color-green3">
												<div class="progress-bar" data-transitiongoal="50"></div>
											</div>
											<p class="info"><i class="ti-arrow-up icon-change"></i> +15% than last month</p>
										</div>
									</div>
								</div>
								<!-- END METRICS -->
								<!-- CAMPAIGN RESULT -->
								<div class="panel panel-tab">
									<div class="panel-heading">
										<h3 class="panel-title">Campaign Result</h3>
										<ul class="nav nav-tabs pull-right">
											<li class="active"><a href="#tab1" data-toggle="tab"><i class="fa fa-user-circle"></i> Social</a></li>
											<li><a href="#tab2" data-toggle="tab"><i class="fa fa-envelope"></i> Newsletter</a></li>
											<li><a href="#tab3" data-toggle="tab"><i class="fa fa-pie-chart"></i> Visits</a></li>
										</ul>
									</div>
									<div class="panel-body">
										<div class="tab-content no-padding">
											<!-- tab 1 -->
											<div class="tab-pane fade in active" id="tab1">
												<div class="top margin-bottom-50">
													<div class="row">
														<div class="col-sm-10">
															<div class="period font-13">
																<span>Aug 05, 2017 - Aug 11, 2017</span>
																<br>
																<span class="previous text-muted">Jun 29, 2017 - Aug 4, 2017 (previous)</span>
															</div>
															<div class="margin-bottom-30 visible-xs"></div>
														</div>
														<div class="col-sm-2">
															<select class="form-control">
																<option>7 Days</option>
																<option>1 Month</option>
																<option>3 Months</option>
															</select>
														</div>
													</div>
												</div>
												<div class="panel-layout dashed-separator">
													<div class="panel-cols-2">
														<div class="widget-metric_9 text-center">
															<span class="title">Engagement</span>
															<span class="value">23,745</span>
															<span class="percentage text-indicator-green"><i class="fa fa-sort-up icon-up"></i> 14.86%</span>
															<span class="text-muted">vs. 15,443 (previous)</span>
															<div class="inlinesparkline margin-top-50">26,68,35,38,53,95,114,87,114</div>
														</div>
													</div>
													<div class="panel-cols-2">
														<div class="widget-metric_9 text-center">
															<span class="title">Page Reach</span>
															<span class="value">793,148</span>
															<span class="percentage text-indicator-red"><i class="fa fa-sort-down icon-down"></i> 8.13%</span>
															<span class="text-muted">vs. 701,954 (previous)</span>
															<div class="inlinesparkline margin-top-50">35,68,55,60,65,87,77,68,55</div>
														</div>
													</div>
												</div>
											</div>
											<!-- end tab 1 -->
											<!-- tab 2 -->
											<div class="tab-pane fade" id="tab2">
												<div class="row">
													<div class="col-md-3">
														<strong>Top Countries</strong>
														<table class="table table-minimal table-no-border">
															<thead>
																<tr>
																	<th>COUNTRY</th>
																	<th>OPENS</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>United States</td>
																	<td>2936</td>
																</tr>
																<tr>
																	<td>Algeria</td>
																	<td>2812</td>
																</tr>
																<tr>
																	<td>Russia</td>
																	<td>2735</td>
																</tr>
																<tr>
																	<td>France</td>
																	<td>2674</td>
																</tr>
																<tr>
																	<td>Mexico</td>
																	<td>2584</td>
																</tr>
																<tr>
																	<td>Germany</td>
																	<td>1986</td>
																</tr>
																<tr>
																	<td>Brazil</td>
																	<td>1921</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="col-md-9">
														<div id="map-email-opens" style="height: 350px;"></div>
													</div>
												</div>
											</div>
											<!-- end tab 2 -->
											<!-- tab 3 -->
											<div class="tab-pane fade" id="tab3">
												<div class="panel-layout dashed-separator">
													<div class="panel-cols-2">
														<h3 class="panel-content-title">Referrals</h3>
														<ul class="list-unstyled list-referrals">
															<li>
																<p>
																	<span class="value">3,454</span>
																	<span class="text-muted">visits from Facebook</span>
																</p>
																<div class="progress progress-xs progress-transparent custom-color-blue">
																	<div class="progress-bar" role="progressbar" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100" style="width:87%"></div>
																</div>
															</li>
															<li>
																<p>
																	<span class="value">2,102</span>
																	<span class="text-muted">visits from Twitter</span>
																</p>
																<div class="progress progress-xs progress-transparent custom-color-purple">
																	<div class="progress-bar" role="progressbar" aria-valuenow="34" aria-valuemin="0" aria-valuemax="100" style="width:34%"></div>
																</div>
															</li>
															<li>
																<p>
																	<span class="value">2,874</span>
																	<span class="text-muted">visits from Affiliates</span>
																</p>
																<div class="progress progress-xs progress-transparent custom-color-green">
																	<div class="progress-bar" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="width:67%"></div>
																</div>
															</li>
															<li>
																<p>
																	<span class="value">2,874</span>
																	<span class="text-muted">visits from Search</span>
																</p>
																<div class="progress progress-xs progress-transparent custom-color-yellow">
																	<div class="progress-bar" role="progressbar" aria-valuenow="54" aria-valuemin="0" aria-valuemax="100" style="width:54%"></div>
																</div>
															</li>
														</ul>
													</div>
													<div class="panel-cols-2">
														<h3 class="panel-content-title">Traffic Sources</h3>
														<div id="traffic-sources-chart"></div>
													</div>
												</div>
											</div>
											<!-- end tab 3 -->
										</div>
									</div>
								</div>
								<!-- END CAMPAIGN RESULT -->
								<!-- STOCK INFO -->
								<div class="widget widget-carousel">
									<div class="item">
										<div class="widget-metric_10">
											<span class="title">GOOGL</span>
											<span class="value">
												<span class="number">930.50</span>
												<span class="symbol">USD</span>
											</span>
											<span class="percentage text-indicator-red"><i class="fa fa-angle-down icon-down"></i> 6.39 (0.68%)</span>
										</div>
									</div>
									<div class="item">
										<div class="widget-metric_10">
											<span class="title">AMZN</span>
											<span class="value">
												<span class="number">945.26</span>
												<span class="symbol">USD</span>
											</span>
											<span class="percentage text-indicator-green"><i class="fa fa-angle-up icon-up"></i> 7.19 (0.75%)</span>
										</div>
									</div>
									<div class="item">
										<div class="widget-metric_10">
											<span class="title">FB</span>
											<span class="value">
												<span class="number">166.32</span>
												<span class="symbol">USD</span>
											</span>
											<span class="percentage text-indicator-red"><i class="fa fa-angle-down icon-down"></i> 1.42 (0.75%)</span>
										</div>
									</div>
									<div class="item">
										<div class="widget-metric_10">
											<span class="title">AAPL</span>
											<span class="value">
												<span class="number">162.32</span>
												<span class="symbol">USD</span>
											</span>
											<span class="percentage text-indicator-green"><i class="fa fa-angle-up icon-up"></i> 0.82 (0.51%)</span>
										</div>
									</div>
									<div class="item">
										<div class="widget-metric_10">
											<span class="title">TWTR</span>
											<span class="value">
												<span class="number">16.89</span>
												<span class="symbol">USD</span>
											</span>
											<span class="percentage text-indicator-green"><i class="fa fa-angle-up icon-up"></i> 0.12 (0.72%)</span>
										</div>
									</div>
									<div class="item">
										<div class="widget-metric_10">
											<span class="title">BABA</span>
											<span class="value">
												<span class="number">168.98</span>
												<span class="symbol">USD</span>
											</span>
											<span class="percentage text-indicator-red"><i class="fa fa-angle-down icon-down"></i> 0.70 (0.42%)</span>
										</div>
									</div>
								</div>
								<!-- END STOCK INFO -->
							</div>
							<div class="col-md-3">
								<!-- VISIT DURATION -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Visit Duration</h3>
									</div>
									<div class="panel-body">
										<canvas id="horizontalbar-chart" height="250"></canvas>
									</div>
								</div>
								<!-- END VISIT DURATION -->
								<!-- CUSTOMER SATISFACTION -->
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
								<!-- END CUSTOMER SATISFACTION -->
								<!-- SALES CHART -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Sales</h3>
									</div>
									<div class="panel-body no-padding-bottom">
										<table class="table table-invisible">
											<thead>
												<tr>
													<th>Period</th>
													<th>Revenue</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="text-muted">This Week</td>
													<td class="text-right">$1207</td>
												</tr>
												<tr>
													<td class="text-muted">This Month</td>
													<td class="text-right">$15821</td>
												</tr>
											</tbody>
										</table>
										<canvas id="sales-chart" height="220"></canvas>
									</div>
								</div>
								<!-- END SALES CHART -->
							</div>
						</div>
						<div class="row">
							<div class="col-md-4 col-sm-6">
								<div class="widget widget-resume">
									<div class="resume-header">
										<div class="left">
											<a href="#">
												<img src="resources/assets/img/people/male6.png" class="profile-image" alt="">
											</a>
											<div class="bio-text">
												<a href="#" class="name">Eugene Diaz</a>
												<span class="title">UI Director</span>
											</div>
										</div>
										<div class="right">
											<button type="button" class="btn btn-primary btn-outline"><i class="fa fa-plus"></i>
												<span>Follow</span>
											</button>
										</div>
									</div>
									<ul class="list-unstyled list-resume-experience">
										<li class="experience">
											<div class="left">
												<div class="company-logo dropbox-bg">
													<i class="fa fa-dropbox"></i>
												</div>
												<div class="detail">
													<span class="company-name">Dropbox</span>
													<span class="title">UI Team Lead</span>
												</div>
											</div>
											<span class="period">2016 - present</span>
										</li>
										<li class="experience">
											<div class="left">
												<div class="company-logo dribbble-bg">
													<i class="fa fa-dribbble"></i>
												</div>
												<div class="detail">
													<span class="company-name">Dribbble</span>
													<span class="title">UI Designer</span>
												</div>
											</div>
											<span class="period">2014 - 2016</span>
										</li>
									</ul>
									<div class="resume-footer">
										<div class="skills">
											<div class="row">
												<div class="col-xs-2">
													<span class="label-text">Skills</span>
												</div>
												<div class="col-xs-10">
													<ul class="list-unstyled list-inline list-tags">
														<li>
															<a href="#" class="tag tag-green2">UI Design</a>
														</li>
														<li>
															<a href="#" class="tag tag-orange2">UX</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<!-- CUSTOMER SUPPORT -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Customer Support</h3>
									</div>
									<div class="panel-body">
										<h3 class="panel-content-title text-center">Chat Volume</h3>
										<canvas id="chat-volume-chart" height="135"></canvas>
										<div class="row margin-top-30">
											<div class="col-xs-6">
												<div class="widget-metric_3 text-center">
													<span class="title text-muted">Total Agents</span>
													<span class="value">75</span>
												</div>
											</div>
											<div class="col-xs-6">
												<div class="widget-metric_3 text-center">
													<span class="title text-muted">Rating</span>
													<span class="value">4.8</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END CUSTOMER SUPPORT -->
							</div>
							<div class="col-md-4 col-sm-6">
								<!-- TOP SUPPORT AGENTS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Top Support Agents</h3>
									</div>
									<div class="panel-body">
										<div class="widget-support-agent">
											<ul class="list-unstyled list-widget-vertical no-border spacing-25 margin-bottom-30">
												<li>
													<div class="support-agent">
														<a href="#">
															<img src="resources/assets/img/people/female6.png" class="agent-photo" alt="">
														</a>
														<div class="agent-detail">
															<a href="#" class="name">Margaret Burns</a>
															<span class="email">margaret@domain.com</span>
															<span class="rating-stars smaller">
																<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>
																<span class="info">(134 <a href="#">feedbacks</a>)</span>
															</span>
														</div>
													</div>
												</li>
												<li>
													<div class="support-agent">
														<a href="#">
															<img src="resources/assets/img/people/female3.png" class="agent-photo" alt="">
														</a>
														<div class="agent-detail">
															<a href="#" class="name">Audrey</a>
															<span class="email">audrey@domain.com</span>
															<span class="rating-stars smaller">
																<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i>
																<span class="info">(122 <a href="#">feedbacks</a>)</span>
															</span>
														</div>
													</div>
												</li>
												<li>
													<div class="support-agent">
														<a href="#">
															<img src="resources/assets/img/people/male2.png" class="agent-photo" alt="">
														</a>
														<div class="agent-detail">
															<a href="#" class="name">Walter Harrison</a>
															<span class="email">walter@domain.com</span>
															<span class="rating-stars smaller">
																<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i>
																<span class="info">(89 <a href="#">feedbacks</a>)</span>
															</span>
														</div>
													</div>
												</li>
											</ul>
											<a href="#" class="btn btn-primary btn-outline"><i class="fa fa-users"></i> All Agents</a>&nbsp;&nbsp;
											<div class="margin-bottom-15 visible-xs"></div>
											<a href="#" class="btn btn-default btn-outline"><i class="fa fa-user-plus"></i> Add Agent</a>
										</div>
									</div>
								</div>
								<!-- END TOP SUPPORT AGENTS -->
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
		<script src="resources/assets/vendor/jquery-sparkline/js/jquery.sparkline.min.js"></script>
		<script src="resources/assets/vendor/jqvmap/jquery.vmap.min.js"></script>
		<script src="resources/assets/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
		<script src="resources/assets/vendor/Flot/jquery.flot.js"></script>
		<script src="resources/assets/vendor/Flot/jquery.flot.resize.js"></script>
		<script src="resources/assets/vendor/Flot/jquery.flot.pie.js"></script>
		<script src="resources/assets/vendor/flot.tooltip/jquery.flot.tooltip.js"></script>
		<script src="resources/assets/vendor/slick/slick.min.js"></script>
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
			// metric's progress bar
			$('.progress-bar').progressbar(
			{
				display_text: 'fill'
			});
			// sparkline chart
			var sparklineParams = {
				width: '100%',
				height: '70px',
				lineWidth: '2',
				lineColor: 'rgba(0,56,255,0.30)',
				fillColor: 'rgba(0,56,255,0.15)',
				spotRadius: '2',
				highlightLineColor: 'rgba(0,56,255,0.30)',
				highlightSpotColor: 'rgba(0,56,255,0.30)',
				spotColor: '',
				minSpotColor: false,
				maxSpotColor: false,
				disableInteraction: false,
				tooltipClassname: 'jqstooltip flotTip',
				normalRangeMin: 0,
				normalRangeMin: 100
			};
			$('.inlinesparkline').sparkline('html', sparklineParams);
			// newsletter opens by location
			$('a[data-toggle="tab"]').on('shown.bs.tab', function(e)
			{
				if ($(e.target).attr('href') === '#tab2')
				{
					var mapData = {
						"us": "2936",
						"dz": "2812",
						"ru": "2735",
						"fr": "2674",
						"mx": "2584",
						"de": "1986",
						"br": "1921",
					}
					$('#map-email-opens').vectorMap(
					{
						map: 'world_en',
						backgroundColor: 'transparent',
						color: '#f2f4f6',
						borderColor: '#D1D4D7',
						borderOpacity: 0.5,
						values: mapData,
						scaleColors: ["#E7F5FF", "#9AA9B4"],
						normalizeFunction: 'polynomial'
					});
				}
				else if ($(e.target).attr('href') === '#tab3')
				{
					var data = [
					{
						label: "Social",
						data: 45
					},
					{
						label: "Referral",
						data: 26
					},
					{
						label: "Organic",
						data: 14
					},
					{
						label: "Others",
						data: 15
					}];
					$.plot('#traffic-sources-chart', data,
					{
						series:
						{
							pie:
							{
								show: true,
								innerRadius: 0.5,
								stroke:
								{
									width: 4,
									color: "#F9F9F9"
								},
								label:
								{
									show: true,
									radius: 3 / 4,
									formatter: donutLabelFormatter,
								},
							},
						},
						legend:
						{
							backgroundOpacity: 0
						},
						colors: ["#FF4402", "#AB7DF6", "#F3BB23", "#20B2AA"],
					});
				}
			});
			function donutLabelFormatter(label, series)
			{
				return "<div class=\"flot-donut-label\">" + Math.round(series.percent) + "%</div>";
			}
			// stock carousel
			$('.widget-carousel').slick(
			{
				slidesToShow: 3,
				slidesToScroll: 1,
				autoplay: true,
				autoplaySpeed: 2000,
				draggable: false,
				swipe: false,
				responsive: [
				{
					breakpoint: 640,
					settings:
					{
						slidesToShow: 1,
					}
				}]
			});
			// visit duration
			Chart.defaults.global.defaultFontColor = '#a0aeba';
			var ctxHorizontalBarChart = document.getElementById("horizontalbar-chart").getContext("2d");
			var horizontalBarChart = new Chart(ctxHorizontalBarChart,
			{
				type: 'horizontalBar',
				data:
				{
					labels: ['0-10s', '11s-30s', '31s-60s', '1m-2m', '3m-5m', '6m-10m', '> 10m'],
					datasets: [
					{
						data: [4000, 4500, 3700, 2990, 1655, 1423, 1123],
						backgroundColor: 'rgba(0,184,235,0.2)'
					}]
				},
				options:
				{
					responsive: true,
					legend:
					{
						display: false
					},
					scales:
					{
						xAxes: [
						{
							display: false
						}],
						yAxes: [
						{
							gridLines:
							{
								display: false,
								drawBorder: false
							}
						}]
					}
				}
			});
			// sales chart
			var ctxBarChart = document.getElementById("sales-chart").getContext("2d");
			var barChart = new Chart(ctxBarChart,
			{
				type: 'bar',
				data:
				{
					labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
					datasets: [
					{
						data: [400, 450, 370, 299, 205, 142, 120],
						backgroundColor: 'rgba(66,184,1,0.3)'
					}]
				},
				options:
				{
					responsive: true,
					legend:
					{
						display: false
					},
					scales:
					{
						xAxes: [
						{
							display: false
						}],
						yAxes: [
						{
							display: false
						}]
					}
				}
			});
			// chat volume
			var ctxLineChart = document.getElementById("chat-volume-chart").getContext("2d");
			var lineChart = new Chart(ctxLineChart,
			{
				type: 'line',
				data:
				{
					labels: ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'],
					datasets: [
					{
						data: [65, 85, 95, 90, 75, 60, 30],
						label: 'Volume',
						fill: false,
						borderWidth: 2,
						pointRadius: 3,
						pointHoverRadius: 5,
						borderColor: '#FB9D7C',
						backgroundColor: '#FB9D7C',
					}, ]
				},
				options:
				{
					responsive: true,
					legend:
					{
						display: false
					},
					elements:
					{
						line:
						{
							tension: 0.000001
						}
					},
					scales:
					{
						xAxes: [
						{
							gridLines:
							{
								display: false,
								drawBorder: false
							}
						}],
						yAxes: [
						{
							gridLines:
							{
								color: '#eff3f6',
								drawBorder: false,
							},
							ticks:
							{
								display: false,
								min: 20,
								max: 100,
								stepSize: 20
							}
						}]
					},
				}
			});
		});
		</script>
	</body>
</html>