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
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style type="text/css">
            .bs-example{
                margin: 20px;
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
            <h1>Address of ${username}</h1>
            <div>
                <table class="table">
                    <thead>
                        <tr class="info">
                            <th>User ID</th>
                            <th>Name</th>
                            <th>Street Address</th>
                            <th>Apt/Suite</th>
                            <th>City</th>
                            <th>state</th>
                            <th>Country</th>
                            <th>Zip Code</th>
                            <th>Type of Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="active">
                            <td>${address.userId.userId}</td>
                            <td>${address.userId.firstName}</td>
                            <td>${address.address1}</td>
                            <td>${address.address2}</td>
                            <td>${address.city}</td>
                            <td>${address.state}</td>
                            <td>${address.country}</td>
                            <td>${address.zipcode}</td>
                            <td>${address.type}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
