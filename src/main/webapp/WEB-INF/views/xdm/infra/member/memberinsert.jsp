<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
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
                <div class="row g-4" id="Email_si">
                    <div class="col-sm-12 col-xl-12">
                    <!-- <div class="col-sm-12 col-xl-6"> -->
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Basic Form</h6>
                            <form name="form" method="post">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">seq</label>
                                    <input type="email" class="form-control" id="seq" name="seq" aria-describedby="emailHelp"readonly value="<c:out value="${item.seq }"/>">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">name</label>
                                    <input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">defaultNy</label>
                                    <input type="text" class="form-control" id="defaultNy" name="defaultNy" value="<c:out value= "${item.defaultNy}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">email</label>
                                    <input type="text" class="form-control" id="email" name="email" value="<c:out value= "${item.email}"/>">
                                </div>
                                 <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">id</label>
                                    <input type="text" class="form-control" id="id" name="id" value="<c:out value= "${item.id}"/>">
                                </div>
                                 <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">pass</label>
                                    <input type="text" class="form-control" id="pass" name="pass" value="<c:out value= "${item.pass}"/>">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">adderss</label>
                                    <input type="text" class="form-control" id="adderss" name="adderss" value="<c:out value= "${item.adderss}"/>">
                                    </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">adderssDetail</label>
                                    <input type="text" class="form-control" id="adderssDetail" name="adderssDetail" value="<c:out value= "${item.adderssDetail}"/>">
                                    </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">tel</label>
                                    <input type="text" class="form-control" id="tel" name="tel" value="<c:out value= "${item.tel}"/>">
                                   </div>
                                   <a href="memberList" class="btn btn-primary" id="btnList" style="float: left;"><i class="bi bi-list"></i></a>
								<button type="button" class="btn btn-primary"  id="btninsertbtn" style="float: right; margin-right:50%">추가</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">Your Site Name</a>, All Right Reserved. 
                        </div>
                        <div class="col-12 col-sm-6 text-center text-sm-end">
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                            <br>Distributed By: <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        </div>
                    </div>
                </div>
            <!-- Footer End -->
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>
 </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
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



$("#btninsertbtn").on("click",function(){
		 if($.trim($("#name").val()) == "" || $.trim($("#name").val()) == null){
				alert("값을 입력해 주세요.");
				$("#name").focus();
			} else {
				$("form[name=form]").attr("action","/memberinsertbtn").submit();
		} 
	
});
</script>
</body>

</html>