
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style type="text/css">
            .bs-example{
                margin: 20px;
            }
            .form-group.error{
                color: #ff0000;
            }
            .error{
                color: red;
            }
            body{
                background-image: url("http://www.photos-public-domain.com/wp-content/uploads/2012/01/blue-sky-with-sun-clouds-and-airplane-trail.jpg");
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

        <div class="jumbotrom">
            <div class="container">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="row">
                        <form:form method="POST" commandName="login" cssClass="form-signin">
                            <h2 class="form-signin-heading">Please sign in</h2><br/>
                            <c:if test="${not empty invalid}">
                                <h2 style="color: red">Your credentials don't match. Please try again.</h2>
                            </c:if>
                            <div class="form-group">
                                <form:label path="username"><span class="glyphicon glyphicon-user"></span> Username</form:label>
                                <form:input path="username" cssClass="form-control" />
                                <form:errors path="username" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <form:label path="password">Password</form:label>
                                <form:password path="password" cssClass="form-control"/>
                                <form:errors path="username" cssClass="error"/>
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form:form>
                    </div><br/>
                    <div>
                        <h4>Not a member yet?</h4>
                        <a href="<c:url value="register"/>" class="active"><u>Register Here</u></a>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </body>
</html>