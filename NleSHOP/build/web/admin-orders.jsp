<%-- 
    Document   : admin-orders
    Created on : Oct 21, 2018, 11:36:18 PM
    Author     : Shado
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right-side mb-5">
    <div class="row title">
        <div class="col-md-12">
            <h6>
                Quản lý đơn hàng
            </h6>
        </div>
    </div>

    <div class="row mt-2">
        <div class="col-md-12">
            <table id="orders" table class="table table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Mã hóa đơn</th>
                        <th>Tên người mua</th>
                        <th>SĐT</th>
                        <th>Ngày tạo</th>
                        <th>Trạng thái</th>
                        <th>Chi tiết</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${orders}" var="i" varStatus="no">
                        <tr>
                            <td>${no.index+1}</td>
                            <td>${i.orderId}</td>
                            <td>${i.orderNameContact}</td>
                            <td>${i.orderPhoneContact}</td>
                            <td>${i.orderCreateDate}</td>
                            <td>${i.orderStatusId== 1 ? "Đang chuẩn bị hàng" : i.orderStatusId == 2 ? "Đang giao hàng" : i.orderStatusId == 3 ? "Đã giao" : "Đã hủy"}</td>

                            <td><a href="show-info?orderId=${i.orderId}"  class="g-color" style="color: red">Chi tiết</a></td><td>

                                <a onclick="updateStatus(${i.orderId},${i.orderStatusId})" href="javascript:void(0)" class="g-color" style="color: red">Cập nhật</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal fade" id="orderDetailModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Chi tiết đơn hàng - #${requestScope.id} </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <h4 class="mb-3"><span class="small text-muted"> Tổng giá: </span><fmt:formatNumber value="${requestScope.totalMoney}" pattern="#,###" var="formattedPrice" />${formattedPrice} VND </h4>
                <table id="orders" table class="table table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>STT</th>

                            <th>Ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng sản phẩm</th>
                            <th>Kích cỡ</th>
                            <th>Giá sản phẩm</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${orderDetail}" var="o" varStatus="no">
                            <tr>
                                <td>${no.index+1}</td>

                                <td><img src="${o.orderDetailProductImg}" style="width: 50px !important;height: 50px !important;"></td>
                                <td>${o.orderDetailProductName}</td>
                                <td>${o.orderDetailQuantity}</td>
                                
                                <td>${o.orderDetailSizeValue}</td>

                                <td><fmt:formatNumber value="${o.orderDetailPriceProduct}" pattern="#,###" var="formattedPrice" />${formattedPrice}  VND</td>
                                
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">


                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Xóa</button>
                <button type="button" class="btn btn-secondary btn-sm " data-dismiss="modal" aria-label="Close">Đóng</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="updateOrderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Cập nhật đơn hàng</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="update-orders" method="get">
                <div class="modal-body">

                    <label for="orders">Trạng thái đơn hàng:</label>
                    <select name="orderStatusId"  >

                        <option value="1">Đang chuẩn bị hàng</option>
                        <option value="2">Đang giao hàng</option>
                        <option value="3">Đã giao</option>
                        <option value="4">Đã hủy</option>
                    </select>
                    <br><br>
                </div>
                <div class="modal-footer">
                    <input type="hidden" id="order-update-id" name="orderId">
                    
                    <input type="submit" class="btn btn-danger btn-sm" value="Gửi đơn">Gửi
                    <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Đóng</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function updateStatus(orderId) {
        document.getElementById("order-update-id").value = orderId;
        
        $('#updateOrderModal').modal('show');
    }

</script>

