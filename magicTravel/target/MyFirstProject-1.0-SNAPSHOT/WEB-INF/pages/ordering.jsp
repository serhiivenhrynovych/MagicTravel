<%--
  Created by IntelliJ IDEA.
  User: serhii
  Date: 15.11.17
  Time: 11:45
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
            For now we have available only this trips
        </div>

        <table>
            <tr>
                <th class="th1">Name of Trip</th>
                <th class="th1">Town</th>
                <th class="th1">Visiters</th>
                <th class="th1">Date of trip</th>
                <th class="th1">Ordering</th>
            </tr>
            <c:forEach items="${tripsList}" var="trip">
                <tr>
                    <td>${trip.tripname}</td>
                    <td>${trip.townName}</td>
                    <td>${trip.amount}</td>
                    <td>${trip.date}</td>
                    <td>
                        <div class="bottom">
                            <a href="afterOrder" class="btn2 center">Click to Order</a>
                        </div>
                    </td>
                </tr>
                <%--<h3>TripName</h3>--%>
                <%--<div>--%>
                <%--${trip.tripname}--%>
                <%--</div>--%>
                <%--<h3>TownName</h3>--%>
                <%--<div>--%>
                <%--${trip.townName}--%>
                <%--</div>--%>
                <%--<h3>Amount of available visiters</h3>--%>
                <%--<div>--%>
                <%--${trip.amount}--%>
                <%--</div>--%>
                <%--<h3>Date of Trip</h3>--%>
                <%--<div>--%>
                <%--${trip.date}--%>
                <%--</div>--%>
            </c:forEach>

        </table>



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


</div>
</body>
</html>

