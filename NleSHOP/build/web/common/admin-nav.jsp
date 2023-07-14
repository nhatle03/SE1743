<%-- 
    Document   : admin-nav
    Created on : Aug 24, 2018, 7:57:01 PM
    Author     : Shado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Nav -->
<nav class="navbar navbar-expand-md bg-light navbar-light">
    <div class="container pr-0">
        <a class="mr-4 brand" href="admin-index.jsp">Trang chủ</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <div class="ml-auto">
                <ul class="navbar-nav"> 
                    <c:if test="${accountCur ne null}">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${accountCur.accountEmail}
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="log-out">Đăng xuất</a>
                            </div>
                        </li>
                    </c:if>
                    
                </ul>
            </div>
        </div>
    </div>
</nav>