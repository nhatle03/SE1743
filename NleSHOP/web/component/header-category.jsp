<div class="container-fluid bg-dark" >
    <div class="row px-xl-5" style="margin-bottom: 0px">
        <div class="col-lg-2 d-flex align-items-center" >
            <a href="/NleSHOP/?#" class="text-decoration-none">
                <span class="h3 text-uppercase text-primary bg-dark px-2">Nle</span>
                <span class="h3 text-uppercase text-dark bg-primary px-2 ml-n1">Shop</span>
            </a>
        </div>
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
                <i class="fa fa-angle-down text-dark"></i>
            </a>
            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                <div class="navbar-nav w-100">
                    <c:forEach items="${requestScope.lstCategory}" var="c">
                        <a href="shop?categoryId=${c.categoryId}" class="nav-item nav-link">${c.categoryName}</a>
                    </c:forEach>
                </div>
            </nav>
        </div>
        <div class="col-lg-7">
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none" style="font-size: 30px">
                    <span class="h5 text-uppercase text-dark bg-light px-2">Nle</span>
                    <span class="h5 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="/NleSHOP" class="nav-item nav-link active">Home</a>
                        <a href="shop" class="nav-item nav-link">Shop</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down mt-1"></i></a>
                            <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
                                <a href="cart" class="dropdown-item">Shopping Cart</a>
                                <a href="checkout" class="dropdown-item">Checkout</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-5 col-6 text-left">
                        <form method="get" action="shop">
                            <div class="input-group">
                                <input value="${requestScope.searchValue}" name="searchValue" type="text" class="form-control" placeholder="Search for products">
                                <div class="input-group-append">
                                    <button type="submit">
                                        <span class="input-group-text bg-transparent text-primary">
                                            <i class="fa fa-search"></i>
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="navbar-nav ml-auto py-0 d-none d-lg-block">

                        <a href="" class="btn px-0 ml-3">
                            <i class="fas fa-shopping-cart text-primary"></i>
                            <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">${sessionScope.lstCart.size()}</span>
                        </a>
                    </div>
                    <div class="d-inline-flex align-items-center" >
                        <div class="btn-group" >
                            <button type="button" style="background-color: #FFD333; margin-left: 20px" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown"><i class="fas fa-user p-2"></i>${sessionScope.accountDetail.accountDetailName}</button>
                            <div class="dropdown-menu dropdown-menu-right">
                                <c:if test="${sessionScope.accountCur == null}">
                                    <a class="dropdown-item" type="button" href="sign-in">Sign in</a>
                                    <a class="dropdown-item" type="button" href="sign-up">Sign up</a>
                                </c:if>                          
                                <c:if test="${sessionScope.accountCur != null}">
                                    <a class="dropdown-item" type="button" href="profile">My profile</a>
                                    <a class="dropdown-item" type="button" href="log-out">Log out</a>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>