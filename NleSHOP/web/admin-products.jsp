<%-- 
    Document   : admin-products
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
                Thêm sản phẩm mới
            </h6>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-md-6">
            <button class="btn btn-success" type="button" data-toggle="collapse" data-target="#addProduct" aria-expanded="false" aria-controls="collapseExample">
                Thêm sản phẩm mới
            </button>
            <p class="mt-3">Ấn vào nút để thêm cản phẩm mới vào kho hàng.</p>
        </div>
        <div class="col-md-6">
            <span style="color: #ed1d27">${message}</span>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="collapse mb-2" id="addProduct">
                <div class="card">
                    <div class="card-body">
                        <form action="addproduct" method="post" enctype="multipart/form-data" acceptcharset="UTF-8">
                            <div class="row px-3">
                                <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="name" placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" name="category">
                                        <c:forEach items="${categories}" var="i" varStatus="no">
                                            <option value="${i.categoryId}">${i.categoryName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" name="price" placeholder="Giá sản phẩm">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" name="quantity" placeholder="Số lượng sản phẩm">
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" name="status">
                                        <option value="1">Còn hàng</option>
                                        <option value="2">Giảm giá</option>
                                        <option value="3">Hết hàng</option>
                                        <option value="4">Ngừng kinh doanh</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="file" class="form-control-file" name="fileUp" multiple />
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" rows="3" name="description" placeholder="Mô tả chi tiêt"></textarea>
                                </div>
                                <input type="submit" class="btn btn-success ml-3" name="btnUpload" value="Thêm sản phẩm">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row title">
        <div class="col-md-12">
            <h6>
                Danh sách sản phẩm
            </h6>
        </div>
    </div>  
    <div class="row mt-2">
        <div class="col-md-12">
            <table id="products" table class="table table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Ảnh</th>
                        <th>Mã SP</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá</th>
                        <th>Trạng thái</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="i" varStatus="no">
                    <tr>
                        <td>${no.index+1}</td>
                        <td><img src="${i.productImg}" style="width: 100px !important;height: 100px !important;"></td>
                        <td>${i.productId}</td>
                        <td>${i.productName}</td>
                        
                        <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.productPrice}"/><sup>đ</sup></td>
                        <td>${i.productStatusId == 1 ? "Còn hàng" : i.productStatusId == 2 ? "Giảm giá" : i.productStatusId == 3 ? "Hết hàng" : "Ngừng kinh doanh"}</td>
                        <td>
                            <a href="#" data-toggle="modal" data-target="#myModal" class="g-color">Chi tiết</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

