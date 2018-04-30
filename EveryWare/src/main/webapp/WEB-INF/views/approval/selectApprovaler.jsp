<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="fullscreen-bg">
	<head>
		<title>Everyware | eApproval</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- VENDOR CSS -->
		<link rel="stylesheet" href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/themify-icons/css/themify-icons.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="../resources/assets/css/main.css">
		<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
		<link rel="stylesheet" href="../resources/assets/css/demo.css">
		<!-- GOOGLE FONTS -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
		<!-- ICONS -->
		<link rel="apple-touch-icon" sizes="76x76" href="../resources/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" sizes="96x96" href="../resources/assets/img/favicon.png">
		<!-- TABLE -->
		<link rel="stylesheet" href="../resources/assets/vendor/datatables/css-main/jquery.dataTables.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/datatables/css-bootstrap/dataTables.bootstrap.min.css">
		<link rel="stylesheet" href="../resources/assets/vendor/datatables-tabletools/css/dataTables.tableTools.css">
		
	
		<%-- Jquery --%>
		<script src="../resources/js/jquery-3.2.1.min.js" ></script>
	
		<script>

			$(document).ready(function(){
				
				
				
					$('button').on('click', function(){
					
					var id = $(this).attr('num');
					var ndp = $(this).attr('num2');	//name + dept + position = ndp
					//alert(id);
					//alert(ndp);
					var openerName = 'approvalerName' + ${num};
					var openerId = 'eApprovalLine_person' + ${num};
					//alert(openerId);
					opener.document.getElementById(openerName).value = ndp;
					opener.document.getElementById(openerId).value = id;
					self.close();
		
				});
				
			})
		
			
		</script>
		
	
	</head>
	<body>
		
		
		<div class="container-fluid">
			<!-- <div class="row"> -->
				<div class="col-md-12">	<!-- 뒤에 숙자가 크기 조절 -->
				
					<!-- FEATURED DATATABLE -->
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">사원 검색</h3>
						</div>
						<div class="panel-body">
							<!-- <p class="alert alert-info">Added paging options and live search</p> -->
							
							
							<table id="featured-datatable" class="table table-striped table-hover">
								<thead>
									<tr>
										<th>선택</th>								
										<th>이름</th>
										<th>부서</th>
										<th>직위</th>
									</tr>
								</thead>
								
								
								<tbody>
									<c:if test="${userList ne null}">
										<c:forEach var="user"  items="${userList}">
											
											<tr>
												<td>
													<button type="button" class="btn btn-primary btn-xs" num="${user.user_id}" num2="${user.user_name} / ${user.dept_name} / ${user.position_name}" class="user">선택</button>
												</td>
												<td>
													${user.user_name}
												</td>									
												<td>${user.dept_name}</td>
												<td>${user.position_name}</td>
											
											</tr>			
										
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
					</div>
					<!-- END FEATURED DATATABLE -->
				</div>
			<!-- </div> -->
		</div><!-- END #container-fluid -->
		
		<!-- END WRAPPER -->
		<!-- Javascript -->
		
		<script src="../resources/assets/vendor/datatables/js-main/jquery.dataTablesUser.min.js"></script>
		<script src="../resources/assets/vendor/datatables/js-bootstrap/dataTables.bootstrap.min.js"></script>
		<script src="../resources/assets/vendor/datatables-colreorder/dataTables.colReorder.js"></script>
		<script src="../resources/assets/vendor/datatables-tabletools/js/dataTables.tableTools.js"></script>
		
		
		<!-- END DEMO PANEL -->
		<script>
		$(function()
		{
			
			// datatable with paging options and live search
			$('#featured-datatable').dataTable(
			{
				sDom: "<'row'<'col-sm-6'l><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
			});
			// datatable with export feature
			var exportTable = $('#datatable-data-export').DataTable(
			{
				sDom: "T<'clearfix'>" +
					"<'row'<'col-sm-6'l><'col-sm-6'f>r>" +
					"t" +
					"<'row'<'col-sm-6'i><'col-sm-6'p>>",
				"tableTools":
				{
					"sSwfPath": "assets/vendor/datatables-tabletools/swf/copy_csv_xls_pdf.swf"
				}
			});
			
		});
		</script>
		
		
	</body>
</html>