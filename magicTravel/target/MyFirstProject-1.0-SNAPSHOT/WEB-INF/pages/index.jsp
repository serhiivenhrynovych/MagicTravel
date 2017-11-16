<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 14.11.17
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
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
                    <li class="goleft active"><a href="index"> Adventure</a></li>
                    <li class="goleft"><a href="lviv"> Lviv</a></li>
                    <li class="goleft"><a href="london"> London</a></li>
                    <li class="goleft"><a href="paris"> Paris</a></li>
                    <li class="goleft"><a href="krakow"> Krakow</a></li>
                    <li class="goleft"><a href="info"> About Company</a></li>
                    <li class="goright dropdown">
                        <a href="javascript:void(0)" class="dropbtn">My Cabinet</a>
                        <div class="dropdown-content">
                            <sec:authorize access="isAuthenticated()">
                                <a href="cabina"> Hello</a>
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

    <div class="container-fluid content-wrapper" id="content">
        <div class="col-9 levak">
            <div class="title">
                The Best Adventures is Out There!

            </div>
            <div class="section1">
                <div class="title12">
                    <a class="title13" href="lviv">Lviv</a>
                </div>
                <div class="subtitle11">
                    If you’ve spent time in other Ukrainian regions, Lviv will come as shock. Mysterious and architecturally lovely, this Unesco–listed city is the country’s least Soviet and exudes the same authentic Central European charm as pre-tourism Prague or Kraków once did. Its quaint cobbles, bean-perfumed coffeehouses and rattling trams are a continent away from the post-Soviet badlands of the east. It’s also a place where the candle of Ukrainian national identity burns brightest and where Russian is definitely a minority language.
                </div>
                <a href="lviv">
                    <img src="/img/Lviv6.jpg" alt="img">
                </a>
            </div>
            <div class="section3">
                <div class="col-4">
                    <a href="london">
                        <img src="/img/London3.jpg" alt="img">
                    </a>
                    <p class="probel"><a class="title13" href="london">London</a></p>
                    <div class="subtitle12">
                        One of the world's most visited cities, London has something for everyone: from history and culture to fine food and good times.
                    </div>
                </div>
                <div class="col-4 secfor">
                    <a href="paris">
                        <img src="/img/Paris9.jpg" alt="img">
                    </a>
                    <p class="probel"><a class="title13" href="paris">Paris</a></p>
                    <div class="subtitle12">
                        Paris has a timeless familiarity for first-time and frequent visitors, with instantly recognisable architectural icons, along with exquisite cuisine, chic boutiques and priceless artistic treasures.
                    </div>
                </div>
                <div class="col-4 secfor">
                    <a href="krakow">
                        <img src="/img/Krakow4.jpg" alt="img">
                    </a>
                    <p class="probel"><a class="title13" href="krakow">Krakow</a></p>
                    <div class="subtitle12">
                        If you believe the legends, Kraków was founded on the defeat of a dragon, and it’s true a mythical atmosphere permeates its attractive streets and squares.
                    </div>
                </div>

            </div>
        </div>
        <div class="col-3">
            <div class="rightside">
                <div class="firstcont">
                    <div class="title2">
                        Share this page
                    </div>
                    <ul class="tabl1">
                        <li class="fa fa-facebook-square"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fus-123-city-travel.simplesite.com%2F423588257"> Share on Facebook</a></li>
                        <li class="fa fa-twitter-square"><a target="_blank" href="https://twitter.com/intent/tweet?related=simplesite&url=http%3A%2F%2Fus-123-city-travel.simplesite.com%2F423588257&original_referer=http%3A%2F%2Fus-123-city-travel.simplesite.com%2F423588257"> Share on Twitter</a></li>
                        <li class="fa fa-google-plus-official"><a target="_blank" href="https://accounts.google.com/signin/v2/sl/pwd?service=oz&passive=1209600&continue=https%3A%2F%2Fplus.google.com%2Fup%2F%3Fcontinue%3Dhttps%3A%2F%2Fplus.google.com%2Fshare%3Furl%253Dhttp%3A%2F%2Fus-123-city-travel.simplesite.com%2F423588257%26gpsrc%3Dgplp0&authuser=0&flowName=GlifWebSignIn&flowEntry=ServiceLogin"> Share on Google+</a></li>
                    </ul>
                </div>
                <div class="seccont">
                    <div class="title3">
                        Ordering
                    </div>
                    <div class="contone">
                        <p>You can order the trip here</p>
                        <div class="bottom">
                            <sec:authorize access="isAuthenticated()">
                                <a href="ordering" class="btn btn-block"> Order the Trip NOW</a>
                            </sec:authorize>
                            <sec:authorize access="!isAuthenticated()">
                                <a href="login" class="btn btn-block"> Order the Trip NOW</a>
                            </sec:authorize>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <div>

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
