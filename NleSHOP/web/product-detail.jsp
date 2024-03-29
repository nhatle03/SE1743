<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>NleShop</title>
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


        <!-- Breadcrumb Start -->
        <div class="container-fluid">
            <div class="row px-xl-5">
                <div class="col-12">
                    <nav class="breadcrumb bg-light mb-30">
                        <a class="breadcrumb-item text-dark" href="/NleSHOP/?#">Home</a>
                        <a class="breadcrumb-item text-dark" href="/NleSHOP/shop">Shop</a>
                        <span class="breadcrumb-item active">Shop Detail</span>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->


        <!-- Shop Detail Start -->
        <div class="container-fluid pb-5">
            <div class="row px-xl-5">
                <div class="col-lg-5 mb-30">
                    <div id="product-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner bg-light">
                            <c:forEach items="${requestScope.lstProductImgDetail}" var="i" varStatus="theCount">
                                <div class="carousel-item <c:if test="${theCount.count eq 1}">active</c:if>">
                                    <img class="w-100 h-100" src="${i.productImgDetailPath}" alt="Image">
                                </div>
                            </c:forEach>
                        </div>
                        <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                            <i class="fa fa-2x fa-angle-left text-dark"></i>
                        </a>
                        <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                            <i class="fa fa-2x fa-angle-right text-dark"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-7 h-auto mb-30">
                    <div class="h-100 bg-light p-30">
                        <h3>${requestScope.product.productName}</h3>
                        <div class="d-flex mb-3">
                            <div class="text-primary mr-2">
                                <small class="fas fa-star"></small>
                                <small class="fas fa-star"></small>
                                <small class="fas fa-star"></small>
                                <small class="fas fa-star-half-alt"></small>
                                <small class="far fa-star"></small>
                            </div>
                            <small class="pt-1">(99 Reviews)</small>
                        </div>
                        <fmt:formatNumber value="${requestScope.product.productPrice}" pattern="#,###" var="formattedPrice" />
                        <h3 class="font-weight-semi-bold mb-4">${formattedPrice} VND</h3>
                        <!--                        <div class="description">
                                                    <p class="mb-4">Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit
                                                        clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea
                                                        Nonumy</p>
                                                    <ul>
                                                        <li>Lorem Des</li>
                                                        <li>Lorem Des</li>
                                                        <li>Lorem Des</li>
                                                    </ul>
                                                </div>-->
                        <form action="product-detail" method="post">
                            <input type="hidden" name="productId" value="${requestScope.product.productId}"> 
                            <input type="hidden" name="orderDetailProductImg" value="${requestScope.product.productImg}"> 
                            <input type="hidden" name="orderDetailProductName" value="${requestScope.product.productName}"> 
                            <input type="hidden" name="orderDetailPriceProduct" value="${requestScope.product.productPrice}"> 

                            <div class="d-flex mb-3">
                                <strong class="text-dark mr-3">Sizes:</strong>

                                <c:forEach items="${requestScope.lstProductSize}" var="s" varStatus="i">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input required="" onclick="displayQuantity(this)" name="orderDetailSizeValue" value="${s.size.sizeValue}" <c:if test="${i.count eq 1}"></c:if> type="radio" class="custom-control-input" id="size-${s.productSizeId}" name="size">
                                        
                                        <label class="custom-control-label" for="size-${s.productSizeId}">${s.size.sizeValue}</label>
                                        
                                    </div>
                                </c:forEach>
                                

                            </div>
                            <!-- <div class="d-flex mb-4">
                                <strong class="text-dark mr-3">Colors:</strong>
                                <form>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" class="custom-control-input" id="color-1" name="color">
                                        <label class="custom-control-label" for="color-1">Black</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" class="custom-control-input" id="color-2" name="color">
                                        <label class="custom-control-label" for="color-2">White</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" class="custom-control-input" id="color-3" name="color">
                                        <label class="custom-control-label" for="color-3">Red</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" class="custom-control-input" id="color-4" name="color">
                                        <label class="custom-control-label" for="color-4">Blue</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" class="custom-control-input" id="color-5" name="color">
                                        <label class="custom-control-label" for="color-5">Green</label>
                                    </div>
                                </form>
                            </div> -->
                            <div class=" align-items-center mb-4 pt-2">
                                <div class="d-flex">
                                    <div class="input-group quantity mr-3 mb-3" style="width: 130px;">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-primary btn-minus">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                        <input name="orderDetailQuantity" type="text" class="form-control bg-secondary border-0 text-center" value="1">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-primary btn-plus">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center mb-3">
                                        <div id="quantity-size"></div>
                                        <input type="hidden" name="xxx" id="quantity-size-input" value=""> 
                                    </div>
                                </div>
                                <c:if test="${sessionScope.accountCur != null}">
                                    <button type="submit" class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i> Add To
                                        Cart</button>
                                    </c:if>   
                                    <c:if test="${sessionScope.accountCur == null}">    
                                    <a href="sign-in">
                                        <button type="button" class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i>
                                            Add To Cart</button>
                                    </a>
                                </c:if>

                            </div>
                        </form>
                            
                        <!-- <div class="d-flex pt-2">
                            <strong class="text-dark mr-2">Share on:</strong>
                            <div class="d-inline-flex">
                                <a class="text-dark px-2" href="">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a class="text-dark px-2" href="">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a class="text-dark px-2" href="">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                                <a class="text-dark px-2" href="">
                                    <i class="fab fa-pinterest"></i>
                                </a>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
            <div class="row px-xl-5">
                <div class="col">
                    <div class="bg-light p-30">
                        <div class="nav nav-tabs mb-4">
                            <a class="nav-item nav-link text-dark active" data-toggle="tab" href="#tab-pane-1">Description</a>

                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tab-pane-1">
                                <h4 class="mb-3">Product Description</h4>
                                <p>${requestScope.product.productDescription}</p>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Detail End -->


        <!-- Products Start -->
        <div class="container-fluid py-5">
            <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">You May Also Like</span></h2>
            <div class="row px-xl-3">
                <div class="col">
                    <div class="owl-carousel related-carousel">
                        <c:forEach items="${requestScope.lstRandProduct}" var="p">
                            <div class="col-4 mb-3">
                                <div class="card">
                                    <div class="imgBox product-img position-relative overflow-hidden">
                                        <img style="width: auto" src="${p.productImg}" alt="" class="mouse">
                                    </div>
                                    <div class="contentBox d-flex align-items-center" >
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
            </div>
        </div>
        <!-- Products End -->


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
        <script>
                            function displayQuantity() {
                                var ele = document.getElementsByName('orderDetailSizeValue');
                                for (i = 0; i < ele.length; i++) {
                                    if (ele[i].checked) {
                                        addItemToCart("${requestScope.product.productId}", ele[i].value);
                                    }     
                                }
                            }
                            
                            function addItemToCart(itemId, sizeValue) {
                                let url = "product-quantity?productId=" + itemId + "&sizeValue=" + sizeValue;
                                const request = new XMLHttpRequest();
                                request.open("GET", url, true);
                                request.onload = function () {
                                    if (this.readyState === 4 && this.status === 200) {
                                        document.getElementById("quantity-size").innerHTML = this.responseText + "available product";
                                        document.getElementById("quantity-size-input").value = this.responseText;
                                        console.log(this.responseText);
                                    } else {
                                        console.log("error");
                                    }
                                };
                                request.send(null);
                            }
        </script>

    </body>

</html>