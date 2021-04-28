<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title>Birds Data</title>
</head>
<body>
<div class="container-fliud"  id="cont1" style="background-image:url('https://user-images.githubusercontent.com/42409905/116353614-b4bc8c80-a814-11eb-91b9-dd9bff4ee09d.jpg');background-repeat:no-repeat;background-size:cover;height:950px;">
    <br><br><br><br><br><br><br><br><br><br><br><br>
<div style="text-align: center;">
<form action="getspec" method="post">
    <input type="submit" class="btn btn-primary" value="Birds Species" style="font-size:26px;">
</form></div><br><br><br>
<div style="text-align: center;">
<form action="getsight" method="post">
    <input type="submit" class="btn btn-success" value="Birds sight" style="font-size:30px;">
</form>
</div>
</body>
</html>