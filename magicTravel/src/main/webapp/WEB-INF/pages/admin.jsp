<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/adv111.css">
    <link rel="stylesheet" href="/css/slyder1.css">

<body>
<div class="container-fluid site-wrapper">
    <div class="container-fluid header-wrapper" id="header">
        <div class="container1">
            <div class="title">
                International Adventures with MagicTravel
            </div>
        </div>
        <div class="conteiner2">
            <a href="#"  id="touch-menu">Menu</a>
            <nav >
                <ul class="nav clearfix">
                    <li class="goleft"><a href="index"> Adventure</a></li>
                    <li class="goleft"><a href="lviv"> Lviv</a></li>
                    <li class="goleft"><a href="london"> London</a></li>
                    <li class="goleft"><a href="paris"> Paris</a></li>
                    <li class="goleft"><a href="krakow"> Krakow</a></li>
                    <li class="goleft"><a href="info"> About Company</a></li>
                    <li class="goright dropdown">
                        <a href="javascript:void(0)" class="dropbtn">My Cabinet</a>
                        <div class="dropdown-content">
                            <sec:authorize access="isAuthenticated()">
                                <a href="cabina"> Hello</a>${user}
                            </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <a href="<c:url value="/logout" />"> Log out</a>
                            </sec:authorize>
                            <sec:authorize access="!isAuthenticated()">
                                <a href="login"> Log in</a>
                            </sec:authorize>
                            <sec:authorize access="!isAuthenticated()">
                                <a href="registraction"> Registration</a>
                            </sec:authorize>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
    </div>



    <div class="container-fluid content-wrapper loginpol" id="content">

        <div class="title">
            Admin Page
        </div>
        <div class="title1 center">
            Add new Trip
        </div>
        <div class="col-65">
            <form action="saveTrip" method="post" enctype="multipart/form-data">

                <label for="tripname">Enter Trip Name</label>
                <br>
                <input type="text" id="tripname" name="tripname" placeholder="TripName" required>
                <br>
                <label for="townname">Enter Town Name</label>
                <br>
                <input type="text" id="townname" name="townName" placeholder="TownName" required>
                <br>
                <label for="date">Enter Date of Trip</label>
                <br>
                <input type="date" id="date" name="date" required>
                <br>
                <label for="amount">Enter available Amount of visiters</label>
                <br>
                <input type="number" id="amount" name="amount" placeholder="Amount" required>
                <br>

                <input type="submit" value="Add new Trip">

                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
            </form>
        </div>

        <div class="title1 center">
            Remove Trip by Id
        </div>

        <div class="col-65">
            <form action="removeTrip" method="post" enctype="multipart/form-data">

                <label for="tripId">Enter Trip Id to Remove</label>
                <br>
                <input type="number" id="tripId" name="tripId" placeholder="trip Id" required>
                <br>

                <input type="submit" value="Remove Trip">

                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
            </form>
        </div>

    </div>



    <div class="container-fluid footer-wrapper" id="footer">

        <div class="footinfo">
            CUSTOMER SERVICE
        </div>
        <div class="footpowby">
            Call Us
            +380995521396
            <br>
            Hours
            Mon–Sat 8am–9pm
            Sun 10am-6pm
            <br>
            Address
            Lviv, Ukraine
            Saharova 23. 314b
        </div>
    </div>

</div>

<script rel="stylesheet" src="/js/script.js"></script>

</body>
</html>
