
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style type="text/css">
            .bs-example{
                margin: 20px;
            }
            .form-group.error{
                color: #ff0000;
            }
            .formBorder{
                border: blue;
            }
            /* Sticky footer styles
            -------------------------------------------------- */
            html {
                position: relative;
                min-height: 100%;
            }
            body {
                /* Margin bottom by footer height */
                margin-bottom: 60px;
            }
            .footer {
                position: absolute;
                bottom: 0;
                width: 100%;
                /* Set the fixed height of the footer here */
                height: 60px;
                background-color: #f5f5f5;
            }


            /* Custom page CSS
            -------------------------------------------------- */
            /* Not required for template or sticky footer method. */

            body > .container {
                padding: 60px 15px 0;
            }
            .container .text-muted {
                margin: 20px 0;
            }

            .footer > .container {
                padding-right: 15px;
                padding-left: 15px;
            }

            code {
                font-size: 80%;
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
                <form:form method="POST" commandName="register" cssClass="form-signin" action="register">
                    <div class="col-md-1"></div>
                    <div class="col-md-4">
                        <div class="row">

                            <h3 class="form-signin-heading">Please sign in</h3><br/>
                            <div class="form-group">
                                <form:label path="username"><span class="glyphicon glyphicon-user"></span> Username</form:label>
                                <form:input path="username" cssClass="form-control" />
                                <form:errors path="username" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <form:label path="password"><span class="glyphicon glyphicon-lock"></span> Password</form:label>
                                <form:password path="password" cssClass="form-control"/>
                                <form:errors path="password" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <form:label path="firstName">First Name</form:label>
                                <form:input path="firstName" cssClass="form-control"/>
                                <form:errors path="firstName" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <form:label path="lastName">Last Name</form:label>
                                <form:input path="lastName" cssClass="form-control"/>
                                <form:errors path="lastName" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <form:label path="dob">Date of Birth</form:label>
                                <form:input path="dob" cssClass="form-control"/>
                                <form:errors path="dob" cssClass="error"/>
                            </div><br/>
                            <div class="form-group">
                                <div class="col-md-4">
                                    <form:label path="gender">Gender</form:label>
                                    <form:errors path="gender" cssClass="error"/>
                                </div><br/>
                                <div class="col-md-4">
                                    <form:radiobutton path="gender" value="Male" cssClass=""/> <strong>Male</strong>
                                </div>
                                <div class="col-md-4">
                                    <form:radiobutton path="gender" value="Female" cssClass=""/> <strong>Female</strong>

                                </div><br/>
                            </div><br/><br/>
                            <div class="form-group">
                                <form:label path="ssn">Social Security</form:label>
                                <form:input path="ssn" cssClass="form-control"/>
                                <form:errors path="ssn" cssClass="error"/>
                            </div><br/>  
                        </div>
                    </div>

                    <div class="col-md-2"></div>        

                    <div class="col-md-4">
                        <h3><span class="glyphicon glyphicon-home"></span> Address Information</h3><br/>
                        <%--<c:forEach items="register.consultantAddressCollection" var="consultantAddressCollection" varStatus="status">--%>
                        <div class="form-group">
                            <form:label path="address1">Street Name</form:label>
                            <form:input path="address1" cssClass="form-control"/>
                            <form:errors path="address1" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="address2">Apt/Suite</form:label>
                            <form:input path="address2" cssClass="form-control"/>
                            <form:errors path="address2" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="city">City</form:label>
                            <form:input path="city" cssClass="form-control"/>
                            <form:errors path="city" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="state">State</form:label>
                            <form:input path="state" cssClass="form-control"/>
                            <form:errors path="state" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="country">Country</form:label>
                            <form:input path="country" cssClass="form-control"/>
                            <form:errors path="country" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="zipcode">Zip Code</form:label>
                            <form:input path="zipcode" cssClass="form-control"/>
                            <form:errors path="zipcode" cssClass="error"/>
                        </div>
                        <div class="form-group">
                            <form:label path="type">Type</form:label>
                            <form:input path="type" cssClass="form-control"/>
                            <form:errors path="type" cssClass="error"/>
                        </div>
                        <%--</c:forEach>--%>
                        <button type="submit" class="btn btn-primary">Sign Up</button>
                    </div>

                    <div class="col-md-1"></div>
                </form:form>
            </div>
        </div>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="../../dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
        <script>
            jQuery(function ($) {
                $("#dob").mask("99-99-9999");
                $("#ssn").mask("999-99-9999");
            });
        </script>
        <script>
            /*
             Masked Input plugin for jQuery
             Copyright (c) 2007-2013 Josh Bush (digitalbush.com)
             Licensed under the MIT license (http://digitalbush.com/projects/masked-input-plugin/#license)
             Version: 1.3.1
             */
            (function ($) {
                function getPasteEvent() {
                    var el = document.createElement('input'),
                            name = 'onpaste';
                    el.setAttribute(name, '');
                    return (typeof el[name] === 'function') ? 'paste' : 'input';
                }

                var pasteEventName = getPasteEvent() + ".mask",
                        ua = navigator.userAgent,
                        iPhone = /iphone/i.test(ua),
                        android = /android/i.test(ua),
                        caretTimeoutId;

                $.mask = {
                    //Predefined character definitions
                    definitions: {
                        '9': "[0-9]",
                        'a': "[A-Za-z]",
                        '*': "[A-Za-z0-9]"
                    },
                    dataName: "rawMaskFn",
                    placeholder: '_',
                };

                $.fn.extend({
                    //Helper Function for Caret positioning
                    caret: function (begin, end) {
                        var range;

                        if (this.length === 0 || this.is(":hidden")) {
                            return;
                        }

                        if (typeof begin == 'number') {
                            end = (typeof end === 'number') ? end : begin;
                            return this.each(function () {
                                if (this.setSelectionRange) {
                                    this.setSelectionRange(begin, end);
                                } else if (this.createTextRange) {
                                    range = this.createTextRange();
                                    range.collapse(true);
                                    range.moveEnd('character', end);
                                    range.moveStart('character', begin);
                                    range.select();
                                }
                            });
                        } else {
                            if (this[0].setSelectionRange) {
                                begin = this[0].selectionStart;
                                end = this[0].selectionEnd;
                            } else if (document.selection && document.selection.createRange) {
                                range = document.selection.createRange();
                                begin = 0 - range.duplicate().moveStart('character', -100000);
                                end = begin + range.text.length;
                            }
                            return {begin: begin, end: end};
                        }
                    },
                    unmask: function () {
                        return this.trigger("unmask");
                    },
                    mask: function (mask, settings) {
                        var input,
                                defs,
                                tests,
                                partialPosition,
                                firstNonMaskPos,
                                len;

                        if (!mask && this.length > 0) {
                            input = $(this[0]);
                            return input.data($.mask.dataName)();
                        }
                        settings = $.extend({
                            placeholder: $.mask.placeholder, // Load default placeholder
                            completed: null
                        }, settings);


                        defs = $.mask.definitions;
                        tests = [];
                        partialPosition = len = mask.length;
                        firstNonMaskPos = null;

                        $.each(mask.split(""), function (i, c) {
                            if (c == '?') {
                                len--;
                                partialPosition = i;
                            } else if (defs[c]) {
                                tests.push(new RegExp(defs[c]));
                                if (firstNonMaskPos === null) {
                                    firstNonMaskPos = tests.length - 1;
                                }
                            } else {
                                tests.push(null);
                            }
                        });

                        return this.trigger("unmask").each(function () {
                            var input = $(this),
                                    buffer = $.map(
                                            mask.split(""),
                                            function (c, i) {
                                                if (c != '?') {
                                                    return defs[c] ? settings.placeholder : c;
                                                }
                                            }),
                                    focusText = input.val();

                            function seekNext(pos) {
                                while (++pos < len && !tests[pos])
                                    ;
                                return pos;
                            }

                            function seekPrev(pos) {
                                while (--pos >= 0 && !tests[pos])
                                    ;
                                return pos;
                            }

                            function shiftL(begin, end) {
                                var i,
                                        j;

                                if (begin < 0) {
                                    return;
                                }

                                for (i = begin, j = seekNext(end); i < len; i++) {
                                    if (tests[i]) {
                                        if (j < len && tests[i].test(buffer[j])) {
                                            buffer[i] = buffer[j];
                                            buffer[j] = settings.placeholder;
                                        } else {
                                            break;
                                        }

                                        j = seekNext(j);
                                    }
                                }
                                writeBuffer();
                                input.caret(Math.max(firstNonMaskPos, begin));
                            }

                            function shiftR(pos) {
                                var i,
                                        c,
                                        j,
                                        t;

                                for (i = pos, c = settings.placeholder; i < len; i++) {
                                    if (tests[i]) {
                                        j = seekNext(i);
                                        t = buffer[i];
                                        buffer[i] = c;
                                        if (j < len && tests[j].test(t)) {
                                            c = t;
                                        } else {
                                            break;
                                        }
                                    }
                                }
                            }

                            function keydownEvent(e) {
                                var k = e.which,
                                        pos,
                                        begin,
                                        end;

                                //backspace, delete, and escape get special treatment
                                if (k === 8 || k === 46 || (iPhone && k === 127)) {
                                    pos = input.caret();
                                    begin = pos.begin;
                                    end = pos.end;

                                    if (end - begin === 0) {
                                        begin = k !== 46 ? seekPrev(begin) : (end = seekNext(begin - 1));
                                        end = k === 46 ? seekNext(end) : end;
                                    }
                                    clearBuffer(begin, end);
                                    shiftL(begin, end - 1);

                                    e.preventDefault();
                                } else if (k == 27) {//escape
                                    input.val(focusText);
                                    input.caret(0, checkVal());
                                    e.preventDefault();
                                }
                            }

                            function keypressEvent(e) {
                                var k = e.which,
                                        pos = input.caret(),
                                        p,
                                        c,
                                        next;

                                if (e.ctrlKey || e.altKey || e.metaKey || k < 32) {//Ignore
                                    return;
                                } else if (k) {
                                    if (pos.end - pos.begin !== 0) {
                                        clearBuffer(pos.begin, pos.end);
                                        shiftL(pos.begin, pos.end - 1);
                                    }

                                    p = seekNext(pos.begin - 1);
                                    if (p < len) {
                                        c = String.fromCharCode(k);
                                        if (tests[p].test(c)) {
                                            shiftR(p);

                                            buffer[p] = c;
                                            writeBuffer();
                                            next = seekNext(p);

                                            if (android) {
                                                setTimeout($.proxy($.fn.caret, input, next), 0);
                                            } else {
                                                input.caret(next);
                                            }

                                            if (settings.completed && next >= len) {
                                                settings.completed.call(input);
                                            }
                                        }
                                    }
                                    e.preventDefault();
                                }
                            }

                            function clearBuffer(start, end) {
                                var i;
                                for (i = start; i < end && i < len; i++) {
                                    if (tests[i]) {
                                        buffer[i] = settings.placeholder;
                                    }
                                }
                            }

                            function writeBuffer() {
                                input.val(buffer.join(''));
                            }

                            function checkVal(allow) {
                                //try to place characters where they belong
                                var test = input.val(),
                                        lastMatch = -1,
                                        i,
                                        c;

                                for (i = 0, pos = 0; i < len; i++) {
                                    if (tests[i]) {
                                        buffer[i] = settings.placeholder;
                                        while (pos++ < test.length) {
                                            c = test.charAt(pos - 1);
                                            if (tests[i].test(c)) {
                                                buffer[i] = c;
                                                lastMatch = i;
                                                break;
                                            }
                                        }
                                        if (pos > test.length) {
                                            break;
                                        }
                                    } else if (buffer[i] === test.charAt(pos) && i !== partialPosition) {
                                        pos++;
                                        lastMatch = i;
                                    }
                                }
                                if (allow) {
                                    writeBuffer();
                                } else if (lastMatch + 1 < partialPosition) {
                                    input.val("");
                                    clearBuffer(0, len);
                                } else {
                                    writeBuffer();
                                    input.val(input.val().substring(0, lastMatch + 1));
                                }
                                return (partialPosition ? i : firstNonMaskPos);
                            }

                            input.data($.mask.dataName, function () {
                                return $.map(buffer, function (c, i) {
                                    return tests[i] && c != settings.placeholder ? c : null;
                                }).join('');
                            });

                            if (!input.attr("readonly"))
                                input
                                        .one("unmask", function () {
                                            input
                                                    .unbind(".mask")
                                                    .removeData($.mask.dataName);
                                        })
                                        .bind("focus.mask", function () {
                                            clearTimeout(caretTimeoutId);
                                            var pos,
                                                    moveCaret;

                                            focusText = input.val();
                                            pos = checkVal();

                                            caretTimeoutId = setTimeout(function () {
                                                writeBuffer();
                                                if (pos == mask.length) {
                                                    input.caret(0, pos);
                                                } else {
                                                    input.caret(pos);
                                                }
                                            }, 10);
                                        })
                                        .bind("blur.mask", function () {
                                            checkVal();
                                            if (input.val() != focusText)
                                                input.change();
                                        })
                                        .bind("keydown.mask", keydownEvent)
                                        .bind("keypress.mask", keypressEvent)
                                        .bind(pasteEventName, function () {
                                            setTimeout(function () {
                                                var pos = checkVal(true);
                                                input.caret(pos);
                                                if (settings.completed && pos == input.val().length)
                                                    settings.completed.call(input);
                                            }, 0);
                                        });
                            checkVal(); //Perform initial check for existing values
                        });
                    }
                });
            })(jQuery);
        </script>
    </body>
</html>