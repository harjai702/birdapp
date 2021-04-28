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
<form action="/add2" method="post">
    Bird Species:<input type="text" name="birdspec"><br>
    Date:<input type="date" name="date"><br>
    Location:<input type="text" name="location"><br>
    <input type="submit" value="Add">
</form>
<c:if test="${not empty lists}">
    <table class="table table-striped table-hover" id="myTable">
        <tr><td><b>Bird Species</b></td><td><b>Date And Time</b></td><td><b>Location</b></td><td><b>Delete</b></td></tr>
        <c:forEach var="lsst" items="${lists}">
        <tr></tr>
        <td>${lsst.birdspec}</td>
        <td>${lsst.date}</td>
        <td> ${lsst.location}</td>
        <td><input type="radio" class="appro1" name="1">Delete</td>
        <tr>
            </c:forEach>
    </table>
</c:if>
<form action="delsight" method="post">
    <input type="text" id="aa" name="idd" style="display:none;">
</form>
</body>
</html>
