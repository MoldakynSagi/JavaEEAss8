<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Title </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <link href="css/c.css" rel='stylesheet' type='text/css'/>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="adminDashboard.jsp">Electronic shop </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="ViewElectronicsServlet">View Electronics</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addElectronic.jsp">ADD</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="deleteElectronic.jsp">Delete</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="OrdersServlet">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="UserLogoutServlet"> Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<table class="table table-striped">
    <thead>
    <tr>
        <th>Order Id</th>
        <th>electronic Id</th>
        <th>User Id</th>


    </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${Orders}">
        <tr>
            <td><c:out value="${order.id}"/></td>
            <td><c:out value="${order.electronic_id}"/></td>
            <td><c:out value="${order.user_id}"/></td>
        </tr>

    </c:forEach>
    </tbody>
</table>
</body>


</html>