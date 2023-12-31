<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DarkPan - Bootstrap 5 Admin Template</title>
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
    <link href="/resources/css/adminXdm/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/css/adminXdm/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/adminXdm/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/adminXdm/style.css" rel="stylesheet">
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


        <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <form name="form" method="post">
                    <div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <a href="index.html" class="">
                                <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>DarkPan</h3>
                            </a>
                            <h3>Sign In</h3>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="id" placeholder="name@example.com" value="admin1234">
                            <label for="floatingInput">Id</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" id="pass" placeholder="Password" value="admin1234">
                            <label for="floatingPassword">Password</label>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <a href="">Forgot Password</a>
                        </div>
                       <button type="button" class="btn btn-primary py-3 w-100 mb-4" id="btn">Sign In</button>
                        <p class="text-center mb-0">Don't have an Account? <a href="">Sign Up</a></p>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Sign In End -->
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
    <script src="/resources/js/validation/validation.js"></script>
    	<script type="text/javascript">
	/*   	var objid = $("#id");
    	var objpass = $("#pass");
    	validationinsert = function(){
     		if(checkid(objid) == false) return false;
     		if(checkpass(objpass) == false) return false;
    	}	
    	
     	$("#btn").on("click", function() {
     		if(validationinsert() == false) return false;
    				$("form[name=form]").attr("action","/indexXdmView").submit();
    		});  */
     	
     	// ajax 사용
     	 $("#btn").on("click", function(){
     		
     		if(validation() == false) return false;
     		
     		$.ajax({
     			async: true 
     			,cache: false
     			,type: "post"
     			// ,dataType:"json" //
     			,url: "/loginProc"
     			// ,data : $("#loginView").serialize() //
     			,data : { "id" : $("#id").val(),
     				"pass" : $("#pass").val()}
     			,success: function(response) {
     				if(response.rt == "success") {
     					location.href = "/indexXdmView";
     				} else {
     					alert("그런 회원 없습니다.");
     					$("#pass").val("");
     					$("#pass").focus();
     				}
     			}
     			,error : function(jqXHR, textStatus, errorThrown){
     				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
     			}
     		});
     	});


     	validation = function() {
     		// if(!checkNull($("#id"), $.trim($("#id").val()), "아이디를 입력해 주세요!")) return false;
     		// if(!checkNull($("#pass"), $.trim($("#pass").val()), "비밀번호를 입력해 주세요!")) return false;
     	}  
    	</script>
</body>

</html>