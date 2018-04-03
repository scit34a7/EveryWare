<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
	<head>
		<title>Input Elements | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/themify-icons/css/themify-icons.css">
		<link rel="stylesheet" href="resources/assets/vendor/pace/themes/orange/pace-theme-minimal.css">
		<link rel="stylesheet" href="resources/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">
		<link rel="stylesheet" href="resources/assets/vendor/switchery/switchery.min.css">
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
							<a href="#forms" data-toggle="collapse" data-parent="#sidebar-nav-menu" class="active"><i class="ti-receipt"></i> <span class="title">Forms</span> <i class="icon-submenu ti-angle-left"></i></a>
							<div id="forms" class="collapse in">
								<ul class="submenu">
									<li><a href="forms-inputs" class="active">Inputs</a></li>
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
							<h1 class="page-title">Input Elements</h1>
							<p class="page-subtitle">General input elements</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">Forms</a></li>
							<li class="active">Input Elements</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<!-- AUTOCOMPLETE -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Autocomplete</h3>
									</div>
									<div class="panel-body">
										<form class="form-horizontal">
											<div class="form-group">
												<label class="col-sm-2 control-label">Autocomplete</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" id="input-autocomplete" placeholder="Try to type 'a' or 'b'">
												</div>
											</div>
										</form>
									</div>
								</div>
								<!-- END AUTOCOMPLETE -->
								<!-- PASSWORD -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Password</h3>
									</div>
									<div class="panel-body">
										<form class="form-horizontal">
											<div class="form-group">
												<label class="col-sm-4 control-label">Password Show/Hide</label>
												<div class="col-sm-8">
													<input type="password" class="form-control" id="password-showhide">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label">Password Show/Hide</label>
												<div class="col-sm-8">
													<input type="password" class="form-control" id="password-showhide2">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label">Password Strength</label>
												<div class="col-sm-8">
													<div class="password-strength-container">
														<input type="password" class="form-control" id="password-strength">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label">Password Strength</label>
												<div class="col-sm-8">
													<div class="password-strength-container">
														<input type="password" class="form-control" id="password-strength2">
													</div>
												</div>
											</div>
											<p>Validation Rules:</p>
											<code>
												wordNotEmail: true,
												<br> wordMinLength: true,
												<br> wordMaxLength: false,
												<br> wordInvalidChar: true,
												<br> wordSimilarToUsername: true,
												<br> wordSequences: true,
												<br> wordTwoCharacterClasses: false,
												<br> wordRepetitions: false,
												<br> wordLowercase: true,
												<br> wordUppercase: true,
												<br> wordOneNumber: true,
												<br> wordThreeNumbers: true,
												<br> wordOneSpecialChar: true,
												<br> wordTwoSpecialChar: true,
												<br> wordUpperLowerCombo: true,
												<br> wordLetterNumberCombo: true,
												<br> wordLetterNumberCharCombo: true
												<br>
											</code>
										</form>
									</div>
								</div>
								<!-- END PASSWORD -->
								<!-- MASKED INPUT -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Masked Input</h3>
									</div>
									<div class="panel-body">
										<form class="form-horizontal">
											<div class="form-group">
												<label for="phone" class="col-sm-2 control-label">Phone</label>
												<div class="col-sm-10">
													<input type="text" id="phone" class="form-control">
													<span class="help-block">(999) 999-9999</span>
												</div>
											</div>
											<div class="form-group">
												<label for="phone-ex" class="col-sm-2 control-label">Phone + Ext</label>
												<div class="col-sm-10">
													<input type="text" id="phone-ex" class="form-control">
													<span class="help-block">(999) 999-9999? x99999</span>
												</div>
											</div>
											<div class="form-group">
												<label for="tax-id" class="col-sm-2 control-label">Tax ID</label>
												<div class="col-sm-10">
													<input type="text" id="tax-id" class="form-control">
													<span class="help-block">99-9999999</span>
												</div>
											</div>
											<div class="form-group">
												<label for="ssn" class="col-sm-2 control-label">SSN</label>
												<div class="col-sm-10">
													<input type="text" id="ssn" class="form-control">
													<span class="help-block">999-99-9999</span>
												</div>
											</div>
											<div class="form-group">
												<label for="product-key" class="col-sm-2 control-label">Product Key</label>
												<div class="col-sm-10">
													<input type="text" id="product-key" class="form-control">
													<span class="help-block">a*-999-a999</span>
												</div>
											</div>
										</form>
									</div>
								</div>
								<!-- END MASKED INPUT -->
								<!-- BASIC INPUTS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Basic Inputs</h3>
									</div>
									<div class="panel-body">
										<div class="form-horizontal">
											<div class="form-group">
												<label class="col-md-2 control-label">Text Field</label>
												<div class="col-md-10">
													<input type="text" class="form-control" placeholder="text field">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Password</label>
												<div class="col-md-10">
													<input type="password" class="form-control" value="asecret">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Textarea</label>
												<div class="col-md-10">
													<textarea class="form-control" placeholder="textarea" rows="4"></textarea>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Select</label>
												<div class="col-md-10">
													<select class="form-control">
														<option value="cheese">Cheese</option>
														<option value="tomatoes">Tomatoes</option>
														<option value="mozarella">Mozzarella</option>
														<option value="mushrooms">Mushrooms</option>
														<option value="pepperoni">Pepperoni</option>
														<option value="onions">Onions</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Multiple</label>
												<div class="col-md-10">
													<select multiple class="form-control">
														<option value="cheese">Cheese</option>
														<option value="tomatoes">Tomatoes</option>
														<option value="mozarella">Mozzarella</option>
														<option value="mushrooms">Mushrooms</option>
														<option value="pepperoni">Pepperoni</option>
														<option value="onions">Onions</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Checkbox</label>
												<div class="col-md-10">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="item1"> Item 1
														</label>
													</div>
													<div class="checkbox">
														<label>
															<input type="checkbox" value="item2"> Item 2
														</label>
													</div>
													<div class="checkbox">
														<label>
															<input type="checkbox" value="item3"> Item 3
														</label>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Inline</label>
												<div class="col-md-10">
													<label class="checkbox-inline">
														<input type="checkbox" value="item1"> Item 1
													</label>
													<label class="checkbox-inline">
														<input type="checkbox" value="item2"> Item 2
													</label>
													<label class="checkbox-inline">
														<input type="checkbox" value="item3"> Item 3
													</label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Radio Button</label>
												<div class="col-md-10">
													<div class="radio">
														<label>
															<input type="radio" name="radio" value="radio1"> Radio Item 1
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="radio" value="radio2"> Radio Item 2
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="radio" value="radio3"> Radio Item 3
														</label>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Inline</label>
												<div class="col-md-10">
													<label class="radio radio-inline">
														<input type="radio" name="radioinline" value="radio1"> Radio Item 1
													</label>
													<label class="radio radio-inline">
														<input type="radio" name="radioinline" value="radio2"> Radio Item 2
													</label>
													<label class="radio radio-inline">
														<input type="radio" name="radioinline" value="radio3"> Radio Item 3
													</label>
												</div>
											</div>
											<div class="form-group">
												<label for="exampleInputFile" class="col-md-2 control-label">File input</label>
												<div class="col-md-10">
													<input type="file" id="exampleInputFile">
													<p class="help-block">
														<em>Example block-level help text here.</em>
													</p>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Static Control</label>
												<div class="col-sm-10">
													<p class="form-control-static">email@example.com</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END BASIC INPUTS -->
								<!-- INPUT SIZINGS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Input Sizing</h3>
									</div>
									<div class="panel-body">
										<input class="form-control input-lg" placeholder=".input-lg" type="text">
										<br>
										<input class="form-control" placeholder="Default input" type="text">
										<br>
										<input class="form-control input-sm" placeholder=".input-sm" type="text">
										<br>
										<select class="form-control input-lg">
											<option value="cheese">Cheese</option>
											<option value="tomatoes">Tomatoes</option>
											<option value="mozarella">Mozzarella</option>
											<option value="mushrooms">Mushrooms</option>
											<option value="pepperoni">Pepperoni</option>
											<option value="onions">Onions</option>
										</select>
										<br>
										<select class="form-control">
											<option value="cheese">Cheese</option>
											<option value="tomatoes">Tomatoes</option>
											<option value="mozarella">Mozzarella</option>
											<option value="mushrooms">Mushrooms</option>
											<option value="pepperoni">Pepperoni</option>
											<option value="onions">Onions</option>
										</select>
										<br>
										<select class="form-control input-sm">
											<option value="cheese">Cheese</option>
											<option value="tomatoes">Tomatoes</option>
											<option value="mozarella">Mozzarella</option>
											<option value="mushrooms">Mushrooms</option>
											<option value="pepperoni">Pepperoni</option>
											<option value="onions">Onions</option>
										</select>
									</div>
								</div>
								<!-- END INPUT SIZINGS -->
							</div>
							<div class="col-md-6">
								<!-- SWITCHES -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Switches</h3>
									</div>
									<div class="panel-body">
										<h4>Pure CSS Switches</h4>
										<form class="form-horizontal">
											<div class="row">
												<div class="col-md-4">
													<p>Using ON/OFF label text</p>
													<label class="switch-input">
														<input type="checkbox" name="switch-checkbox" checked>
														<i data-swon-text="ON" data-swoff-text="OFF"></i> Web Notification
													</label>
													<label class="switch-input">
														<input type="checkbox" name="switch-checkbox">
														<i data-swon-text="ON" data-swoff-text="OFF"></i> Mobile Notification
													</label>
													<label class="switch-input">
														<input type="checkbox" name="switch-checkbox" checked>
														<i data-swon-text="ON" data-swoff-text="OFF"></i> Email Subscription
													</label>
												</div>
												<div class="col-md-4">
													<p>Using YES/NO label text</p>
													<label class="switch-input">
														<input type="checkbox" name="switch-checkbox">
														<i data-swon-text="YES" data-swoff-text="NO"></i> Subscription
													</label>
													<label class="switch-input">
														<input type="checkbox" name="switch-checkbox" checked>
														<i data-swon-text="YES" data-swoff-text="NO"></i> Auto Renewal
													</label>
													<label class="switch-input">
														<input type="checkbox" name="switch-checkbox">
														<i data-swon-text="YES" data-swoff-text="NO"></i> Reminder
													</label>
												</div>
												<div class="col-md-4">
													<p>Radio button behaviour</p>
													<label class="switch-input">
														<input type="radio" name="switch-radio">
														<i data-swon-text="ON" data-swoff-text="OFF"></i> Daily
													</label>
													<label class="switch-input">
														<input type="radio" name="switch-radio" checked>
														<i data-swon-text="ON" data-swoff-text="OFF"></i> Weekly
													</label>
													<label class="switch-input">
														<input type="radio" name="switch-radio">
														<i data-swon-text="ON" data-swoff-text="OFF"></i> Monthly
													</label>
												</div>
											</div>
										</form>
										<br>
										<h4>Switches by Switchery</h4>
										<div class="row">
											<div class="col-md-6">
												<p>Default size</p>
												<input type="checkbox" class="js-switch" checked>
												<input type="checkbox" class="js-switch">
												<br>
												<br>
												<p>Small size</p>
												<input type="checkbox" class="js-switch" checked data-size="small">
												<input type="checkbox" class="js-switch" data-size="small">
												<br>
												<br>
												<p>Disabled</p>
												<input type="checkbox" class="js-switch" checked disabled="disabled">
												<input type="checkbox" class="js-switch" disabled="disabled">
												<br>
												<br>
												<p>Checking state (On Click)</p>
												<input type="checkbox" class="js-switch" id="switch-check-click" checked>&nbsp;&nbsp;
												<button type="button" class="btn btn-default" id="btn-check-click">Click to check state</button>
												<br>
												<br>
												<p>Checking state (On Change)</p>
												<input type="checkbox" class="js-switch" id="switch-check-change">&nbsp;&nbsp;
												<span class="label label-default" id="label-check-change"></span>
											</div>
											<div class="col-md-6">
												<p>Colors</p>
												<input type="checkbox" class="js-switch" checked data-color="orange">
												<code>data-color="orange"</code>
												<br>
												<br>
												<input type="checkbox" class="js-switch" checked data-color="purple">
												<code>data-color="purple"</code>
												<br>
												<br>
												<input type="checkbox" class="js-switch" checked data-color="yellow">
												<code>data-color="yellow"</code>
												<br>
												<br>
												<input type="checkbox" class="js-switch" checked data-color="red">
												<code>data-color="red"</code>
												<br>
												<br>
												<input type="checkbox" class="js-switch" checked data-color="blue">
												<code>data-color="blue"</code>
												<br>
												<br>
												<input type="checkbox" class="js-switch" checked data-color="#20B2AA">
												<code>data-color="#20B2AA"</code>
											</div>
										</div>
									</div>
								</div>
								<!-- END SWITCHES -->
								<!-- STYLED INPUTS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Styled Checkboxes and Radios</h3>
									</div>
									<div class="panel-body">
										<div class="fancy-checkbox">
											<label>
												<input type="checkbox">
												<span>Fancy Checkbox 1</span>
											</label>
										</div>
										<div class="fancy-checkbox custom-color-green">
											<label>
												<input type="checkbox" checked>
												<span>Fancy Checkbox 2</span>
											</label>
										</div>
										<div class="fancy-checkbox custom-bgcolor-green">
											<label>
												<input type="checkbox" checked>
												<span>Fancy Checkbox 3</span>
											</label>
										</div>
										<div class="fancy-checkbox custom-bgcolor-blue">
											<label>
												<input type="checkbox" checked>
												<span>Fancy Checkbox 4</span>
											</label>
										</div>
										<div class="fancy-checkbox">
											<label>
												<input type="checkbox" checked>
												<span>Fancy Checkbox 5</span>
											</label>
										</div>
										<br>
										<label class="fancy-checkbox custom-bgcolor-blue">
											<input type="checkbox">
											<span>Fancy Checkbox 1</span>
										</label>
										<label class="fancy-checkbox custom-bgcolor-blue">
											<input type="checkbox" checked>
											<span>Fancy Checkbox 2</span>
										</label>
										<label class="fancy-checkbox custom-bgcolor-blue">
											<input type="checkbox">
											<span>Fancy Checkbox 3</span>
										</label>
										<br>
										<br>
										<div class="fancy-radio">
											<label>
												<input name="gender" value="male" type="radio">
												<span><i></i>Male</span>
											</label>
										</div>
										<div class="fancy-radio">
											<label>
												<input name="gender" value="female" type="radio">
												<span><i></i>Female</span>
											</label>
										</div>
										<br>
										<label class="fancy-radio">
											<input name="gender2" value="male" type="radio">
											<span><i></i>Male</span>
										</label>
										<label class="fancy-radio">
											<input name="gender2" value="female" type="radio" checked>
											<span><i></i>Female</span>
										</label>
										<br>
										<label class="fancy-radio custom-bgcolor-green">
											<input name="gender3" value="male" type="radio" checked>
											<span><i></i>Male</span>
										</label>
										<label class="fancy-radio custom-bgcolor-green">
											<input name="gender3" value="female" type="radio">
											<span><i></i>Female</span>
										</label>
										<br>
										<label class="fancy-radio custom-color-blue">
											<input name="gender4" value="male" type="radio">
											<span><i></i>Male</span>
										</label>
										<label class="fancy-radio custom-color-blue">
											<input name="gender4" value="female" type="radio" checked>
											<span><i></i>Female</span>
										</label>
									</div>
								</div>
								<!-- END STYLED INPUTS -->
								<!-- INPUT GROUPS -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Input Groups</h3>
									</div>
									<div class="panel-body">
										<div class="input-group">
											<input class="form-control" type="text">
											<span class="input-group-btn">
												<button class="btn btn-primary" type="button">Go!</button>
											</span>
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-btn">
												<button class="btn btn-primary" type="button">Go!</button>
											</span>
											<input class="form-control" type="text">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
											<input class="form-control" placeholder="Username" type="text">
										</div>
										<br>
										<div class="input-group">
											<input class="form-control" placeholder="Username" type="text">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">$</span>
											<input class="form-control" type="text">
											<span class="input-group-addon">.00</span>
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">@</span>
											<input type="text" class="form-control" placeholder="Username">
										</div>
										<br>
										<div class="input-group">
											<input type="text" class="form-control">
											<span class="input-group-addon">.00</span>
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">$</span>
											<input type="text" class="form-control">
											<span class="input-group-addon">.00</span>
										</div>
										<br>
										<div class="input-group">
											<input type="text" class="form-control">
											<span class="input-group-btn">
												<button class="btn btn-default" type="button">Go!</button>
											</span>
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">
												<label class="fancy-checkbox">
													<input type="checkbox">
													<span></span>
												</label>
											</span>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">
												<label class="fancy-checkbox custom-color-green">
													<input type="checkbox" checked>
													<span></span>
												</label>
											</span>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">
												<label class="fancy-checkbox custom-bgcolor-green">
													<input type="checkbox" checked>
													<span></span>
												</label>
											</span>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">
												<label class="control-inline fancy-radio">
													<input type="radio" name="inline-radio1" checked>
													<span><i></i></span>
												</label>
											</span>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">
												<label class="control-inline fancy-radio custom-color-green">
													<input type="radio" name="inline-radio2" checked>
													<span><i></i></span>
												</label>
											</span>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">
												<label class="control-inline fancy-radio custom-bgcolor-green">
													<input type="radio" name="inline-radio3" checked>
													<span><i></i></span>
												</label>
											</span>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">
												<label class="control-inline fancy-radio custom-color-blue">
													<input type="radio" name="inline-radio4" checked>
													<span><i></i></span>
												</label>
											</span>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-btn">
												<button class="btn btn-default" type="button">Go!</button>
											</span>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<div class="input-group-btn">
												<button type="button" class="btn btn-default" tabindex="-1">Action</button>
												<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" tabindex="-1">
													<span class="caret"></span>
													<span class="sr-only">Toggle Dropdown</span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
													<li><a href="#">Something else here</a></li>
													<li class="divider"></li>
													<li><a href="#">Separated link</a></li>
												</ul>
											</div>
											<input type="text" class="form-control">
										</div>
										<br>
										<div class="input-group">
											<input type="text" class="form-control">
											<div class="input-group-btn">
												<button type="button" class="btn btn-primary" tabindex="-1">Action</button>
												<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" tabindex="-1">
													<span class="caret"></span>
													<span class="sr-only">Toggle Dropdown</span>
												</button>
												<ul class="dropdown-menu pull-right" role="menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
													<li><a href="#">Something else here</a></li>
													<li class="divider"></li>
													<li><a href="#">Separated link</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- END INPUT GROUPS -->
								<!-- VALIDATION STATES -->
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Validation States</h3>
									</div>
									<div class="panel-body">
										<div class="widget-content">
											<h4>Plain</h4>
											<div class="form-group has-success has-feedback">
												<label class="control-label" for="inputSuccess2">Input with success</label>
												<input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status">
												<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
												<span id="inputSuccess2Status" class="sr-only">(success)</span>
											</div>
											<div class="form-group has-warning has-feedback">
												<label class="control-label" for="inputWarning2">Input with warning</label>
												<input type="text" class="form-control" id="inputWarning2" aria-describedby="inputWarning2Status">
												<span class="fa fa-warning form-control-feedback" aria-hidden="true"></span>
												<span id="inputWarning2Status" class="sr-only">(warning)</span>
											</div>
											<div class="form-group has-error has-feedback">
												<label class="control-label" for="inputError2">Input with error</label>
												<input type="text" class="form-control" id="inputError2" aria-describedby="inputError2Status">
												<span class="fa fa-close form-control-feedback" aria-hidden="true"></span>
												<span id="inputError2Status" class="sr-only">(error)</span>
											</div>
											<div class="form-group has-success has-feedback">
												<label class="control-label" for="inputGroupSuccess1">Input group with success</label>
												<div class="input-group">
													<span class="input-group-addon">@</span>
													<input type="text" class="form-control" id="inputGroupSuccess1" aria-describedby="inputGroupSuccess1Status">
												</div>
												<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
												<span id="inputGroupSuccess1Status" class="sr-only">(success)</span>
											</div>
											<hr class="inner-separator" />
											<h4>On Horizontal Form</h4>
											<form class="form-horizontal">
												<div class="form-group has-success has-feedback">
													<label class="control-label col-sm-3" for="inputSuccess3">Input with success</label>
													<div class="col-sm-9">
														<input type="text" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
														<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
														<span id="inputSuccess3Status" class="sr-only">(success)</span>
													</div>
												</div>
												<div class="form-group has-success has-feedback">
													<label class="control-label col-sm-3" for="inputGroupSuccess2">Input group with success</label>
													<div class="col-sm-9">
														<div class="input-group">
															<span class="input-group-addon">@</span>
															<input type="text" class="form-control" id="inputGroupSuccess2" aria-describedby="inputGroupSuccess2Status">
														</div>
														<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
														<span id="inputGroupSuccess2Status" class="sr-only">(success)</span>
													</div>
												</div>
											</form>
											<hr class="inner-separator" />
											<h4>On Inline Form</h4>
											<form class="form-inline">
												<div class="form-group has-success has-feedback">
													<label class="control-label" for="inputSuccess4">Input with success</label>
													<input type="text" class="form-control" id="inputSuccess4" aria-describedby="inputSuccess4Status">
													<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
													<span id="inputSuccess4Status" class="sr-only">(success)</span>
												</div>
											</form>
											<br>
											<form class="form-inline">
												<div class="form-group has-success has-feedback">
													<label class="control-label" for="inputGroupSuccess3">Input group with success</label>
													<div class="input-group">
														<span class="input-group-addon">@</span>
														<input type="text" class="form-control" id="inputGroupSuccess3" aria-describedby="inputGroupSuccess3Status">
													</div>
													<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
													<span id="inputGroupSuccess3Status" class="sr-only">(success)</span>
												</div>
											</form>
											<hr class="inner-separator" />
											<h4>Optional icons with hidden
												<code>.sr-only</code> labels</h4>
											<div class="form-group has-success has-feedback">
												<label class="control-label sr-only" for="inputSuccess5">Hidden label</label>
												<input type="text" class="form-control" id="inputSuccess5" aria-describedby="inputSuccess5Status">
												<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
												<span id="inputSuccess5Status" class="sr-only">(success)</span>
											</div>
											<div class="form-group has-success has-feedback">
												<label class="control-label sr-only" for="inputGroupSuccess4">Input group with success</label>
												<div class="input-group">
													<span class="input-group-addon">@</span>
													<input type="text" class="form-control" id="inputGroupSuccess4" aria-describedby="inputGroupSuccess4Status">
												</div>
												<span class="fa fa-check form-control-feedback" aria-hidden="true"></span>
												<span id="inputGroupSuccess4Status" class="sr-only">(success)</span>
											</div>
										</div>
									</div>
								</div>
								<!-- END VALIDATION STATES -->
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
		<script src="resources/assets/vendor/jquery.maskedinput/jquery.maskedinput.min.js"></script>
		<script src="resources/assets/vendor/jquery-ui/jquery-ui.min.js"></script>
		<script src="resources/assets/vendor/pwstrength-bootstrap/pwstrength-bootstrap.min.js"></script>
		<script src="resources/assets/vendor/hideshowpassword/hideShowPassword.min.js"></script>
		<script src="resources/assets/vendor/switchery/switchery.min.js"></script>
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
			/*-----------------------------------/
			/*	MASKED INPUTS
			/*----------------------------------*/
			$('#phone').mask('(999) 999-9999');
			$('#phone-ex').mask('(999) 999-9999? x99999');
			$('#tax-id').mask('99-9999999');
			$('#ssn').mask('999-99-9999');
			$('#product-key').mask('a*-999-a999');
			/*-----------------------------------/
			/*	AUTOCOMPLETE
			/*----------------------------------*/
			var availableTags = [
				"ActionScript",
				"AppleScript",
				"Asp",
				"BASIC",
				"C",
				"C++",
				"Clojure",
				"COBOL",
				"ColdFusion",
				"Erlang",
				"Fortran",
				"Groovy",
				"Haskell",
				"Java",
				"JavaScript",
				"Lisp",
				"Perl",
				"PHP",
				"Python",
				"Ruby",
				"Scala",
				"Scheme"
			];
			$("#input-autocomplete").autocomplete(
			{
				source: availableTags
			});
			/*-----------------------------------/
			/*	PASSWORD SHOW/HIDE
			/*----------------------------------*/
			$('#password-showhide').hideShowPassword(
			{
				innerToggle: true
			});
			$('#password-showhide2').hideShowPassword(
			{
				innerToggle: true,
				toggle:
				{
					className: 'hideShowPassword-toggle toggle-eye'
				},
				states:
				{
					shown:
					{
						toggle:
						{
							content: '<i class="fa fa-eye-slash">'
						}
					},
					hidden:
					{
						toggle:
						{
							content: '<i class="fa fa-eye">'
						}
					}
				}
			});
			/*-----------------------------------/
			/*	PASSWORD STRENGTH
			/*----------------------------------*/
			$('#password-strength').pwstrength(
			{
				ui:
				{
					container: '#password-strength-container',
					showVerdictsInsideProgressBar: true,
					viewports:
					{
						verdict: ".pwstrength_viewport_verdict"
					}
				}
			});
			$('#password-strength2').pwstrength(
			{
				ui:
				{
					showStatus: true,
					showProgressBar: false,
				}
			});
			/*-----------------------------------/
			/*	SWITCHERY
			/*----------------------------------*/
			/* non jQuery way */
			/*
			var elements = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
			elements.forEach(function(element) {
				var switchSize = element.dataset.size;
				if(switchSize === undefined ) switchSize: 'large'
				var switchery = new Switchery(element, { size: switchSize });
			});
			*/
			var switchOptions = {},
				switchColors = {
					'orange': '#F89B03',
					'purple': '#AB7DF6',
					'yellow': '#F3BB23',
					'red': '#ff4402',
					'blue': '#45AEEF'
				}
			$('.js-switch').each(function()
			{
				if ($(this).data("size")) switchOptions.size = $(this).data("size");
				var color = $(this).data("color");
				if (switchColors[color] !== undefined)
				{
					switchOptions.color = switchColors[color];
				}
				else
				{
					switchOptions.color = color;
				}
				var switchery = new Switchery($(this)[0], switchOptions);
				switchOptions = {};
			});
			$('#btn-check-click').on('click', function()
			{
				alert($('#switch-check-click').prop('checked'));
			});
			$('#label-check-change').text($('#switch-check-change').prop('checked'));
			$('#switch-check-change').on('change', function()
			{
				$('#label-check-change').text($(this).prop('checked'));
			});
		});
		</script>
	</body>
</html>