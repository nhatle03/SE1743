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
                        <th>Trạng thái</th>
                        <th>Chi tiết</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${orders}" var="i" varStatus="no">
                    <tr>
                        <td>${no.index+1}</td>
                        <td>${i.orderId}</td>
                        <td>${i.orderStatusId== 1 ? "new" : i.orderStatusId == 2 ? "ship" : "done"}</td>
                        <td><a href="#" data-toggle="modal" data-target="#myModal" class="g-color">Chi tiết</a></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

