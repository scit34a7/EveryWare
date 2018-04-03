<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Social Buttons | Klorofil Pro - Bootstrap Admin Dashboard Template</title>
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
									<li><a href="ui-buttons">Buttons <span class="label label-info">UPDATED</span></a></li>
									<li><a href="ui-bootstrap">Bootstrap UI</a></li>
									<li><a href="ui-social-buttons" class="active">Social Buttons</a></li>
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
							<h1 class="page-title">Social Buttons</h1>
							<p class="page-subtitle">Social Sign-In Buttons made in pure CSS based on Bootstrap and Font Awesome!</p>
						</div>
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#">UI Elements</a></li>
							<li class="active">Social Buttons</li>
						</ul>
					</div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Buttons With Text</h3>
									</div>
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6">
												<a class="btn btn-block btn-social btn-adn">
													<span class="fa fa-adn"></span> Sign in with App.net
												</a>
												<a class="btn btn-block btn-social btn-bitbucket">
													<span class="fa fa-bitbucket"></span> Sign in with Bitbucket
												</a>
												<a class="btn btn-block btn-social btn-dropbox">
													<span class="fa fa-dropbox"></span> Sign in with Dropbox
												</a>
												<a class="btn btn-block btn-social btn-facebook">
													<span class="fa fa-facebook"></span> Sign in with Facebook
												</a>
												<a class="btn btn-block btn-social btn-flickr">
													<span class="fa fa-flickr"></span> Sign in with Flickr
												</a>
												<a class="btn btn-block btn-social btn-foursquare">
													<span class="fa fa-foursquare"></span> Sign in with Foursquare
												</a>
												<a class="btn btn-block btn-social btn-github">
													<span class="fa fa-github"></span> Sign in with GitHub
												</a>
												<a class="btn btn-block btn-social btn-google">
													<span class="fa fa-google"></span> Sign in with Google
												</a>
												<a class="btn btn-block btn-social btn-instagram">
													<span class="fa fa-instagram"></span> Sign in with Instagram
												</a>
												<a class="btn btn-block btn-social btn-linkedin">
													<span class="fa fa-linkedin"></span> Sign in with LinkedIn
												</a>
												<a class="btn btn-block btn-social btn-microsoft">
													<span class="fa fa-windows"></span> Sign in with Microsoft
												</a>
												<a class="btn btn-block btn-social btn-odnoklassniki">
													<span class="fa fa-odnoklassniki"></span> Sign in with Odnoklassniki
												</a>
												<a class="btn btn-block btn-social btn-openid">
													<span class="fa fa-openid"></span> Sign in with OpenID
												</a>
												<a class="btn btn-block btn-social btn-pinterest">
													<span class="fa fa-pinterest"></span> Sign in with Pinterest
												</a>
												<a class="btn btn-block btn-social btn-reddit">
													<span class="fa fa-reddit"></span> Sign in with Reddit
												</a>
												<a class="btn btn-block btn-social btn-soundcloud">
													<span class="fa fa-soundcloud"></span> Sign in with SoundCloud
												</a>
												<a class="btn btn-block btn-social btn-tumblr">
													<span class="fa fa-tumblr"></span> Sign in with Tumblr
												</a>
												<a class="btn btn-block btn-social btn-twitter">
													<span class="fa fa-twitter"></span> Sign in with Twitter
												</a>
												<a class="btn btn-block btn-social btn-vimeo">
													<span class="fa fa-vimeo-square"></span> Sign in with Vimeo
												</a>
												<a class="btn btn-block btn-social btn-vk">
													<span class="fa fa-vk"></span> Sign in with VK
												</a>
												<a class="btn btn-block btn-social btn-yahoo">
													<span class="fa fa-yahoo"></span> Sign in with Yahoo!
												</a>
											</div>
											<div class="col-md-6">
												<ul class="social-button-class list-unstyled">
													<li data-code="adn" data-name="App.net">
														<code>btn-adn</code>
														<span class="social-hex">#D87A68</span>
													</li>
													<li data-code="bitbucket" data-name="Bitbucket">
														<code>btn-bitbucket</code>
														<span class="social-hex">#205081</span>
													</li>
													<li data-code="dropbox" data-name="Dropbox">
														<code>btn-dropbox</code>
														<span class="social-hex">#1087DD</span>
													</li>
													<li data-code="facebook" data-name="Facebook">
														<code>btn-facebook</code>
														<span class="social-hex">#3B5998</span>
													</li>
													<li data-code="flickr" data-name="Flickr">
														<code>btn-flickr</code>
														<span class="social-hex">#2BA9E1</span>
													</li>
													<li data-code="foursquare" data-name="Foursquare">
														<code>btn-foursquare</code>
														<span class="social-hex">#f94877</span>
													</li>
													<li data-code="github" data-name="GitHub">
														<code>btn-github</code>
														<span class="social-hex">#444444</span>
													</li>
													<li data-code="google" data-name="Google">
														<code>btn-google</code>
														<span class="social-hex">#DD4B39</span>
													</li>
													<li data-code="instagram" data-name="Instagram">
														<code>btn-instagram</code>
														<span class="social-hex">#3F729B</span>
													</li>
													<li data-code="linkedin" data-name="LinkedIn">
														<code>btn-linkedin</code>
														<span class="social-hex">#007BB6</span>
													</li>
													<li data-code="microsoft" data-icon="windows" data-name="Microsoft">
														<code>btn-microsoft</code>
														<span class="social-hex">#2672EC</span>
													</li>
													<li data-code="odnoklassniki" data-name="Odnoklassniki">
														<code>btn-odnoklassniki</code>
														<span class="social-hex">#F4731C</span>
													</li>
													<li data-code="openid" data-name="OpenID">
														<code>btn-openid</code>
														<span class="social-hex">#F7931E</span>
													</li>
													<li data-code="pinterest" data-name="Pinterest">
														<code>btn-pinterest</code>
														<span class="social-hex">#CB2027</span>
													</li>
													<li data-code="reddit" data-name="Reddit">
														<code>btn-reddit</code>
														<span class="social-hex">#EFF7FF</span>
													</li>
													<li data-code="soundcloud" data-name="SoundCloud">
														<code>btn-soundcloud</code>
														<span class="social-hex">#FF5500</span>
													</li>
													<li data-code="tumblr" data-name="Tumblr">
														<code>btn-tumblr</code>
														<span class="social-hex">#CB2027</span>
													</li>
													<li data-code="twitter" data-name="Twitter">
														<code>btn-twitter</code>
														<span class="social-hex">#55ACEE</span>
													</li>
													<li data-code="vimeo" data-icon="vimeo-square" data-name="Vimeo">
														<code>btn-vimeo</code>
														<span class="social-hex">#1AB7EA</span>
													</li>
													<li data-code="vk" data-name="VK">
														<code>btn-vk</code>
														<span class="social-hex">#587EA3</span>
													</li>
													<li data-code="yahoo" data-name="Yahoo!">
														<code>btn-yahoo</code>
														<span class="social-hex">#720E9E</span>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Buttons Only</h3>
									</div>
									<div class="panel-body">
										<p class="demo-button">
											<a class="btn btn-social-icon btn-adn">
												<span class="fa fa-adn"></span>
											</a>
											<a class="btn btn-social-icon btn-bitbucket">
												<span class="fa fa-bitbucket"></span>
											</a>
											<a class="btn btn-social-icon btn-dropbox">
												<span class="fa fa-dropbox"></span>
											</a>
											<a class="btn btn-social-icon btn-facebook">
												<span class="fa fa-facebook"></span>
											</a>
											<a class="btn btn-social-icon btn-flickr">
												<span class="fa fa-flickr"></span>
											</a>
											<a class="btn btn-social-icon btn-foursquare">
												<span class="fa fa-foursquare"></span>
											</a>
											<a class="btn btn-social-icon btn-github">
												<span class="fa fa-github"></span>
											</a>
											<a class="btn btn-social-icon btn-google">
												<span class="fa fa-google"></span>
											</a>
											<a class="btn btn-social-icon btn-instagram">
												<span class="fa fa-instagram"></span>
											</a>
											<a class="btn btn-social-icon btn-linkedin">
												<span class="fa fa-linkedin"></span>
											</a>
											<a class="btn btn-social-icon btn-microsoft">
												<span class="fa fa-windows"></span>
											</a>
											<a class="btn btn-social-icon btn-odnoklassniki">
												<span class="fa fa-odnoklassniki"></span>
											</a>
											<a class="btn btn-social-icon btn-openid">
												<span class="fa fa-openid"></span>
											</a>
											<a class="btn btn-social-icon btn-pinterest">
												<span class="fa fa-pinterest"></span>
											</a>
											<a class="btn btn-social-icon btn-reddit">
												<span class="fa fa-reddit"></span>
											</a>
											<a class="btn btn-social-icon btn-soundcloud">
												<span class="fa fa-soundcloud"></span>
											</a>
											<a class="btn btn-social-icon btn-tumblr">
												<span class="fa fa-tumblr"></span>
											</a>
											<a class="btn btn-social-icon btn-twitter">
												<span class="fa fa-twitter"></span>
											</a>
											<a class="btn btn-social-icon btn-vimeo">
												<span class="fa fa-vimeo-square"></span>
											</a>
											<a class="btn btn-social-icon btn-vk">
												<span class="fa fa-vk"></span>
											</a>
											<a class="btn btn-social-icon btn-yahoo">
												<span class="fa fa-yahoo"></span>
											</a>
										</p>
									</div>
								</div>
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Button Sizings</h3>
									</div>
									<div class="panel-body">
										<a class="btn btn-social btn-facebook btn-lg">
											<span class="fa fa-facebook"></span> Sign in with Facebook
										</a>
										<br>
										<br>
										<a class="btn btn-social btn-facebook">
											<span class="fa fa-facebook"></span> Sign in with Facebook
										</a>
										<br>
										<br>
										<a class="btn btn-social btn-facebook btn-sm">
											<span class="fa fa-facebook"></span> Sign in with Facebook
										</a>
										<br>
										<br>
										<a class="btn btn-social btn-facebook btn-xs">
											<span class="fa fa-facebook"></span> Sign in with Facebook
										</a>
										<br>
										<br>
										<p class="demo-button">
											<a class="btn btn-social-icon btn-facebook btn-lg">
												<span class="fa fa-facebook"></span>
											</a>
											<a class="btn btn-social-icon btn-facebook">
												<span class="fa fa-facebook"></span>
											</a>
											<a class="btn btn-social-icon btn-facebook btn-sm">
												<span class="fa fa-facebook"></span>
											</a>
											<a class="btn btn-social-icon btn-facebook btn-xs">
												<span class="fa fa-facebook"></span>
											</a>
										</p>
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