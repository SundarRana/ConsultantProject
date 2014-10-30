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
            .table {
                background-image: url("img/sunny.jpg");
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
            <h1>List of Consultants</h1><hr><br/>
            <div>
                <table class="table">
                    <thead>
                        <tr class="info">
                            <th>User ID</th>
                            <th>Username</th>
                            <th>FirsName</th>
                            <th>LastName</th>
                            <th>Date of Birth</th>
                            <th>Gender</th>
                            <th>Social Security</th>
                            <th><span class="glyphicon glyphicon-circle-arrow-down"></span>    View User's Sales</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="warning">
                            <td>${ci.userId}</td>
                            <td>${ci.username}</td>
                            <td>${ci.firstName}</td>
                            <td>${ci.lastName}</td>
                            <td>${ci.dob}</td>
                            <td>${ci.gender}</td>
                            <td>${ci.ssn}</td>
                            <td><a href="<c:url value="viewsales?userId=${ci.userId}"/>">Click Here</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <table class="table">
                    <thead>
                        <tr class="info">
                            <th>Street Name</th>
                            <th>Apt/Suite</th>
                            <th>City</th>
                            <th>State</th>
                            <th>Country</th>
                            <th>Zip Code</th>
                            <th>Type</th>
                            <th><span class="glyphicon glyphicon-circle-arrow-down"></span>    Sales Form</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="warning">
                            <td>${ca.address1}</td>
                            <td>${ca.address2}</td>
                            <td>${ca.city}</td>
                            <td>${ca.state}</td>
                            <td>${ca.country}</td>
                            <td>${ca.zipcode}</td>
                            <td>${ca.type}</td>
                            <td><a href="<c:url value="salesform?userId=${ci.userId}"/>">Enter Here</a></td> 
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
