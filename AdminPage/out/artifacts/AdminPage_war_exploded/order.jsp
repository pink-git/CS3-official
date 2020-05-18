<%@ page import="java.util.ArrayList" %>
<%@ page import="com.codegym.order" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>List Customer</title>
    <style>
        .table {
            margin: 0px auto;
            align: center;
        }
    </style>
</head>
<body>
<%
    ArrayList<order> listOrder = new ArrayList<>();
    listOrder.add(new order("Hieu","cua hang 1","10h35",true,"10h35"));
    listOrder.add(new order("Trung","cua hang 3","9h35",false,"11h35"));
    listOrder.add(new order("Kien","cua hang 2","8h35",false,"11h35"));
    listOrder.add(new order("Quan","cua hang 2","11h35",true,"11h35"));
    listOrder.add(new order("Phong","cua hang 1","11h35",true,"12h00"));

    pageContext.setAttribute("listOrder",listOrder);
%>
<form>
    <div align="center">
        <table border="1" cellpadding="5" style="background-color: aqua">
            <tr><th colspan="6"><h1>Order list</h1></th></tr>
            <tr>
                <td width="300px" height="60px">User</td>
                <td width="300px" height="60px">Cua hang</td>
                <td width="300px" height="60px">Order time</td>
                <td width="300px" height="60px">Guest</td>
                <td width="300px" height="60px">Confirm time</td>
                <td colspan="2">Action</td>
            </tr>
            <c:forEach var="order" items="#{listOrder}">
                <tr>
                    <td><c:out value="${order.user}"/></td>
                    <td><c:out value="${order.brandId}"/></td>
                    <td><c:out value="${order.orderTime}"/></td>
                    <td><c:out value="${order.guest}"/></td>
                    <td><c:out value="${order.confirmTime}"/></td>
                    <td><a href="#">edit</a></td>
                    <td><a href="#">delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</form>
</body>
</html>
