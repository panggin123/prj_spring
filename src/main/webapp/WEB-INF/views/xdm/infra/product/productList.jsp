<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<title>DarkPan</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/resources/css/adminXdm/owl.carousel.min.css" rel="stylesheet">
<link href="/resources/css/adminXdm/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="/resources/css/adminXdm/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/resources/css/adminXdm/style.css" rel="stylesheet">
<link href="/resources/css/adminXdm/footer_bot.css" rel="stylesheet">

</head>

<body>


	<div class="container-fluid position-relative d-flex p-0">
		<!-- Spinner Start -->
		<div id="spinner"class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Sidebar Start -->
		<%@include file="../include/includeSideBar.jsp"%>
		<!-- Sidebar End -->


		<!-- Content Start -->
		<div class="content">
			<!-- Navbar Start -->
			<%@include file="../include/includeNavbar.jsp"%>
			<!-- Navbar End -->


			<!-- Sale & Revenue Start -->

			<!-- Sale & Revenue End -->


			<!-- Sales Chart Start -->

			<!-- Sales Chart End -->

			<!-- Recent Sales Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-secondary text-center rounded p-4" style="margin-bottom:100px;">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h6 class="mb-0">product</h6>
						<a href="">Show All</a>
					</div>
					<div>
						<form name="formList" method="post">
 								<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
								<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
							<input type="text" name="seq" placeholder="seq"> <input type="text" name="shKeyword" placeholder="shKeyword"value="<c:out value="${vo.shKeyword }"/>">
							<button type="button" class="btn btn-primary" id="btn">
								<i class="bi bi-search"></i>
							</button>
							<table class="table table table-dark">
								<thead>
									<tr class="text-white">
										<th scope="col"><input class="form-check-input" type="checkbox"></th>
										<th scope="col">seq</th>
										<th scope="col">defaultNy</th>
										<th scope="col">category</th>
										<th scope="col">productName</th>
										<th scope="col">productNumber</th>
										<th scope="col">productPrice</th>
										<th scope="col">productStock</th>
										<th scope="col">productDesc</th>
										<th scope="col">productDate</th>
										<th scope="col">productHits</th>
										<th scope="col">favorites</th>
										<th scope="col">sale</th>
										<th scope="col">memberMembership_seq</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0}">
											<tr>

											</tr>
										</c:when>
										<c:otherwise>
											<!-- ${list} 자바에서 넘겨준 객체 이름 -->
											<!-- var="list" jstl 블럭에서 사용할 변수 이름 -->
											<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
													<td><input class="form-check-input" type="checkbox"></td>
													<td><c:out value="${list.seq}"></c:out></td>
													<td><c:out value="${list.defaultNy}"></c:out></td>
													<td><c:out value="${list.category}"></c:out></td>
													<td><a href="productForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.productName}"></c:out></a></td>
													<td><c:out value="${list.productNumber}"></c:out><br></td>
													<td><c:out value="${list.productPrice}"></c:out><br></td>
													<td><c:out value="${list.productStock}"></c:out><br></td>
													<td><c:out value="${list.productDesc}"></c:out><br></td>
													<td><c:out value="${list.productDate}"></c:out><br></td>
													<td><c:out value="${list.productHits}"></c:out><br></td>
													<td><c:out value="${list.favorites}"></c:out><br></td>
													<td><c:out value="${list.sale}"></c:out><br></td>
													<td><c:out value="${list.memberMembership_seq}"></c:out><br></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<%@include file="../include/includepaging.jsp"%>
							<br>
							<button type="button" class="btn btn-primary" id="btninsert">추가</button>
							<!-- <button type="button" class="btn btn-primary" id="btninsert">추가</button> -->
						</form>
					</div>
				</div>
			</div>



		


			<!-- Footer Start -->
			<%@include file="../include/includeFooter.jsp"%>
			<!-- Footer End -->
		</div>
		<!-- Content End -->


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/js/adminXdm/chart.min.js"></script>
	<script src="/resources/js/adminXdm/easing.min.js"></script>
	<script src="/resources/js/adminXdm/waypoints.min.js"></script>
	<script src="/resources/js/adminXdm/owl.carousel.min.js"></script>
	<script src="/resources/js/adminXdm/moment.min.js"></script>
	<script src="/resources/js/adminXdm/moment-timezone.min.js"></script>
	<script src="/resources/js/adminXdm/tempusdominus-bootstrap-4.min.js"></script>


	<!-- Template Javascript -->
	<script src="/resources/js/adminXdm/main.js"></script>
	<script type="text/javascript">
	$("#btninsert").on("click", function() {
		$("form[name=formList]").attr("action", "/productinsert").submit();
	});
		$("#btn").on("click", function() {
			$("form[name=formList]").attr("action", "/productList").submit();
		});
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			$("form[name=formList]").attr("action", "productList").submit();
		} 
	</script>
</body>

</html>