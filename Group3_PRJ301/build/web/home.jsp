<%-- 
    Document   : home
    Created on : Mar 1, 2023, 4:07:25 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>SHOP</title>

        <!-- bootstrap css -->s
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        
    </head>

    <body class="main-layout">
        <div class="wrapper">
            <div id="content">
                <jsp:include page="header1.jsp"/>        
                <!-- Categories -->
                <div style="background-color: white" class="Categories">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">   
                                <img style="width: 100%; border-radius: 0px;margin-top:16px; margin-bottom: -84px; margin-left: -3px" src="./images/head.png">          
                                <div class="title">
                                      <jsp:include page="clock.jsp"/>
                                    <form style="
                                          color: #555;
                                          display: flex;
                                          padding: 2px;
                                          border: 1px solid currentColor;
                                          border-radius: 16px;
                                          width: 30%;
                                          float: right;
                                          " action="ProductList?index=1" name="desktop-seacrh" method="get">
                                        <input style="
                                               border: none;
                                               background: transparent;
                                               margin: 0;
                                               padding-right: 160px;
                                               font-size: 14px;
                                               color: inherit;
                                               border: 1px solid transparent;
                                               border-radius: 10px;
                                               float: left;
                                               " type="text" name="search"  class="input-text" value="" placeholder="search product...">
                                        <i style="font-size: 25px; padding: 7px; float: right" class='fa fa-search'></i>
                                    </form> 
                                    <h2> Categories</h2>
                                    <ul class="categiri">
                                        <li><a href="./categoryList?index=1">Phone</a></li>
                                        <li><a href="./categoryList?index=2">Laptop</a></li>
                                        <li><a href="./categoryList?index=3">Computer Screen</a></li>
                                        <li><a href="./categoryList?index=4">Keyboard</a></li>
                                        <li><a href="./categoryList?index=5">Mouse</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- news brand -->
                        <div id="brand"  class="brand-bg">
                            <h3>New brands</h3>
                            <div class="row">
                                <div class="places-list">
                                    <c:forEach var="p" items="${plist}">
                                        <div class="place-item"> 
                                            <a href="./ProductDetails?pid=${p.getId()}" class="place-img">
                                                <img src="${p.getImg()}" alt="img">
                                            </a>
                                            <div class="place-body">
                                                <h4 class="place-heading"" href="./ProductDetails?pid=${p.getId()}" class="pr-name">${p.getName()}</a></h4>
                                                <div class="place-price">
                                                    <ins><span>Price: <span class="currencySymbol">$</span>${p.getPrice()}</span></ins>
                                                </div>               
                                                <a href="./ProductDetails?pid=${p.getId()}" class="place-buy">ORDER</a>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <div id="sh" class="sh">
                            <h3>Best Seller</h3>
                            <div class="row">
                                <div class="places-list">
                                    <c:forEach var="p" items="${plist1}">                              
                                        <div class="place-item">
                                            <a href="./ProductDetails?pid=${p.getId()}" class="place-img">
                                                <img src="${p.getImg()}" alt="img">
                                            </a>
                                            <div class="place-body">
                                                <h4 class="place-heading"><a href="./ProductDetails?pid=${p.getId()}"class="pr-name">${p.getName()}</a></h4>
                                                <div class="place-price">
                                                    <ins><span>Price: <span class="currencySymbol">$</span >${p.getPrice()}</span></ins>
                                                </div>
                                                <a href="./ProductDetails?pid=${p.getId()}" class="place-buy">ORDER</a>
                                            </div>
                                        </div>
                                    </c:forEach>                   
                                </div>       
                            </div>
                        </div>
                    </div>
                </div>
            </div>          
            <!--  footer -->
            <jsp:include page="footer.jsp"/>
            <!-- end footer -->
        </div>
        <div class="overlay"></div>

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.nicescroll.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/biolife.framework.js"></script>
        <script src="js/functions.js"></script>
        <script type='text/javascript'>
            document.addEventListener('DOMContentLoaded', () => {

                // Unix timestamp (in seconds) to count down to
                var twoDaysFromNow = (new Date().getTime() / 1000) + (86400 * 2) + 1;

                // Set up FlipDown
                var flipdown = new FlipDown(twoDaysFromNow)

                        // Start the countdown
                        .start()

                        // Do something when the countdown ends
                        .ifEnded(() => {
                            console.log('The countdown has ended!');
                        });

                // Toggle theme
                var interval = setInterval(() => {
                    let body = document.body;
                    body.classList.toggle('light-theme');
                    body.querySelector('#flipdown').classList.toggle('flipdown__theme-dark');
                    body.querySelector('#flipdown').classList.toggle('flipdown__theme-light');
                }, 5000);

                var ver = document.getElementById('ver');
                ver.innerHTML = flipdown.version;
            });
        </script>
    </body>
</html>
