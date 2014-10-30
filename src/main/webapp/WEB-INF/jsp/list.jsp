<%-- 
    Document   : list
    Created on : Sep 3, 2014, 7:10:44 PM
    Author     : Robinsion
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/error.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style type="text/css">
            .bs-example{
                margin: 20px;
            }
            .table {
                background-image: url("img/sunny.jpg");
            }
            a{
                color: white;
            }
            body{
                background-image: url("http://www.secretsofthefed.com/wp-content/uploads/2013/04/The-Night-Sky-Wallpaper.jpg");
            }
            table {
                border-collapse: separate;
                border-spacing: 0 5px;
            }

            thead th {
                background-color: #006DCC;
                color: white;
            }

            tbody td {
                background-color: #EEEEEE;
            }

            tr td:first-child,
            tr th:first-child {
                border-top-left-radius: 6px;
                border-bottom-left-radius: 6px;
            }

            tr td:last-child,
            tr th:last-child {
                border-top-right-radius: 6px;
                border-bottom-right-radius: 6px;
            }
        </style>
    </head>
    <body>
        <div class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="home">SkyLane</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="home">Home</a></li>
                        <li><a href="about">About</a></li>
                        <li><a href="list">List</a></li>
                        <li><a href="login">Log in</a></li>
                        <li><a href="register">Register</a></li>
                        <li><a href="logout">Log Out</a></li>
                    </ul>
                    <div class="col-sm-3 col-md-3 pull-right">
                        <form class="navbar-form" role="search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search" name="search" id="srch-term">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
        </div>
        <div class="container">
            <h1><span class="label">List of Consultants</span></h1><br/>
            <div class="table-responsive">
                <table class="table">
                    <thead class="bg-primary">
                        <tr class="">
                            <th>User Details</th>
                            <th>User ID</th>
                            <th>Username</th>
                            <th>FirsName</th>
                            <th>LastName</th>
                            <th>Date of Birth</th>
                            <th>Gender</th>
                            <th>Social Security</th>
                            <th>Click to view Address</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="l">
                            <tr>
                                <td class="info"><a href="<c:url value="userDetails?userId=${l.userId}"/>" class="btn"><span class="glyphicon glyphicon-user"></span> User Details</a></td>
                                <td class="active">${l.userId}</td>
                                <td class="warning">${l.username}</td>
                                <td class="active">${l.firstName}</td>
                                <td class="warning">${l.lastName}</td>
                                <td class="active">${l.dob}</td>
                                <td class="warning">${l.gender}</td>
                                <td class="active">${l.ssn}</td>
                                <td class="info"><a href="<c:url value="address?userId=${l.userId}"/>" class="btn"><span class="glyphicon glyphicon-home"></span> Address</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
