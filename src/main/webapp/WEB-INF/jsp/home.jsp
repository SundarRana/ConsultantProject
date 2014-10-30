<%-- 
    Document   : home
    Created on : Sep 3, 2014, 6:37:40 PM
    Author     : Robinsion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>Home</title>
        <style>
            .jumbotron {
                background-image:url('http://goo.gl/04j7Nn');
                height: 500px;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>

    <body>
        <!-- Static navbar -->
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

        <div class="jumbotron">
            <div class="container">
                <h1>Welcome to Skylane!</h1>
                <p style="color: whitesmoke">A merging place for ideas.</p>
                <a href="about" style="active">Learn More</a>
            </div>
        </div> 

        <div class="neighborhood-guides">
            <div class="container">
                <!--                <h2>About Skylane</h2>
                                <p>Skylane is a merging software developing company based on New York. We have a team of individuals who have hungry for advancement in technology</p>-->

                <div class="learn-more">
                    <h4>Here is my all time favorite saying from Apple Inc.</h4>
                    <p>Here’s to the crazy ones. The misfits. The rebels. The troublemakers. The round pegs in the square holes. The ones who see things differently. They’re not fond of rules. And they have no respect for the status quo. You can quote them, disagree with them, glorify or vilify them. About the only thing you can’t do is ignore them. Because they change things. They push the human race forward. And while some may see them as the crazy ones, we see genius. Because the people who are crazy enough to think they can change the world, are the ones who do.</p>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <img src="http://goo.gl/0sX3jq">
                        </div>
                        <div class="thumbnail">
                            <img src="http://goo.gl/an2HXY">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <img src="http://goo.gl/Av1pac">
                        </div> 
                        <div class="thumbnail">
                            <img src="http://goo.gl/vw43v1">
                        </div>   
                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <img src="http://goo.gl/0Kd7UO">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="learn-more">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h3>Ideas</h3>
                        <p>First comes thought; then organization of that thought, into ideas and plans; then transformation of those plans into reality. The beginning, as you will observe, is in your imagination. <strong>Napoleon Hill</strong></p>
                        <p><a href="#">Create ideas and be your master</a></p>
                    </div>
                    <div class="col-md-4">
                        <h3>Innovations</h3>
                        <p>Software innovation, like almost every other kind of innovation, requires the ability to collaborate and share ideas with other people, and to sit down and talk with customers and get their feedback and understand their needs. <strong>Bill Gates</strong> </p>
                        <p><a href="#">Implement your ideas</a></p>
                    </div>
                    <div class="col-md-4">
                        <h3>Passion</h3>
                        <p>We can each define ambition and progress for ourselves. The goal is to work toward a world where expectations are not set by the stereotypes that hold us back, but by our personal passion, talents and interests. <strong>Sheryl Sandberg</strong></p>
                        <p><a href="#">Help yourself to burn your passion</a></p>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="../../dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>