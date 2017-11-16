<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 07.11.17
  Time: 19:30
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
                    <li class="goleft"><a href="london"> London</a></li>
                    <li class="goleft active"><a href="paris"> Paris</a></li>
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
                Welcome to Paris
            </div>
            <div class="subtitle111">
                Paris has a timeless familiarity for first-time and frequent visitors,
                with instantly recognisable architectural icons, along with exquisite
                cuisine, chic boutiques and priceless artistic treasures.
            </div>

            <div class="slideshow-container">

                <div class="mySlides fade">
                    <div class="numbertext">1 / 8</div>
                    <img src="/img/Paris9.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 8</div>
                    <img src="/img/Paris2.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 8</div>
                    <img src="/img/Paris3.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">4 / 8</div>
                    <img src="/img/Paris4.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">5 / 8</div>
                    <img src="/img/Paris5.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">6 / 8</div>
                    <img src="/img/Paris6.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">7 / 8</div>
                    <img src="/img/Paris7.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">8 / 8</div>
                    <img src="/img/Paris8.jpg" style="width:100%">
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
                Iconic Architecture
            </div>
            <div class="subtitle12">
                The wrought-iron spire of the Eiffel Tower piercing the clouds, the broad
                Arc de Triomphe guarding Paris’ most glamorous avenue, the Champs-Élysées,
                the gargoyled Notre Dame cathedral, lamplit bridges spanning the Seine and
                art nouveau cafes spilling on to wicker-chair-lined terraces are indelibly
                etched in the minds of anyone who’s visited the city – and the imaginations
                of anyone who hasn’t (yet). But despite initial appearances, Paris’
                cityscape isn’t static: there are some stunning modern and contemporary
                icons too, from the inside-out, industrial-style Centre Pompidou to the mur
                végétal (vertical garden) gracing the striking Musée du Quai Branly.
            </div>
            <div class="title111">
                Glorious Food
            </div>
            <div class="subtitle12">
                Paris’ dining is iconic: France’s reputation for its cuisine (the French
                word for ‘kitchen’) precedes it, and whether you seek a cosy neighbourhood
                bistro or a triple-Michelin-starred temple to gastronomy, you'll find every
                establishment prides itself on exquisite preparation and presentation of
                quality produce, invariably served with wine. Enticing patisseries,
                boulangeries (bakeries), fromageries (cheese shops) and crowded, colourful
                street markets are perfect for packing a picnic to take to the city’s parks
                and gardens. A host of culinary courses – from home kitchens through to the
                world’s most prestigious cookery schools – offers instruction for all
                schedules, abilities and budgets.
            </div>
            <div class="title111">
                Stylish Shopping
            </div>
            <div class="subtitle12">
                Parisians are synonymous with style, and fashion shopping is the city’s
                forte. Paris remains at the forefront of international trends, and
                browsing emerging and established designer boutiques and flagship haute
                couture houses is a quintessential part of any visit. You’ll also find
                uberhip concept stores, quirky homeware shops, and resplendent art nouveau
                department stores, along with a trove of vintage shops and flea markets,
                atmospheric bookshops (including the dark-green bouquiniste stalls –
                secondhand bookshop – lining the riverbanks), adorable children’s wear
                and toy shops, art and antique dealers, venerable shops selling
                state-of-the-art professional cookware, and, of course, gourmet food and
                wine shops galore.
            </div>
            <div class="title111">
                Artistic Treasures
            </div>
            <div class="subtitle12">
                With an illustrious artistic pedigree – Renoir, Rodin, Picasso, Monet,
                Manet, Dalí and Van Gogh are but a few of the masters who lived and
                worked here over the years – Paris is one of the great art repositories
                of the world, harbouring treasures from antiquity onward. In addition to
                big hitters like the incomparable Louvre, the Musée d’Orsay’s exceptional
                impressionist collection, and the Centre Pompidou’s cache of modern and
                contemporary art, there are scores of smaller museums housing collections
                in every imaginable genre, and a diverse range of venues mounting major
                exhibitions through to off-beat installations.
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