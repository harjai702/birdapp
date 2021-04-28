<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script
            src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <title>Bird Species</title>
    <script>
        $(document).ready(function() {
            $("#myTable").on('click', '.appro1', function () {
                var currentRow = $(this).closest("tr");
                var col1 = currentRow.find("td:eq(0)").text();
                var r = confirm("Confirm to Delete");
                if (r == true) {
                    $('#aa').val(col1);
                    document.forms[1].submit();
                    //window.location.href = "datacheck.jsp";
                } else {

                }
            });
        });
    </script>
</head>
<body>
<form action="/add1" method="post">
    Name of bird:<input type="text" name="name"><br>
    Size of bird:<input type="text" name="size"><br>
    Colour of bird:<input type="text" name="color"><br>
    Weight of bird:<input type="text" name="weight"><br>
    <input type="submit" value="Add">
</form>
<c:if test="${not empty lists}">
<table class="table table-striped table-hover" id="myTable">
    <tr><td><b>Name</b></td><td><b>size</b></td><td><b>color</b></td><td><b>Weight</b></td><td><b>Delete</b></td></tr>
    <c:forEach var="lsst" items="${lists}">
    <tr>
        <td>${lsst.name}</td>
        <td>${lsst.size}</td>
        <td> ${lsst.color}</td>
        <td>${lsst.weight}</td>
        <td><input type="radio" class="appro1" name="1">Delete</td>
    <tr>
        </c:forEach>
</table>
</c:if>
<form action="delspec" method="post">
    <input type="text" id="aa" name="idd" style="display:none;">
</form>
</body>
</html>
