<%-- 
    Document   : list
    Created on : Sep 3, 2014, 7:10:44 PM
    Author     : Robinsion
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style type="text/css">
            .bs-example{
                margin: 20px;
            }
            .error{
                color: red;
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
            <form:form method="POST" commandName="sales" cssClass="form-signin" action="salesForm">
                <div class="col-md-4"></div>

                <div class="col-md-4">
                    <h3 class=" form-signin-heading">Please enter the Sales</h3><br/>
                    <h4 class="error form-group">${error}</h4><br/>
                    <div class="row">
                        <div class="form-group">
                            <form:hidden path="userId" cssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <form:label path="customers">Number of Customers</form:label>
                            <form:input path="customers" cssClass="form-control" />
                            <form:errors path="customers" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="orders">Number of Orders</form:label>
                            <form:input path="orders" cssClass="form-control" />
                            <form:errors path="orders" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="products">Number of Products</form:label>
                            <form:input path="products" cssClass="form-control" />
                            <form:errors path="products" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="amount">Total amount</form:label>
                            <form:input path="amount" cssClass="form-control" />
                            <form:errors path="amount" cssClass="error"/>
                        </div>
                        <button type="submit" class="btn btn-primary">Finish</button>
                    </div>
                </div>
                <div class="col-md-4"></div>        
            </form:form>
        </div>
    </body>
</html>
