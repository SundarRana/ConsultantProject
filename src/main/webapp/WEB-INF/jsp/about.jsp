
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>About</title>
        <style type="text/css">
            img{
                margin: 10px;
            }
            .bs-example{
                margin: 20px;
            }
        </style>
        <style>
            a,
            a:focus,
            a:hover {
                color: #fff;
            }

            /* Custom default button */
            .btn-default,
            .btn-default:hover,
            .btn-default:focus {
                color: #333;
                text-shadow: none; /* Prevent inheritence from `body` */
                background-color: #fff;
                border: 1px solid #fff;
            }


            /*
             * Base structure
             */

            html,
            body {
                height: 100%;
                background-color: #333;
            }
            body {
                color: #fff;
                text-align: center;
                text-shadow: 0 1px 3px rgba(0,0,0,.5);
            }

            /* Extra markup and styles for table-esque vertical and horizontal centering */
            .site-wrapper {
                display: table;
                width: 100%;
                height: 100%; /* For at least Firefox */
                min-height: 100%;
                -webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
                box-shadow: inset 0 0 100px rgba(0,0,0,.5);
            }
            .site-wrapper-inner {
                display: table-cell;
                vertical-align: top;
            }
            .cover-container {
                margin-right: auto;
                margin-left: auto;
            }

            /* Padding for spacing */
            .inner {
                padding: 30px;
            }


            /*
             * Header
             */
            .masthead-brand {
                margin-top: 10px;
                margin-bottom: 10px;
            }

            .masthead-nav > li {
                display: inline-block;
            }
            .masthead-nav > li + li {
                margin-left: 20px;
            }
            .masthead-nav > li > a {
                padding-right: 0;
                padding-left: 0;
                font-size: 16px;
                font-weight: bold;
                color: #fff; /* IE8 proofing */
                color: rgba(255,255,255,.75);
                border-bottom: 2px solid transparent;
            }
            .masthead-nav > li > a:hover,
            .masthead-nav > li > a:focus {
                background-color: transparent;
                border-bottom-color: #a9a9a9;
                border-bottom-color: rgba(255,255,255,.25);
            }
            .masthead-nav > .active > a,
            .masthead-nav > .active > a:hover,
            .masthead-nav > .active > a:focus {
                color: #fff;
                border-bottom-color: #fff;
            }

            @media (min-width: 768px) {
                .masthead-brand {
                    float: left;
                }
                .masthead-nav {
                    float: right;
                }
            }


            /*
             * Cover
             */

            .cover {
                padding: 0 20px;
            }
            .cover .btn-lg {
                padding: 10px 20px;
                font-weight: bold;
            }


            /*
             * Footer
             */

            .mastfoot {
                color: #999; /* IE8 proofing */
                color: rgba(255,255,255,.5);
            }


            /*
             * Affix and center
             */

            @media (min-width: 768px) {
                /* Pull out the header and footer */
                .masthead {
                    position: fixed;
                    top: 0;
                }
                .mastfoot {
                    position: fixed;
                    bottom: 0;
                }
                /* Start the vertical centering */
                .site-wrapper-inner {
                    vertical-align: middle;
                }
                /* Handle the widths */
                .masthead,
                .mastfoot,
                .cover-container {
                    width: 100%; /* Must be percentage or pixels for horizontal alignment */
                }
            }

            @media (min-width: 992px) {
                .masthead,
                .mastfoot,
                .cover-container {
                    width: 700px;
                }
            }

        </style>

    </head>

    <body><!-- Static navbar -->
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

        <div class="inner cover">
            <h1 class="cover-heading">Welcome to Skylane</h1>
            <div class="bs-example"> 
                <img src="http://images.huffingtonpost.com/2014-01-21-RTKLLONDON.jpg" class="img-thumbnail" alt="Rounded Image">
            </div>
            <p class="">In a world of built-to-flip, hypergrowth, venture-capital-fueled, social media startups, Skylane was built for the long term. Skylane was built to take ideas from a group of brilliant people and grow them into products that support future development. We think of ourselves as practitioners of the lost art of "being a business".
                We have a lot in common with what people call a "startup" these days. We have a beautiful office, free snacks, flex time, top of the line benefits, parties, and all that other stuff. But we?re actually different from a venture-backed startup in several key ways.</p>
            <p class="">Skylane was conceived as a Silicon Valley-style tech company located in New York. We over-invested in a plush office as our headquarters. We're proud to offer private offices for every developer, free lunch and snacks, high-end espresso, great chairs and height-adjustable desks, and all the 30? monitors you can eat.
                Now that working remotely is just as effective as working from a single office, all of our development teams do their work fully online. That means any team member can work from just about anywhere with high-speed Internet and we?re happy to hire great people from anywhere in the world.
                If you?d like to come work for us, check out our Careers page for details. If you have a question about one of our products or people, just go to our Contact page and let us know!</p>
        </div>

        <div class="footer">
            <div class="inner">
                <p>Skylane<a href="http://localhost:8080/TTG-Consultant-Spring-2/"> Group</a>, 2014<a href="https://twitter.com/mdo"></a>.</p>
            </div>
        </div>
        <div>
            <div class="footer">
                <div class="container">
                    <p class="text-muted">Copyright Skylane 2014.</p>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="../../dist/js/bootstrap.min.js"></script>
        <script src="../../assets/js/docs.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>
