<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>MultiShop - Online Shop Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="assets/img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="assets/lib/animate/animate.min.css" rel="stylesheet">
        <link href="assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="assets/css/style.css" rel="stylesheet">
        <style>
            .product-name {
                overflow: hidden;
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
            }

            .product-name {
                overflow: hidden;
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
            }
            .card {
                position: relative;
                width: 320px;
                height: 480px;
                background: #191919;
                border-radius: 20px;
                overflow: hidden;
            }

            .card::before {
                content: "";
                position: absolute;
                top: -50%;
                width: 100%;
                height: 100%;
                background: #ffce00;
                transform: skewY(345deg);
                transition: 0.5s;
            }

            .card:hover::before {
                top: -70%;
                transform: skewY(390deg);
            }

            .card::after {
                content: "CORSAIR";
                position: absolute;
                bottom: 0;
                left: 0;
                font-weight: 600;
                font-size: 6em;
                color: rgba(0, 0, 0, 0.1);
            }

            .card .imgBox {
                position: relative;
                width: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                padding-top: 20px;
                z-index: 1;
            }
            /*
            .card .imgBox img {
                max-width: 100%;
                
                transition: .5s;
            }
            
            .card:hover .imgBox img {
                max-width: 50%;
                  
            }
            */
            .card .contentBox {
                position: relative;
                padding: 20px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                z-index: 2;
            }

            .card .contentBox h3 {
                font-size: 18px;
                color: white;
                font-weight: 500;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .card .contentBox .price {
                font-size: 24px;
                color: white;
                font-weight: 700;
                letter-spacing: 1px;
            }

            .card .contentBox .buy {
                position: relative;
                top: 100px;
                opacity: 0;
                padding: 10px 30px;
                margin-top: 15px;
                color: #000000;
                text-decoration: none;
                background: #ffce00;
                border-radius: 30px;
                text-transform: uppercase;
                letter-spacing: 1px;
                transition: 0.5s;
            }

            .card:hover .contentBox .buy {
                top: 0;
                opacity: 1;
            }

            .mouse {
                height: 300px;
                width: auto;
            }


        </style>
    </head>

    <body>
        <!-- Topbar Start -->
        <%@include file="component/header-shop.jsp" %>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <%@include file="component/header-category.jsp" %>
        <!-- Navbar End -->


        <!-- Carousel Start -->
        <div class="container-fluid mb-3">
            <div class="row px-xl-0">
                <div class="col-lg-12" style="padding: 0" >
                    <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#header-carousel" data-slide-to="1"></li>
                            <li data-target="#header-carousel" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item position-relative active" style="height: 430px;">
                                <img class="position-absolute w-100 h-100" src="assets/img/men.jpg" style="object-fit: cover;">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Men Shoes</h1>
                                        <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Let us put your dreams on your feet to guide them into reality</p>
                                        <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="/NleSHOP/shop?categoryId=1">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item position-relative" style="height: 430px;">
                                <img class="position-absolute w-100 h-100" src="assets/img/women.webp" style="object-fit: cover;">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Women Shoes</h1>
                                        <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Let us put your dreams on your feet to guide them into reality</p>
                                        <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="/NleSHOP/shop?categoryId=2">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item position-relative" style="height: 430px;">
                                <img class="position-absolute w-100 h-100" src="assets/img/kid.jpg" style="object-fit: cover;">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Kids Shoes</h1>
                                        <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Let us put your dreams on your feet to guide them into reality</p>
                                        <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="/NleSHOP/shop?categoryId=3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- Carousel End -->


        <!-- Featured Start -->
        <div class="container-fluid pt-5">
            <div class="row px-xl-5 pb-3">
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                        <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                        <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                        <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                        <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                        <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Featured End -->


        <!-- Categories Start -->
        <div class="container-fluid pt-5">
            <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Categories</span></h2>
            <div class="row px-xl-5 pb-3">
                <c:forEach items="${requestScope.lstCategory}" var="c">
                    <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                        <a class="text-decoration-none" href="shop?categoryId=${c.categoryId}">
                            <div class="cat-item d-flex align-items-center mb-4">
                                <div class="overflow-hidden" style="width: 100px; height: 100px;">
                                    <img class="img-fluid" src="${c.categoryIcon}" alt="">
                                </div>
                                <div class="flex-fill pl-3">
                                    <h6>${c.categoryName}</h6>
                                    <small class="text-body">${c.numberOfProduct} Products</small>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Categories End -->


        <!-- Products Start -->
        <div class="container-fluid pt-5 pb-3">
            <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Featured Products</span></h2>
            <div class="row px-xl-5">

                <c:forEach items="${requestScope.lstProductFeatured}" var="p">
                    <div class="col-3 mb-3">
                        <div class="card">
                            <div class="imgBox product-img position-relative overflow-hidden">
                                <img src="${p.productImg}" alt="" class="mouse">
                            </div>
                            <div class="contentBox text-center">
                                <h3>${p.productName}</h3>
                                <fmt:formatNumber value="${p.productPrice}" pattern="#,###" var="formattedPrice" />
                                <h2 class="price">${formattedPrice} VND</h2>
                                <a href="product-detail?productId=${p.productId}" class="buy">Buy Now</a>
                            </div>

                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Products End -->



        <!-- Offer End -->


        <!-- Products Start -->
        <div class="container-fluid pt-5 pb-3">
            <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Recent Products</span></h2>
            <div class="row px-xl-5">

                <c:forEach items="${requestScope.lstProductRecent}" var="p">
                    <div class="col-3 mb-3">
                        <div class="card">
                            <div class="imgBox product-img position-relative overflow-hidden">
                                <img src="${p.productImg}" alt="" class="mouse">
                            </div>
                            <div class="contentBox text-center">
                                <h3 style="display: inline-block;
                                    width: 180px;
                                    white-space: nowrap;
                                    overflow: hidden !important;
                                    text-overflow: ellipsis;">${p.productName}</h3>
                                <fmt:formatNumber value="${p.productPrice}" pattern="#,###" var="formattedPrice" />
                                <h2 class="price">${formattedPrice} VND</h2>
                                <a href="product-detail?productId=${p.productId}" class="buy">Buy Now</a>
                            </div>

                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Products End -->


        <!-- Vendor Start -->
        <!-- Vendor End -->


        <!-- Footer Start -->
        <%@include file="component/footer.jsp" %>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="assets/lib/easing/easing.min.js"></script>
        <script src="assets/lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="assets/mail/jqBootstrapValidation.min.js"></script>
        <script src="assets/mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="assets/js/main.js"></script>
    </body>

</html>