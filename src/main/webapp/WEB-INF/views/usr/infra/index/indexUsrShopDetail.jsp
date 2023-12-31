<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/shop/cssShop/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop/cssShop/style.css" type="text/css">
	<link rel="stylesheet" href="/resources/css/shop/styles1.css">
	<link href="/resources/css/shop/styles.css" rel="stylesheet" />
</head>
  
<body>
    <!-- Page Preloder -->
    
   <%@include file="../usrinclude/shopnav.jsp"%>
   
   

    <!-- Breadcrumb Section Begin -->
    <div style="background-image:url(/resources/img/assets/img/discount/bg10.jpg);width:100%;height:400px;background-size: cover;">
    <!-- 슬라이드 들어갈 예정 -->
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
	    <section class="product-details spad" style="margin-top: 80px;">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-6 col-md-6" style="background-image:url(/resources/img/assets/img/shoes/shoes3.jpg);background-size: cover; ">
	                    <div class="product__details__pic">
	                    </div>
	                </div>
	                <div class="col-lg-6 col-md-6">
	                    <div class="product__details__text">
	                        <h3><a href="indexUsrShopDetail?seq=${product.seq}" style="text-decoration: none;"><c:out value="${product.productName}"></c:out></a></h3>
	                        <div class="product__details__rating">
	                            <i class="bi bi-star-fill"></i>
	                            <i class="bi bi-star-fill"></i>
	                            <i class="bi bi-star-fill"></i>
	                            <i class="bi bi-star-fill-half-o"></i>
	                            <i class="bi bi-star-fill-half-o"></i>
	                            <span>(<c:out value="${product.productHits}"></c:out>)</span>
	                        </div>
	                        <div class="product__details__price" id="price"><c:out value="${product.productPrice}" ></c:out></div>
	                        
	                        
	<!--                         <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a> -->
	                        <ul>
	                            <li><b>상품명</b><c:out value="${product.productName}"></c:out></li>
	                            <li><b>상품정보</b><c:out value="${product.productDesc}"></c:out></li>
	                            <li><b>상품가격</b><span id="formattedPrice"><c:out value="${product.productPrice}"></c:out></span>원</li>
	                            <li><b></b></li>
                            </ul>
                            	<div class="product__details__price" id="totalPrice"><c:out value="${product.productPrice}" ></c:out></div>
				                    <div class="product__details__quantity">
				                            <div class="quantity ">
				                                <div class="pro-qty product" style="padding: 0;">
				                                	<span class ="dec qtybtn" id="decrease" >-</span>
				                                    <input type="text" value="1" id="quantity">
													<span class ="inc qtybtn" id="increase">+</span>
				                                </div>
				                            </div>
		                        </div>
		                        <a href="indexUsrCart?seq=<c:out value="${product.seq}"/>" class="primary-btn" style="text-decoration: none;">결제하기</a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
    <!-- Product Details Section End -->
    <div style="width: 80%; hegith:1000px; margin: auto;text-align:center">
    <img alt="" src="resources/img/assets/img/shoes/detail1.jpg" >
    </div>



    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>Related Product</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic " style="background-image: url(/resources/img/assets/img/shoes/shoes1.jpg);background-size:260px 270px; ">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                            <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic " style="background-image: url(/resources/img/assets/img/shoes/shoes2.jpg);background-size:260px 270px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                            <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic " style="background-image: url(/resources/img/assets/img/shoes/shoes4.jpg);background-size:260px 270px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                            <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic " style="background-image: url(/resources/img/assets/img/shoes/shoes5.jpg);background-size:260px 270px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="bi bi-heart"></i></a></li>
	                            <li><a href="indexUsrCart"><i class="bi bi-cart4"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        <%@include file="../usrinclude/footer.jsp"%>
    <!-- Related Product Section End -->

    <!-- Footer Section Begin -->
    
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/resources/js/shop/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/shop/bootstrap.min.js"></script>
    <script src="/resources/js/shop/jquery.nice-select.min.js"></script>
    <script src="/resources/js/shop/jquery-ui.min.js"></script>
    <script src="/resources/js/shop/jquery.slicknav.js"></script>
    <script src="/resources/js/shop/mixitup.min.js"></script>
    <script src="/resources/js/shop/owl.carousel.min.js"></script>
    <script src="/resources/js/shop/main.js"></script>


	<script src="/resources/js/scripts.js"></script>
	<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        const decreaseButton = document.getElementById("decrease");  // 수량 감소
        const increaseButton = document.getElementById("increase"); //  수량 증가
        const quantityInput = document.getElementById("quantity"); // 수량 갯수
        const priceElement = document.getElementById("price"); // 가격
        const totalPriceElement = document.getElementById("totalPrice"); //토탈금액

        const productPrice = parseFloat(priceElement.textContent.replace("원", "").replace(",", "")); // 상품 가격

        let quantity = 1; // 초기 수량
        updateTotalPrice();

        decreaseButton.addEventListener("click", function() {
            if (quantity > 1) {
                quantity--;
                quantityInput.value = quantity;
                updateTotalPrice();
            }
        });

        increaseButton.addEventListener("click", function() {
            quantity++;
            quantityInput.value = quantity;
            updateTotalPrice();
        });

        function updateTotalPrice() {
            totalPriceElement.textContent = numberWithCommas(productPrice * quantity) + "원";
        }

        // 숫자에 쉼표 추가하는 함수
        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
    });
    
    // 단위마다 쉼표 추가하는 함수 ---------------------------------
    document.addEventListener("DOMContentLoaded", function() {
        const priceElement = document.getElementById("price");
        const productPrice = parseFloat(priceElement.textContent.replace("원", "").replace(/,/g, "")); // 가격에서 쉼표 제거

        // 천 단위마다 쉼표 추가하는 함수  맨위 메인 가격
        function addCommasToPrice(price) {
            return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

        priceElement.textContent = addCommasToPrice(productPrice) + "원";
    });
    
    
    document.addEventListener("DOMContentLoaded", function() {
        const formattedPriceElement = document.getElementById("formattedPrice");
        const productPrice = parseFloat(formattedPriceElement.textContent.replace(/,/g, "")); // 쉼표 제거

        // 천 단위마다 쉼표 추가하는 함수	서브 가격
        function addCommasToPrice(price) {
            return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

        formattedPriceElement.textContent = addCommasToPrice(productPrice);
    });
	</script>
</body>

</html>