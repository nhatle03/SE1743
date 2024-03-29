<%-- 
    Document   : admin-index
    Created on : Oct 20, 2018, 10:10:00 PM
    Author     : Shado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Site</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/common.css">
        <link rel="stylesheet" href="assets/css/admin-index.css">
    </head>
    <body>
        <%@include file="common/admin-nav.jsp"%>

        <c:if test="${accountCur eq null}">
            <c:redirect url="error.jsp"/>
        </c:if>

        <!-- Cover -->
        <div id="main-contain" class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="left-side">
                        <div class="row title">
                            <div class="col-md-12">
                                <h6>Danh mục quản lý</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="side-nav">
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item">
                                            <a class="nav-link" href="redirectpage?page=1">
                                                <i class="mr-2"></i> Dashboard
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="redirectpage?page=2">
                                                <i class="mr-2"></i> Quản lý tài khoản
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="redirectpage?page=3">
                                                <i class="mr-2"></i> Quản lý sản phẩm
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="redirectpage?page=4">
                                                <i class="mr-2"></i> Quản lý đơn hàng
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <c:if test="${page == 1 || page eq null}">
                        <%@include file="admin-dashboard.jsp"%>
                    </c:if>
                    <c:if test="${page == 2}">
                        <%@include file="admin-accounts.jsp"%>
                    </c:if>
                    <c:if test="${page == 3}">
                        <%@include file="admin-products.jsp"%>
                    </c:if>
                    <c:if test="${page == 4}">
                        <%@include file="admin-orders.jsp"%>
                    </c:if>
                </div>
            </div>
        </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="assets/js/jquery/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="assets/js/bootstrap/bootstrap.min.js"></script>
        <script src="assets/js/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/js/datatables/datatables.vietnamese.js"></script>
        <script>
            $(document).ready(function () {
                $('#accounts').dataTable({
                    "oLanguage": vietnamese
                });
                $('#accounts').DataTable();
                $('#products').DataTable();
                $('#orders').DataTable();
            });
        </script>
        <script>
            var orderDetail = '${requestScope.orderDetail}';
            if (orderDetail !== '') {
                $('#orderDetailModal').modal('show');
            }
        </script>
    </body>
</html>
