<%-- 
    Document   : student
    Created on : May 24, 2023, 1:13:56 PM
    Author     : Admin
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="list-student" method="post">
            Number of Students: <input name="number" type="number" required="">
            <button type="submit">generate</button>
        </form>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>DOB</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.lst}" var="s">
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.name}</td>
                        <td><input type="checkbox" disabled="" ${s.gender ? "checked" : ""}></td>
                        <td><fmt:formatDate value="${s.dob}" pattern="dd-MM-yyyy" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
