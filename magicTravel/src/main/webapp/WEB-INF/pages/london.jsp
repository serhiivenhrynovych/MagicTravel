<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 07.11.17
  Time: 19:31
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
</head>
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
                    <li class="goleft active"><a href="london"> London</a></li>
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
    <div class="container-fluid content-wrapper" id="content">
        <div class="col-9 levak">
            <div class="title">
                Welcome to London
            </div>
            <div class="subtitle111">
                One of the world's most visited cities, London has something for everyone:
                from history and culture to fine food and good times.
            </div>

            <div class="slideshow-container">

                <div class="mySlides fade">
                    <div class="numbertext">1 / 8</div>
                    <img src="/img/London1.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 8</div>
                    <img src="/img/London2.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 8</div>
                    <img src="/img/London3.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">4 / 8</div>
                    <img src="/img/London4.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">5 / 8</div>
                    <img src="/img/London5.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">6 / 8</div>
                    <img src="/img/London6.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">7 / 8</div>
                    <img src="/img/London7.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">8 / 8</div>
                    <img src="/img/London8.jpg" style="width:100%">
                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <br>

            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
                <span class="dot" onclick="currentSlide(5)"></span>
                <span class="dot" onclick="currentSlide(6)"></span>
                <span class="dot" onclick="currentSlide(7)"></span>
                <span class="dot" onclick="currentSlide(8)"></span>
            </div>

            <div class="title111">
                Time Travel
            </div>
            <div class="subtitle12">
                Immersed in history, London's rich seams of eye-opening antiquity are
                everywhere. The city's buildings are striking milestones in a unique and
                beguiling biography, and a great many of them – the Tower of London,
                Westminster Abbey, Big Ben – are instantly recognisable landmarks. There’s
                more than enough innovation (the Shard, the Tate Modern extension, the
                planned Garden Bridge) to put a crackle in the air, but it never drowns
                out London’s seasoned, centuries-old narrative. Architectural grandeur
                rises up all around you in the West End, ancient remains dot the City and
                charming pubs punctuate the historic quarters, leafy suburbs and river banks.
                Take your pick.
            </div>
            <div class="title111">
                Art & Culture
            </div>
            <div class="subtitle12">
                A tireless innovator of art and culture, London is a city of ideas and
                the imagination. Londoners have always been fiercely independent thinkers
                (and critics), but until not so long ago people were suspicious of anything
                they considered avant-garde. That’s in the past now, and the city’s creative
                milieu is streaked with left-field attitude, whether it's theatrical
                innovation, contemporary art, pioneering music, writing, poetry, architecture
                or design. Food is another creative arena that has become a tireless obsession
                in certain circles.
            </div>
            <div class="title111">
                Diversity
            </div>
            <div class="subtitle12">
                This city is deeply multicultural, with one in three Londoners foreign-born,
                representing 270 nationalities and 300 tongues. Britain may have voted for
                Brexit (although the majority of Londoners didn't), but for now London remains
                one of the world's most cosmopolitan cities, and diversity infuses daily life,
                food, music and fashion. It even penetrates intrinsically British institutions;
                the British Museum and Victoria & Albert Museum have collections as varied as
                they are magnificent, while the flavours at centuries-old Borough Market run
                the full global gourmet spectrum.
            </div>
            <div class="title111">
                A Tale of Two Cities
            </div>
            <div class="subtitle12">
                London is as much about wide-open vistas and leafy landscape escapes as it is
                high-density, sight-packed urban exploration. Central London is where the major
                museums, galleries and most iconic sights congregate, but visit Hampstead Heath
                or the Queen Elizabeth Olympic Park to flee the crowds and frolic in wide open
                green expanses. You can also venture further out to Kew Gardens, Richmond or
                Hampton Court Palace for beautiful panoramas of riverside London followed by a
                pint in a quiet waterside pub.
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
<script rel="stylesheet" src="/js/slyder1.js"></script>
</body>
</html>
